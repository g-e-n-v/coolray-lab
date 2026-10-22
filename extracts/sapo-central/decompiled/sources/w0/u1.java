package w0;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;
import com.ex.auto.Politica;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class u1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f4325a;

    static {
        Politica politica = Politica.f1126a;
        String strJ = Politica.j();
        if (strJ == null) {
            strJ = "";
        }
        f4325a = y1.g.e0(y1.f.U(new String[]{"0000110a-0000-1000-8000-00805f9b34fb", "0000110b-0000-1000-8000-00805f9b34fb", "0000110c-0000-1000-8000-00805f9b34fb", "0000110e-0000-1000-8000-00805f9b34fb", "00001112-0000-1000-8000-00805f9b34fb", "0000111f-0000-1000-8000-00805f9b34fb", "00001200-0000-1000-8000-00805f9b34fb", strJ}), ",", null, 62);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x006b  */
    public static boolean a(Context context, String str, String str2) {
        boolean zBindService;
        boolean z2 = false;
        c cVar = null;
        try {
            try {
                ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(1);
                c cVar2 = new c(arrayBlockingQueue, 2);
                try {
                    try {
                        zBindService = context.bindService(new Intent("carplay.connection.service").setPackage("com.njda.carplay"), cVar2, 1);
                    } catch (Throwable th) {
                        th = th;
                        cVar = cVar2;
                        try {
                            Log.w("CarplayIdentity", "inject falhou: " + th.getClass().getSimpleName() + ": " + th.getMessage());
                            if (cVar != null) {
                                context.unbindService(cVar);
                            }
                        } catch (Throwable th2) {
                            if (cVar != null) {
                                try {
                                    context.unbindService(cVar);
                                } catch (Throwable unused) {
                                }
                            }
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    Log.w("CarplayIdentity", "bindService lançou: " + th3.getMessage());
                    zBindService = false;
                }
                if (zBindService) {
                    IBinder iBinder = (IBinder) arrayBlockingQueue.poll(6000L, TimeUnit.MILLISECONDS);
                    if (iBinder != null) {
                        if (str2 == null) {
                            str2 = "iPhone";
                        } else {
                            if (o2.k.m0(str2)) {
                                str2 = null;
                            }
                            if (str2 == null) {
                                str2 = "iPhone";
                            }
                        }
                        boolean zC = c(iBinder, str, str2, f4325a);
                        boolean zB = b(str, iBinder);
                        Log.i("CarplayIdentity", "injeção em " + str + " (" + str2 + "): uuid=" + zC + " bond=" + zB);
                        if (zC && zB) {
                            z2 = true;
                        }
                        try {
                            context.unbindService(cVar2);
                        } catch (Throwable unused2) {
                        }
                        return z2;
                    }
                    Log.w("CarplayIdentity", "serviço não conectou em 6000ms");
                    context.unbindService(cVar2);
                } else {
                    Log.w("CarplayIdentity", "bindService recusou (carplay.connection.service em com.njda.carplay)");
                }
            } catch (Throwable unused3) {
            }
        } catch (Throwable th4) {
            th = th4;
        }
        return false;
    }

    public static boolean b(String str, IBinder iBinder) {
        Parcel parcelObtain = Parcel.obtain();
        i2.g.d(parcelObtain, "obtain(...)");
        Parcel parcelObtain2 = Parcel.obtain();
        i2.g.d(parcelObtain2, "obtain(...)");
        try {
            parcelObtain.writeInterfaceToken("com.njda.carplay.connection.IConnectionManager");
            parcelObtain.writeInt(1);
            parcelObtain.writeString(str);
            parcelObtain.writeString("00000000-DECA-FADE-DECA-DEAFDECACAFE");
            Integer numC = Politica.f1126a.c(4);
            iBinder.transact(numC != null ? numC.intValue() : -1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            parcelObtain.recycle();
            parcelObtain2.recycle();
            return true;
        } catch (Throwable th) {
            try {
                StringBuilder sb = new StringBuilder("notifyBtBondState(txn ");
                Integer numC2 = Politica.f1126a.c(4);
                sb.append(numC2 != null ? numC2.intValue() : -1);
                sb.append("): ");
                sb.append(th.getClass().getSimpleName());
                sb.append(": ");
                sb.append(th.getMessage());
                Log.w("CarplayIdentity", sb.toString());
                return false;
            } finally {
                parcelObtain.recycle();
                parcelObtain2.recycle();
            }
        }
    }

    public static boolean c(IBinder iBinder, String str, String str2, String str3) {
        Parcel parcelObtain = Parcel.obtain();
        i2.g.d(parcelObtain, "obtain(...)");
        Parcel parcelObtain2 = Parcel.obtain();
        i2.g.d(parcelObtain2, "obtain(...)");
        try {
            parcelObtain.writeInterfaceToken("com.njda.carplay.connection.IConnectionManager");
            parcelObtain.writeString(str);
            parcelObtain.writeString(str2);
            parcelObtain.writeString(str3);
            Integer numC = Politica.f1126a.c(5);
            iBinder.transact(numC != null ? numC.intValue() : -1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            parcelObtain.recycle();
            parcelObtain2.recycle();
            return true;
        } catch (Throwable th) {
            try {
                StringBuilder sb = new StringBuilder("notifyBtDeviceUuid(txn ");
                Integer numC2 = Politica.f1126a.c(5);
                sb.append(numC2 != null ? numC2.intValue() : -1);
                sb.append("): ");
                sb.append(th.getClass().getSimpleName());
                sb.append(": ");
                sb.append(th.getMessage());
                Log.w("CarplayIdentity", sb.toString());
                return false;
            } finally {
                parcelObtain.recycle();
                parcelObtain2.recycle();
            }
        }
    }
}
