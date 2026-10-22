package w0;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattServer;
import android.bluetooth.BluetoothGattServerCallback;
import java.util.Arrays;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public final class t0 extends BluetoothGattServerCallback {
    @Override // android.bluetooth.BluetoothGattServerCallback
    public final void onCharacteristicReadRequest(BluetoothDevice bluetoothDevice, int i3, int i4, BluetoothGattCharacteristic bluetoothGattCharacteristic) throws JSONException {
        i2.g.e(bluetoothDevice, "d");
        i2.g.e(bluetoothGattCharacteristic, "ch");
        u0 u0Var = u0.f4312a;
        byte[] bArrC = u0.c();
        byte[] bArrW = i4 >= bArrC.length ? new byte[0] : y1.f.W(bArrC, i4, bArrC.length);
        BluetoothGattServer bluetoothGattServer = u0.f4317h;
        if (bluetoothGattServer != null) {
            bluetoothGattServer.sendResponse(bluetoothDevice, i3, 0, i4, bArrW);
        }
    }

    @Override // android.bluetooth.BluetoothGattServerCallback
    public final void onConnectionStateChange(BluetoothDevice bluetoothDevice, int i3, int i4) {
        i2.g.e(bluetoothDevice, "d");
        if (i4 == 0) {
            u0.f4319j.remove(bluetoothDevice);
        }
        ae aeVar = ae.f3361a;
        StringBuilder sb = new StringBuilder("gatt: ");
        sb.append(i4 == 2 ? "conectou" : "saiu");
        sb.append(" (");
        sb.append(u0.f4319j.size());
        sb.append(" inscrito(s))");
        ae.b("BleCarro", sb.toString(), false);
    }

    @Override // android.bluetooth.BluetoothGattServerCallback
    public final void onDescriptorWriteRequest(BluetoothDevice bluetoothDevice, int i3, BluetoothGattDescriptor bluetoothGattDescriptor, boolean z2, boolean z3, int i4, byte[] bArr) {
        BluetoothGattServer bluetoothGattServer;
        i2.g.e(bluetoothDevice, "d");
        i2.g.e(bluetoothGattDescriptor, "desc");
        i2.g.e(bArr, "valor");
        if (i2.g.a(bluetoothGattDescriptor.getUuid(), u0.f4314d)) {
            if (Arrays.equals(bArr, BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE)) {
                u0.f4319j.add(bluetoothDevice);
            } else {
                u0.f4319j.remove(bluetoothDevice);
            }
        }
        if (!z3 || (bluetoothGattServer = u0.f4317h) == null) {
            return;
        }
        bluetoothGattServer.sendResponse(bluetoothDevice, i3, 0, i4, bArr);
    }
}
