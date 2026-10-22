package androidx.core.app;

import android.app.Notification;
import android.os.Binder;
import android.support.v4.app.INotificationSideChannel;

/* JADX INFO: loaded from: classes.dex */
class NotificationCompatSideChannelService$NotificationSideChannelStub extends INotificationSideChannel.Stub {
    final /* synthetic */ e this$0;

    public NotificationCompatSideChannelService$NotificationSideChannelStub(e eVar) {
    }

    @Override // android.support.v4.app.INotificationSideChannel
    public void cancel(String str, int i3, String str2) {
        Binder.getCallingUid();
        throw null;
    }

    @Override // android.support.v4.app.INotificationSideChannel
    public void cancelAll(String str) {
        Binder.getCallingUid();
        throw null;
    }

    @Override // android.support.v4.app.INotificationSideChannel
    public void notify(String str, int i3, String str2, Notification notification) {
        Binder.getCallingUid();
        throw null;
    }
}
