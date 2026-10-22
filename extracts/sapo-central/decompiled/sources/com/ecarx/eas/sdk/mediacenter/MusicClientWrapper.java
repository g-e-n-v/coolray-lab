package com.ecarx.eas.sdk.mediacenter;

import android.os.IBinder;
import android.util.Log;
import com.ecarx.eas.xsf.mediacenter.IExContent;
import ecarx.xsf.mediacenter.IMedia;
import ecarx.xsf.mediacenter.IMediaLists;
import ecarx.xsf.mediacenter.IMusicClient;
import ecarx.xsf.mediacenter.IMusicPlaybackInfo;
import ecarx.xsf.mediacenter.IRecommend;
import ecarx.xsf.mediacenter.ISearchMusicCallback;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class MusicClientWrapper extends IMusicClient.Stub implements ExCallbackWrapper.Action {
    private static final String TAG = "MusicClientWrapper";
    private final MusicClient mOriginClazz;

    public MusicClientWrapper(MusicClient musicClient) {
        this.mOriginClazz = musicClient;
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public int ctrlCollect(int i3, boolean z2) {
        MusicClient musicClient = this.mOriginClazz;
        if (musicClient != null) {
            return musicClient.ctrlCollect(i3, z2);
        }
        return -1;
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public void ctrlCollectByUUID(int i3, String str, boolean z2) {
        MusicClient musicClient = this.mOriginClazz;
        if (musicClient != null) {
            musicClient.ctrlCollectByUUID(i3, str, z2);
        }
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean ctrlPauseMediaList(int i3) {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null && musicClient.ctrlPauseMediaList(i3);
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean ctrlPlayMediaList(int i3) {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null && musicClient.ctrlPlayMediaList(i3);
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public List getContentList() {
        MusicClient musicClient = this.mOriginClazz;
        if (musicClient != null) {
            return musicClient.getContentList();
        }
        return null;
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public long getCurrentProgress() {
        MusicClient musicClient = this.mOriginClazz;
        if (musicClient != null) {
            return musicClient.getCurrentProgress();
        }
        return 0L;
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public int getCurrentSourceType() {
        MusicClient musicClient = this.mOriginClazz;
        if (musicClient != null) {
            return musicClient.getCurrentSourceType();
        }
        return 0;
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public int[] getMediaSourceTypeList() {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null ? musicClient.getMediaSourceTypeList() : new int[0];
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public IMediaLists getMultiMediaList(int[] iArr) {
        return null;
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public IMusicPlaybackInfo getMusicPlaybackInfo() {
        MusicClient musicClient = this.mOriginClazz;
        if (musicClient != null) {
            return MediaCenterAPI.createPlaybackInfoBinder(musicClient);
        }
        return null;
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public List getPlaylist(int i3) {
        MusicClient musicClient = this.mOriginClazz;
        if (musicClient != null) {
            return musicClient.getPlaylist(i3);
        }
        return null;
    }

    @Override // com.ecarx.eas.sdk.mediacenter.ExCallbackWrapper.Action
    public String onAction(int i3, String str, String str2, IBinder iBinder) {
        Log.d(TAG, "onAction:" + i3 + "," + str + "," + str2 + "," + iBinder);
        if (i3 != 5 || this.mOriginClazz == null) {
            return null;
        }
        try {
            try {
                long jOptLong = new JSONObject(str2).optLong("progress", -1L);
                if (jOptLong < 0) {
                    return null;
                }
                this.mOriginClazz.onSeek(jOptLong);
                return null;
            } catch (NumberFormatException unused) {
                Log.w(TAG, "onSeek parse error: " + str2);
                return null;
            }
        } catch (Exception unused2) {
            this.mOriginClazz.onSeek(Long.parseLong(str2));
            return null;
        }
        Log.w(TAG, "onSeek parse error: " + str2);
        return null;
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onCancelRecommend(IRecommend iRecommend) {
        return false;
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onCollect(int i3, boolean z2) {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null && musicClient.onCollect(i3, z2);
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onDownload(int i3, boolean z2) {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null && musicClient.onDownload(i3, z2);
    }

    @Override // com.ecarx.eas.sdk.mediacenter.ExCallbackWrapper.Action
    public IExContent onExAction(int i3, String str, String str2, IExContent iExContent, IBinder iBinder) {
        Log.d(TAG, "onExAction:" + i3 + "," + str + "," + str2);
        return null;
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onExit() {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null && musicClient.onExit();
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onForward() {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null && musicClient.onForward();
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onLoopModeChange(int i3) {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null && musicClient.onLoopModeChange(i3);
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public void onMediaCenterFocusChanged(String str) {
        MusicClient musicClient = this.mOriginClazz;
        if (musicClient != null) {
            musicClient.onMediaCenterFocusChanged(str);
        }
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onMediaForward(boolean z2) {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null && musicClient.onMediaForward(z2);
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onMediaQualityChange(int i3) {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null && musicClient.onMediaQualityChange(i3);
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onMediaRewind(boolean z2) {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null && musicClient.onMediaRewind(z2);
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onMediaSelected(IMedia iMedia) {
        return false;
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onMediaSelectedPlay(int i3, String str) {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null && musicClient.onMediaSelectedPlay(i3, str);
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onNext() {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null && musicClient.onNext();
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onPause() {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null && musicClient.onPause();
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onPlay() {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null && musicClient.onPlay();
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onPlayMediaList(int i3, int i4) {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null && musicClient.onPlayMediaList(i3, i4);
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onPlayRecommend(IRecommend iRecommend) {
        return false;
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onPrevious() {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null && musicClient.onPrevious();
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onReplay() {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null && musicClient.onReplay();
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onRewind() {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null && musicClient.onRewind();
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public void onSearchMusic(String str, String str2, int i3, boolean z2, boolean z3, ISearchMusicCallback iSearchMusicCallback) {
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onSeek(long j3) {
        MusicClient musicClient = this.mOriginClazz;
        if (musicClient == null) {
            return false;
        }
        musicClient.onSeek(j3);
        return true;
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onSourceChanged(int i3, String str) {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null && musicClient.onSourceChanged(i3, str);
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean onSourceSelected(int i3) {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null && musicClient.onSourceSelected(i3);
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public void operationType(int i3) {
        MusicClient musicClient = this.mOriginClazz;
        if (musicClient != null) {
            musicClient.operationType(i3);
        }
    }

    @Override // ecarx.xsf.mediacenter.IMusicClient
    public boolean selectListMediaPlay(int i3, int i4, String str) {
        MusicClient musicClient = this.mOriginClazz;
        return musicClient != null && musicClient.selectListMediaPlay(i3, i4, str);
    }
}
