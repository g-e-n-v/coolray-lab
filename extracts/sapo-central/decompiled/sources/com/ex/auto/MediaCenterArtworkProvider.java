package com.ex.auto;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import i2.g;
import java.io.File;
import java.io.FileNotFoundException;
import o2.k;

/* JADX INFO: loaded from: classes.dex */
public final class MediaCenterArtworkProvider extends ContentProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f1097a = 0;

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        g.e(uri, "u");
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        g.e(uri, "uri");
        return "image/png";
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        g.e(uri, "u");
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public final ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        g.e(uri, "uri");
        g.e(str, "mode");
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null || k.e0(lastPathSegment, "..", false) || k.e0(lastPathSegment, "/", false)) {
            throw new FileNotFoundException("nome inválido: " + lastPathSegment);
        }
        Context context = getContext();
        g.b(context);
        File file = new File(context.getFilesDir(), "mediabridge_artwork");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, lastPathSegment);
        if (!file2.exists()) {
            throw new FileNotFoundException("capa não encontrada: ".concat(lastPathSegment));
        }
        ParcelFileDescriptor parcelFileDescriptorOpen = ParcelFileDescriptor.open(file2, 268435456);
        g.d(parcelFileDescriptorOpen, "open(...)");
        return parcelFileDescriptorOpen;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        g.e(uri, "u");
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        g.e(uri, "u");
        return 0;
    }
}
