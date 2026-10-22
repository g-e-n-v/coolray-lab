package com.ecarx.eas.sdk.mediacenter;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.ecarx.eas.framework.sdk.IEASFrameworkService;
import com.ecarx.eas.framework.sdk.IEASFrameworkSuppportService;
import com.ecarx.eas.sdk.ECarXApiClient;
import com.ecarx.sdk.openapi.msg.EASFrameworkMessage;
import com.ecarx.sdk.openapi.msg.EASFrameworkRetMessage;
import com.ecarx.sdk.openapi.msg.SupportServiceRetMessage;
import ecarx.xsf.mediacenter.IMediaCenterClientToken;
import ecarx.xsf.mediacenter.IMediaCenterSvc;
import ecarx.xsf.mediacenter.IMusicPlaybackInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class MediaCenterAPI {
    private static final int GET_BINDER_MAX_RETRIES = 10;
    private static final long GET_BINDER_RETRY_DELAY_MS = 200;
    private static final String MEDIACENTER_MODULE = "MediaCenterAPI";
    private static final String MEDIACENTER_SERVICE = "mediacenter";
    private static final String TAG = "EasMediaCenterAPIImpl";
    private static Context sAppContext;
    private static MediaCenterAPI sInstance;
    private IEASFrameworkService easService;
    private ECarXApiClient.Callback initCallback;
    private Handler initHandler;
    private IBinder mediaCenterBinder;
    private volatile IMediaCenterSvc mediaCenterSvc;
    private MusicClient musicClient;
    private MusicClientWrapper musicClientWrapper;
    private IEASFrameworkSuppportService supportService;
    private boolean isBound = false;
    private boolean isInitialized = false;
    private final byte[] mAttachParam = new byte[0];
    private final IBinder.DeathRecipient deathRecipient = new AnonymousClass1(this);
    private final ServiceConnection easConnection = new ServiceConnection(this) { // from class: com.ecarx.eas.sdk.mediacenter.MediaCenterAPI.2
        final MediaCenterAPI this$0;

        {
            this.this$0 = this;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d(MediaCenterAPI.TAG, "EAS Framework connected");
            this.this$0.easService = IEASFrameworkService.Stub.asInterface(iBinder);
            this.this$0.completeInit();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.w(MediaCenterAPI.TAG, "EAS Framework disconnected");
            this.this$0.easService = null;
            this.this$0.isBound = false;
        }
    };
    private final ServiceConnection mediaCenterConnection = new ServiceConnection(this) { // from class: com.ecarx.eas.sdk.mediacenter.MediaCenterAPI.3
        final MediaCenterAPI this$0;

        {
            this.this$0 = this;
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0057 A[Catch: Exception -> 0x0054, TRY_LEAVE, TryCatch #0 {Exception -> 0x0054, blocks: (B:3:0x0008, B:5:0x0015, B:7:0x0045, B:9:0x0049, B:10:0x004e, B:14:0x0057), top: B:18:0x0008 }] */
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            IBinder iBinder2;
            Log.d(MediaCenterAPI.TAG, "MediaCenter service connected directly (fallback)");
            try {
                if (IEASFrameworkSuppportService.DESCRIPTOR.equals(iBinder.getInterfaceDescriptor())) {
                    this.this$0.supportService = IEASFrameworkSuppportService.Stub.asInterface(iBinder);
                    SupportServiceRetMessage supportServiceRetMessageCall = this.this$0.supportService.call(new EASFrameworkMessage(MediaCenterAPI.MEDIACENTER_SERVICE, MediaCenterAPI.MEDIACENTER_MODULE, "getMainBinder", "NoParam".getBytes(), this.this$0.mAttachParam), Process.myUid(), 0);
                    if (supportServiceRetMessageCall == null || (iBinder2 = supportServiceRetMessageCall.mBinder) == null) {
                        this.this$0.setMediaCenterBinder(iBinder);
                    } else {
                        this.this$0.setMediaCenterBinder(iBinder2);
                    }
                } else {
                    this.this$0.setMediaCenterBinder(iBinder);
                }
                this.this$0.notifyReady(true);
            } catch (Exception e3) {
                Log.e(MediaCenterAPI.TAG, "Failed in direct connection", e3);
                this.this$0.notifyReady(false);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.w(MediaCenterAPI.TAG, "MediaCenter service disconnected");
            this.this$0.mediaCenterSvc = null;
        }
    };
    private ExCallbackWrapper exCallbackWrapper = new ExCallbackWrapper();

    /* JADX INFO: renamed from: com.ecarx.eas.sdk.mediacenter.MediaCenterAPI$1, reason: invalid class name */
    public class AnonymousClass1 implements IBinder.DeathRecipient {
        final MediaCenterAPI this$0;

        public AnonymousClass1(MediaCenterAPI mediaCenterAPI) {
            this.this$0 = mediaCenterAPI;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$binderDied$0() {
            this.this$0.init(MediaCenterAPI.sAppContext, this.this$0.initCallback);
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Log.w(MediaCenterAPI.TAG, "MediaCenter service died — cleaning up");
            synchronized (this.this$0) {
                if (this.this$0.mediaCenterBinder != null) {
                    try {
                        this.this$0.mediaCenterBinder.unlinkToDeath(this, 0);
                    } catch (Exception unused) {
                    }
                    this.this$0.mediaCenterBinder = null;
                }
                this.this$0.mediaCenterSvc = null;
                this.this$0.isInitialized = false;
            }
            if (MediaCenterAPI.sAppContext == null || this.this$0.initCallback == null) {
                return;
            }
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable(this) { // from class: com.ecarx.eas.sdk.mediacenter.b

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public final MediaCenterAPI.AnonymousClass1 f759a;

                {
                    this.f759a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f759a.lambda$binderDied$0();
                }
            }, 3000L);
        }
    }

    private MediaCenterAPI() {
    }

    private void attemptGetMainBinder(final int i3) {
        try {
            IBinder iBinderSendStrMsgForBinder = sendStrMsgForBinder("getMainBinder", "");
            if (iBinderSendStrMsgForBinder != null) {
                setMediaCenterBinder(iBinderSendStrMsgForBinder);
                Log.i(TAG, "getMainBinder via EAS: OK (attempt " + i3 + ")");
                Log.d(TAG, "InitialImpl OK");
                notifyReady(true);
                return;
            }
        } catch (Exception e3) {
            StringBuilder sb = new StringBuilder("getMainBinder attempt ");
            sb.append(i3);
            sb.append(" failed: ");
            k1.a.a(e3, sb);
        }
        if (i3 >= GET_BINDER_MAX_RETRIES) {
            Log.w(TAG, "getMainBinder failed after 10 attempts, trying direct binding");
            bindDirectlyToMediaCenter();
            return;
        }
        Log.d(TAG, "getMainBinder returned null, retry in 200ms (" + (i3 + 1) + "/10)");
        getInitHandler().postDelayed(new Runnable(this, i3) { // from class: com.ecarx.eas.sdk.mediacenter.a

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final MediaCenterAPI f758a;
            public final int b;

            {
                this.f758a = this;
                this.b = i3;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f758a.lambda$attemptGetMainBinder$0(this.b);
            }
        }, GET_BINDER_RETRY_DELAY_MS);
    }

    private void bindDirectlyToMediaCenter() {
        Intent intent = new Intent("com.ecarx.eas.core.intent.action.SUPPORT_SERVICE");
        intent.setComponent(new ComponentName("ecarx.xsf.mediacenter", "ecarx.xsf.mediacenter.MediaCenterService"));
        try {
            if (sAppContext.bindService(intent, this.mediaCenterConnection, 1)) {
                return;
            }
            Log.e(TAG, "Direct MediaCenter binding failed");
            notifyReady(false);
        } catch (Exception e3) {
            Log.e(TAG, "Error in direct binding", e3);
            notifyReady(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void completeInit() {
        IEASFrameworkService iEASFrameworkService = this.easService;
        if (iEASFrameworkService == null) {
            notifyReady(false);
            return;
        }
        try {
            iEASFrameworkService.init(new String[]{MEDIACENTER_SERVICE});
            Log.d(TAG, "EAS Framework init() done");
            attemptGetMainBinder(0);
        } catch (Exception e3) {
            Log.e(TAG, "completeInit failed", e3);
            bindDirectlyToMediaCenter();
        }
    }

    public static IMusicPlaybackInfo.Stub createPlaybackInfoBinder(MusicClient musicClient) {
        return new IMusicPlaybackInfo.Stub(musicClient) { // from class: com.ecarx.eas.sdk.mediacenter.MediaCenterAPI.4
            final MusicClient val$client;

            {
                this.val$client = musicClient;
            }

            private MusicPlaybackInfo info() {
                MusicClient musicClient2 = this.val$client;
                if (musicClient2 != null) {
                    return musicClient2.getMusicPlaybackInfo();
                }
                return null;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public String getAlbum() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                return (musicPlaybackInfoInfo == null || musicPlaybackInfoInfo.getAlbum() == null) ? "" : musicPlaybackInfoInfo.getAlbum();
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public String getAppIcon() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getAppIcon();
                }
                return null;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public String getAppName() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getAppName();
                }
                return null;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public String getArtist() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                return (musicPlaybackInfoInfo == null || musicPlaybackInfoInfo.getArtist() == null) ? "" : musicPlaybackInfoInfo.getArtist();
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public Uri getArtwork() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getArtwork();
                }
                return null;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public String getCurrentLyricSentence() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                return (musicPlaybackInfoInfo == null || musicPlaybackInfoInfo.getCurrentLyricSentence() == null) ? "" : musicPlaybackInfoInfo.getCurrentLyricSentence();
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public int getDisplayId() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getDisplayId();
                }
                return 0;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public long getDuration() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getDuration();
                }
                return 0L;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public PendingIntent getLaunchIntent() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getLaunchIntent();
                }
                return null;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public int getLoopMode() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getLoopMode();
                }
                return 0;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public Uri getLyric() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getLyric();
                }
                return null;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public String getLyricContent() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                return (musicPlaybackInfoInfo == null || musicPlaybackInfoInfo.getLyricContent() == null) ? "" : musicPlaybackInfoInfo.getLyricContent();
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public Uri getMediaPath() {
                return null;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public String getMediaType() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getMediaType();
                }
                return null;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public Uri getNextArtwork() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getNextArtwork();
                }
                return null;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public String getPackageName() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getPackageName();
                }
                return null;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public int getPlaybackStatus() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getPlaybackStatus();
                }
                return 0;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public PendingIntent getPlayerIntent() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getPlayerIntent();
                }
                return null;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public int getPlayingItemPositionInQueue() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getPlayingItemPositionInQueue();
                }
                return 0;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public String getPlayingMediaListId() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getPlayingMediaListId();
                }
                return null;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public int getPlayingMediaListType() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getPlayingMediaListType();
                }
                return -1;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public Uri getPreviousArtwork() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getPreviousArtwork();
                }
                return null;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public String getRadioFrequency() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                return (musicPlaybackInfoInfo == null || musicPlaybackInfoInfo.getRadioFrequency() == null) ? "" : musicPlaybackInfoInfo.getRadioFrequency();
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public int getRadioMode() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getRadioMode();
                }
                return 0;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public String getRadioStationName() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getRadioStationName();
                }
                return null;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public int getSourceType() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getSourceType();
                }
                return 0;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public String getTitle() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                return (musicPlaybackInfoInfo == null || musicPlaybackInfoInfo.getTitle() == null) ? "" : musicPlaybackInfoInfo.getTitle();
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public String getUuid() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getUuid();
                }
                return null;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public int getVip() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                if (musicPlaybackInfoInfo != null) {
                    return musicPlaybackInfoInfo.getVip();
                }
                return -1;
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public boolean isCollected() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                return musicPlaybackInfoInfo != null && musicPlaybackInfoInfo.isCollected();
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public boolean isDownloaded() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                return musicPlaybackInfoInfo != null && musicPlaybackInfoInfo.isDownloaded();
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public boolean isSupportCollect() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                return musicPlaybackInfoInfo != null && musicPlaybackInfoInfo.isSupportCollect();
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public boolean isSupportDownload() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                return musicPlaybackInfoInfo != null && musicPlaybackInfoInfo.isSupportDownload();
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public boolean isSupportLoopModeSwitch() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                return musicPlaybackInfoInfo == null || musicPlaybackInfoInfo.isSupportLoopModeSwitch();
            }

            @Override // ecarx.xsf.mediacenter.IMusicPlaybackInfo
            public boolean isSupportVrCtrlPlayStatus() {
                MusicPlaybackInfo musicPlaybackInfoInfo = info();
                return musicPlaybackInfoInfo == null || musicPlaybackInfoInfo.isSupportVrCtrlPlayStatus();
            }
        };
    }

    public static MediaCenterAPI get(Context context) {
        MediaCenterAPI mediaCenterAPI;
        synchronized (MediaCenterAPI.class) {
            try {
                if (sInstance == null) {
                    sInstance = new MediaCenterAPI();
                }
                sAppContext = context.getApplicationContext();
                mediaCenterAPI = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return mediaCenterAPI;
    }

    private Handler getInitHandler() {
        if (this.initHandler == null) {
            this.initHandler = new Handler(Looper.getMainLooper());
        }
        return this.initHandler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$attemptGetMainBinder$0(int i3) {
        attemptGetMainBinder(i3 + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyReady(boolean z2) {
        if (this.initCallback != null) {
            Log.i(TAG, "onAPIReady(" + z2 + ")");
            this.initCallback.onAPIReady(z2);
        }
    }

    private EASFrameworkRetMessage sendMsg(EASFrameworkMessage eASFrameworkMessage) {
        IEASFrameworkService iEASFrameworkService = this.easService;
        if (iEASFrameworkService != null) {
            try {
                EASFrameworkRetMessage eASFrameworkRetMessageCall = iEASFrameworkService.call(eASFrameworkMessage);
                if (eASFrameworkRetMessageCall == null || eASFrameworkRetMessageCall.mCode == 200) {
                    return eASFrameworkRetMessageCall;
                }
                Log.w(TAG, "sendMsg fail:" + eASFrameworkRetMessageCall.mCode + "," + eASFrameworkRetMessageCall.mMsg);
                return eASFrameworkRetMessageCall;
            } catch (RemoteException e3) {
                Log.w(TAG, "sendMsg RemoteException: " + e3.getMessage());
            }
        }
        IEASFrameworkSuppportService iEASFrameworkSuppportService = this.supportService;
        if (iEASFrameworkSuppportService == null) {
            return null;
        }
        try {
            SupportServiceRetMessage supportServiceRetMessageCall = iEASFrameworkSuppportService.call(eASFrameworkMessage, Process.myUid(), 0);
            if (supportServiceRetMessageCall == null) {
                return null;
            }
            EASFrameworkRetMessage eASFrameworkRetMessage = new EASFrameworkRetMessage();
            eASFrameworkRetMessage.mCode = supportServiceRetMessageCall.mCode;
            eASFrameworkRetMessage.mRetMsg = supportServiceRetMessageCall;
            return eASFrameworkRetMessage;
        } catch (Exception e4) {
            k1.a.a(e4, new StringBuilder("sendMsg via support failed: "));
            return null;
        }
    }

    private EASFrameworkRetMessage sendMsgAndBinder(EASFrameworkMessage eASFrameworkMessage, IBinder iBinder) {
        IEASFrameworkService iEASFrameworkService = this.easService;
        if (iEASFrameworkService == null) {
            return null;
        }
        try {
            EASFrameworkRetMessage eASFrameworkRetMessageAsyncBinderCall = iEASFrameworkService.asyncBinderCall(eASFrameworkMessage, iBinder);
            if (eASFrameworkRetMessageAsyncBinderCall == null || eASFrameworkRetMessageAsyncBinderCall.mCode == 200) {
                return eASFrameworkRetMessageAsyncBinderCall;
            }
            Log.w(TAG, "sendMsgAndBinder fail:" + eASFrameworkRetMessageAsyncBinderCall.mCode + "," + eASFrameworkRetMessageAsyncBinderCall.mMsg);
            return eASFrameworkRetMessageAsyncBinderCall;
        } catch (RemoteException e3) {
            Log.w(TAG, "sendMsgAndBinder RemoteException: " + e3.getMessage());
            return null;
        }
    }

    private String sendStrMsgAndBinderForStr(String str, String str2, IBinder iBinder) {
        String str3;
        SupportServiceRetMessage supportServiceRetMessage;
        byte[] bArr;
        if (this.easService != null) {
            try {
                if (TextUtils.isEmpty(str2)) {
                    str2 = "NoParam";
                }
                str3 = str;
                try {
                    EASFrameworkRetMessage eASFrameworkRetMessageSendMsgAndBinder = sendMsgAndBinder(new EASFrameworkMessage(MEDIACENTER_SERVICE, MEDIACENTER_MODULE, str3, str2.getBytes(), this.mAttachParam), iBinder);
                    if (eASFrameworkRetMessageSendMsgAndBinder != null && (supportServiceRetMessage = eASFrameworkRetMessageSendMsgAndBinder.mRetMsg) != null && (bArr = supportServiceRetMessage.mData) != null && bArr.length > 0) {
                        return new String(bArr);
                    }
                } catch (Exception e3) {
                    e = e3;
                    Exception exc = e;
                    StringBuilder sb = new StringBuilder("sendStrMsgAndBinderForStr(");
                    sb.append(str3);
                    sb.append(") failed: ");
                    k1.a.a(exc, sb);
                    return null;
                }
            } catch (Exception e4) {
                e = e4;
                str3 = str;
            }
        }
        return null;
    }

    private IBinder sendStrMsgForBinder(String str, String str2) {
        String str3;
        SupportServiceRetMessage supportServiceRetMessage;
        if (this.easService != null) {
            try {
                if (TextUtils.isEmpty(str2)) {
                    str2 = "NoParam";
                }
                str3 = str;
                try {
                    EASFrameworkRetMessage eASFrameworkRetMessageSendMsg = sendMsg(new EASFrameworkMessage(MEDIACENTER_SERVICE, MEDIACENTER_MODULE, str3, str2.getBytes(), this.mAttachParam));
                    if (eASFrameworkRetMessageSendMsg != null && (supportServiceRetMessage = eASFrameworkRetMessageSendMsg.mRetMsg) != null) {
                        return supportServiceRetMessage.mBinder;
                    }
                } catch (Exception e3) {
                    e = e3;
                    Exception exc = e;
                    StringBuilder sb = new StringBuilder("sendStrMsgForBinder(");
                    sb.append(str3);
                    sb.append(") failed: ");
                    k1.a.a(exc, sb);
                    return null;
                }
            } catch (Exception e4) {
                e = e4;
                str3 = str;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMediaCenterBinder(IBinder iBinder) {
        synchronized (this) {
            this.mediaCenterBinder = iBinder;
            this.mediaCenterSvc = IMediaCenterSvc.Stub.asInterface(iBinder);
            try {
                iBinder.linkToDeath(this.deathRecipient, 0);
            } catch (RemoteException e3) {
                Log.e(TAG, "Failed to link death recipient", e3);
            }
            this.isInitialized = true;
            Log.i(TAG, "IMediaCenterSvc obtained successfully");
        }
    }

    public void declareMediaCenterCapability(Object obj, int[] iArr) {
        IMediaCenterSvc iMediaCenterSvc = this.mediaCenterSvc;
        if (iMediaCenterSvc == null || obj == null) {
            return;
        }
        try {
            iMediaCenterSvc.declareMediaCenterCapability((IMediaCenterClientToken) obj, iArr);
        } catch (Exception e3) {
            k1.a.a(e3, new StringBuilder("declareMediaCenterCapability failed: "));
        }
    }

    public boolean declareSupportCollectTypes(Object obj, int[] iArr) {
        IMediaCenterSvc iMediaCenterSvc = this.mediaCenterSvc;
        if (iMediaCenterSvc == null || obj == null) {
            return false;
        }
        try {
            return iMediaCenterSvc.declareSupportCollectTypes((IMediaCenterClientToken) obj, iArr);
        } catch (Exception e3) {
            k1.a.a(e3, new StringBuilder("declareSupportCollectTypes failed: "));
            return false;
        }
    }

    public void destroy() {
        Context context;
        Handler handler = this.initHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.initHandler = null;
        }
        try {
            if (this.isBound && (context = sAppContext) != null) {
                context.unbindService(this.easConnection);
            }
        } catch (Exception unused) {
        }
        try {
            Context context2 = sAppContext;
            if (context2 != null) {
                context2.unbindService(this.mediaCenterConnection);
            }
        } catch (Exception unused2) {
        }
        this.mediaCenterSvc = null;
        this.easService = null;
        this.supportService = null;
        this.isInitialized = false;
        this.isBound = false;
    }

    public void init(Context context, ECarXApiClient.Callback callback) {
        this.initCallback = callback;
        sAppContext = context.getApplicationContext();
        Log.i(TAG, "init() called — binding to EAS Framework");
        Intent intent = new Intent("com.ecarx.easframework.intent.action.EASFRAMEWORK");
        intent.setPackage("com.ecarx.sdk.openapi");
        try {
            if (sAppContext.bindService(intent, this.easConnection, 1)) {
                this.isBound = true;
                Log.d(TAG, "Binding to EAS Framework...");
            } else {
                Log.w(TAG, "EAS Framework bind failed, trying direct binding");
                bindDirectlyToMediaCenter();
            }
        } catch (Exception e3) {
            Log.e(TAG, "Error binding to EAS Framework", e3);
            bindDirectlyToMediaCenter();
        }
    }

    public boolean isReady() {
        return this.isInitialized && this.mediaCenterSvc != null;
    }

    public boolean isServiceAlive() {
        IMediaCenterSvc iMediaCenterSvc = this.mediaCenterSvc;
        if (iMediaCenterSvc == null) {
            return false;
        }
        try {
            IBinder iBinderAsBinder = iMediaCenterSvc.asBinder();
            return iBinderAsBinder != null && iBinderAsBinder.isBinderAlive() && iBinderAsBinder.pingBinder();
        } catch (Exception unused) {
        }
    }

    public String queryCurrentFocusClient(Object obj) {
        IMediaCenterSvc iMediaCenterSvc = this.mediaCenterSvc;
        if (iMediaCenterSvc != null && obj != null) {
            try {
                Log.d(TAG, "queryCurrentFocusClient");
                String strQueryCurrentFocusClient = iMediaCenterSvc.queryCurrentFocusClient((IMediaCenterClientToken) obj);
                if (strQueryCurrentFocusClient != null) {
                    return strQueryCurrentFocusClient;
                }
            } catch (Exception e3) {
                k1.a.a(e3, new StringBuilder("queryCurrentFocusClient failed: "));
            }
        }
        return "";
    }

    public void reconnect() {
        ECarXApiClient.Callback callback;
        Log.w(TAG, "reconnect() — forcing re-initialization");
        synchronized (this) {
            IBinder iBinder = this.mediaCenterBinder;
            if (iBinder != null) {
                try {
                    iBinder.unlinkToDeath(this.deathRecipient, 0);
                } catch (Exception unused) {
                }
                this.mediaCenterBinder = null;
            }
            this.mediaCenterSvc = null;
            this.isInitialized = false;
        }
        Context context = sAppContext;
        if (context != null) {
            if (this.isBound) {
                try {
                    context.unbindService(this.easConnection);
                } catch (Exception unused2) {
                }
                this.isBound = false;
                this.easService = null;
            }
            try {
                sAppContext.unbindService(this.mediaCenterConnection);
            } catch (Exception unused3) {
            }
        }
        Context context2 = sAppContext;
        if (context2 == null || (callback = this.initCallback) == null) {
            return;
        }
        init(context2, callback);
    }

    public Object registerMusic(String str, MusicClient musicClient) {
        IMediaCenterSvc iMediaCenterSvc = this.mediaCenterSvc;
        if (iMediaCenterSvc == null) {
            Log.e(TAG, "registerMusic: mediaCenterSvc is null");
            return null;
        }
        try {
            Log.d(TAG, "svc: " + iMediaCenterSvc);
            this.musicClient = musicClient;
            MusicClientWrapper musicClientWrapper = new MusicClientWrapper(musicClient);
            this.musicClientWrapper = musicClientWrapper;
            IMediaCenterClientToken iMediaCenterClientTokenRegisterInMusic = iMediaCenterSvc.registerInMusic(str, musicClientWrapper);
            Log.d(TAG, "token: " + iMediaCenterClientTokenRegisterInMusic);
            if (iMediaCenterClientTokenRegisterInMusic == null) {
                try {
                    iMediaCenterClientTokenRegisterInMusic = iMediaCenterSvc.registerMusic(this.musicClientWrapper);
                    Log.d(TAG, "registerMusic fallback token: " + iMediaCenterClientTokenRegisterInMusic);
                } catch (Exception e3) {
                    Log.e(TAG, "registerMusic fallback failed: " + e3.getMessage());
                }
            }
            if (iMediaCenterClientTokenRegisterInMusic == null) {
                Log.e(TAG, "Registration failed — no token");
                return null;
            }
            Log.d(TAG, "registerEx: " + sendStrMsgAndBinderForStr("registerEx", str, this.exCallbackWrapper.asBinder()));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("packageName", str);
            jSONObject.put("displayId", 0);
            Log.d(TAG, "registerClientWithRequest: " + sendStrMsgAndBinderForStr("registerClientWithRequest", jSONObject.toString(), iMediaCenterClientTokenRegisterInMusic.asBinder()));
            this.exCallbackWrapper.setListener("MusicClient", this.musicClientWrapper);
            return iMediaCenterClientTokenRegisterInMusic;
        } catch (Exception e4) {
            Log.e(TAG, "registerMusic failed: " + e4.getMessage());
            Log.d(TAG, "Exception: " + Log.getStackTraceString(e4));
            return null;
        }
    }

    public boolean requestPlay(Object obj) {
        IMediaCenterSvc iMediaCenterSvc = this.mediaCenterSvc;
        if (iMediaCenterSvc == null || obj == null) {
            return false;
        }
        try {
            return iMediaCenterSvc.requestPlay((IMediaCenterClientToken) obj);
        } catch (Exception e3) {
            k1.a.a(e3, new StringBuilder("requestPlay failed: "));
            return false;
        }
    }

    public boolean unregister(Object obj) {
        IMediaCenterSvc iMediaCenterSvc = this.mediaCenterSvc;
        if (iMediaCenterSvc == null || obj == null) {
            return false;
        }
        try {
            return iMediaCenterSvc.unregister((IMediaCenterClientToken) obj);
        } catch (Exception e3) {
            k1.a.a(e3, new StringBuilder("unregister failed: "));
            return false;
        }
    }

    public void updateCurrentLyric(Object obj, String str) {
        IMediaCenterSvc iMediaCenterSvc = this.mediaCenterSvc;
        if (iMediaCenterSvc == null || obj == null) {
            return;
        }
        try {
            iMediaCenterSvc.updateCurrentLyric((IMediaCenterClientToken) obj, str);
        } catch (Exception e3) {
            Log.d(TAG, "updateCurrentLyric failed: " + e3.getMessage());
        }
    }

    public void updateCurrentProgress(Object obj, long j3) {
        IMediaCenterSvc iMediaCenterSvc = this.mediaCenterSvc;
        if (iMediaCenterSvc == null || obj == null) {
            return;
        }
        try {
            iMediaCenterSvc.updateCurrentProgress((IMediaCenterClientToken) obj, j3);
        } catch (Exception e3) {
            Log.d(TAG, "updateCurrentProgress failed: " + e3.getMessage());
        }
    }

    public void updateCurrentSourceType(Object obj, int i3) {
        IMediaCenterSvc iMediaCenterSvc = this.mediaCenterSvc;
        if (iMediaCenterSvc == null || obj == null) {
            return;
        }
        try {
            iMediaCenterSvc.updateCurrentSourceType((IMediaCenterClientToken) obj, i3);
        } catch (Exception e3) {
            k1.a.a(e3, new StringBuilder("updateCurrentSourceType failed: "));
        }
    }

    public void updateDisplayId(Object obj, int i3) {
        if (obj == null || this.easService == null) {
            return;
        }
        sendStrMsgAndBinderForStr("updateDisplayId", String.valueOf(i3), ((IMediaCenterClientToken) obj).asBinder());
    }

    public void updateErrorMsg(Object obj, int i3, String str) {
        IMediaCenterSvc iMediaCenterSvc = this.mediaCenterSvc;
        if (iMediaCenterSvc == null || obj == null) {
            return;
        }
        try {
            iMediaCenterSvc.updateErrorMsg((IMediaCenterClientToken) obj, i3, str);
        } catch (Exception e3) {
            Log.d(TAG, "updateErrorMsg failed: " + e3.getMessage());
        }
    }

    public boolean updateMediaSourceTypeList(Object obj, int[] iArr) {
        IMediaCenterSvc iMediaCenterSvc = this.mediaCenterSvc;
        if (iMediaCenterSvc == null || obj == null) {
            return false;
        }
        try {
            iMediaCenterSvc.updateMediaSourceTypeList((IMediaCenterClientToken) obj, iArr);
            return true;
        } catch (Exception e3) {
            k1.a.a(e3, new StringBuilder("updateMediaSourceTypeList failed: "));
            return false;
        }
    }

    public boolean updateMusicPlaybackState(Object obj, MusicPlaybackInfo musicPlaybackInfo) {
        if (obj != null && musicPlaybackInfo != null) {
            IMediaCenterSvc iMediaCenterSvc = this.mediaCenterSvc;
            if (iMediaCenterSvc == null) {
                Log.e(TAG, "updateMusicPlaybackState: unbind media center service");
                return false;
            }
            try {
                boolean zUpdateMusicPlaybackState = iMediaCenterSvc.updateMusicPlaybackState((IMediaCenterClientToken) obj, createPlaybackInfoBinder(this.musicClient));
                Log.d(TAG, "updateMusicPlaybackState: " + zUpdateMusicPlaybackState + " [" + musicPlaybackInfo.getTitle() + " / " + musicPlaybackInfo.getArtist() + "] status=" + musicPlaybackInfo.getPlaybackStatus());
                return zUpdateMusicPlaybackState;
            } catch (RemoteException e3) {
                Log.e(TAG, "updateMusicPlaybackState failed: " + e3.getMessage());
            }
        }
        return false;
    }

    public void updatePlayState(String str, int i3, int i4) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("packageName", str);
            jSONObject.put("displayId", i4);
            jSONObject.put("playState", i3);
            sendMsg(new EASFrameworkMessage(MEDIACENTER_SERVICE, MEDIACENTER_MODULE, "updatePlayState", jSONObject.toString().getBytes(), this.mAttachParam));
        } catch (Exception e3) {
            Log.d(TAG, "updatePlayState failed: " + e3.getMessage());
        }
    }
}
