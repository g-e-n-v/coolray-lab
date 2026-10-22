package ecarx.xsf.mediacenter.session;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class PlaybackState implements Parcelable {
    public static final Parcelable.Creator<PlaybackState> CREATOR = new Parcelable.Creator<PlaybackState>() { // from class: ecarx.xsf.mediacenter.session.PlaybackState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PlaybackState createFromParcel(Parcel parcel) {
            return new PlaybackState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PlaybackState[] newArray(int i3) {
            return new PlaybackState[i3];
        }
    };
    public static final int STATE_BUFFERING = 3;
    public static final int STATE_ERROR = 7;
    public static final int STATE_PAUSED = 0;
    public static final int STATE_PLAYING = 1;
    private long appId;
    private int errorCode;
    private String errorMessage;
    private PendingIntent errorPendingIntent;
    private String itemId;
    private int loopMode;
    private String pkgName;
    private String queueId;
    private int radioMode;
    private int sourceType;
    private int state;
    private int zoneId;

    public static class Builder {
        private final PlaybackState state = new PlaybackState();

        public Builder appId(long j3) {
            this.state.appId = j3;
            return this;
        }

        public PlaybackState build() {
            return this.state;
        }

        public Builder errorCode(int i3) {
            this.state.errorCode = i3;
            return this;
        }

        public Builder errorMessage(String str) {
            this.state.errorMessage = str;
            return this;
        }

        public Builder errorPendingIntent(PendingIntent pendingIntent) {
            this.state.errorPendingIntent = pendingIntent;
            return this;
        }

        public Builder itemId(String str) {
            this.state.itemId = str;
            return this;
        }

        public Builder loopMode(int i3) {
            this.state.loopMode = i3;
            return this;
        }

        public Builder pkgName(String str) {
            this.state.pkgName = str;
            return this;
        }

        public Builder queueId(String str) {
            this.state.queueId = str;
            return this;
        }

        public Builder radioMode(int i3) {
            this.state.radioMode = i3;
            return this;
        }

        public Builder sourceType(int i3) {
            this.state.sourceType = i3;
            return this;
        }

        public Builder state(int i3) {
            this.state.state = i3;
            return this;
        }

        public Builder zoneId(int i3) {
            this.state.zoneId = i3;
            return this;
        }
    }

    public PlaybackState() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i3) {
        parcel.writeInt(this.state);
        parcel.writeInt(this.loopMode);
        parcel.writeInt(this.radioMode);
        parcel.writeInt(this.sourceType);
        parcel.writeString(this.pkgName);
        parcel.writeInt(this.zoneId);
        parcel.writeLong(this.appId);
        parcel.writeString(this.queueId);
        parcel.writeString(this.itemId);
        parcel.writeInt(this.errorCode);
        parcel.writeString(this.errorMessage);
        parcel.writeParcelable(this.errorPendingIntent, i3);
    }

    public PlaybackState(Parcel parcel) {
        this.state = parcel.readInt();
        this.loopMode = parcel.readInt();
        this.radioMode = parcel.readInt();
        this.sourceType = parcel.readInt();
        this.pkgName = parcel.readString();
        this.zoneId = parcel.readInt();
        this.appId = parcel.readLong();
        this.queueId = parcel.readString();
        this.itemId = parcel.readString();
        this.errorCode = parcel.readInt();
        this.errorMessage = parcel.readString();
        this.errorPendingIntent = (PendingIntent) parcel.readParcelable(PendingIntent.class.getClassLoader());
    }
}
