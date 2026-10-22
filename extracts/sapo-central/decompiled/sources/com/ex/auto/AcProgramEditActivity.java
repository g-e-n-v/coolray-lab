package com.ex.auto;

import a1.n;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.NumberPicker;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.ecarx.eas.sdk.mediacenter.MusicClient;
import com.ex.auto.AcProgramEditActivity;
import com.ex.auto.MasterToggleView;
import com.ex.auto.R;
import e.j;
import ecarx.xsf.mediacenter.session.PlaybackState;
import i2.g;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import w0.k;
import w0.l;
import w0.t1;

/* JADX INFO: loaded from: classes.dex */
public final class AcProgramEditActivity extends j {

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final /* synthetic */ int f760z = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f761t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final ArrayList f762u = new ArrayList();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public LinearLayout f763v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public TextView f764w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public MasterToggleView f765x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public MasterToggleView f766y;

    @Override // e.j, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        g.e(context, "newBase");
        super.attachBaseContext(context);
    }

    @Override // e.j, androidx.activity.h, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_ac_program_edit);
        getWindow().getDecorView().setSystemUiVisibility(5894);
        this.f761t = getIntent().getIntExtra("slot", 0);
        this.f763v = (LinearLayout) findViewById(R.id.containerAcSteps);
        this.f764w = (TextView) findViewById(R.id.tvAcEditEmptyHint);
        this.f765x = (MasterToggleView) findViewById(R.id.switchAcRepeat);
        this.f766y = (MasterToggleView) findViewById(R.id.switchAcRestore);
        k kVarO = t1.O(this, this.f761t);
        ((TextView) findViewById(R.id.tvAcEditTitle)).setText(getString(kVarO != null ? R.string.k_ac_edit_title_edit : R.string.k_ac_edit_title_new));
        if (kVarO != null) {
            this.f762u.addAll(kVarO.f3774a);
            MasterToggleView masterToggleView = this.f765x;
            if (masterToggleView == null) {
                g.h("switchRepeat");
                throw null;
            }
            masterToggleView.setActive(kVarO.b);
            MasterToggleView masterToggleView2 = this.f766y;
            if (masterToggleView2 == null) {
                g.h("switchRestore");
                throw null;
            }
            masterToggleView2.setActive(kVarO.f3775c);
            findViewById(R.id.btnAcEditDelete).setVisibility(0);
        }
        final int i3 = 0;
        findViewById(R.id.btnAcAddTemp).setOnClickListener(new View.OnClickListener(this) { // from class: w0.d
            public final /* synthetic */ AcProgramEditActivity b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws JSONException {
                int i4 = i3;
                final int i5 = 1;
                final int i6 = 0;
                final AcProgramEditActivity acProgramEditActivity = this.b;
                switch (i4) {
                    case 0:
                        int i7 = AcProgramEditActivity.f760z;
                        final NumberPicker numberPicker = new NumberPicker(acProgramEditActivity);
                        numberPicker.setMinValue(17);
                        numberPicker.setMaxValue(32);
                        numberPicker.setValue(22);
                        LinearLayout linearLayout = new LinearLayout(acProgramEditActivity);
                        linearLayout.setGravity(17);
                        linearLayout.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout.addView(numberPicker);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_temp_title).setView(linearLayout).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: w0.f
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i8) {
                                switch (i6) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f762u.add(new l("temp", numberPicker.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f762u.add(new l("fan", numberPicker.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 1:
                        int i8 = AcProgramEditActivity.f760z;
                        final NumberPicker numberPicker2 = new NumberPicker(acProgramEditActivity);
                        numberPicker2.setMinValue(0);
                        numberPicker2.setMaxValue(7);
                        numberPicker2.setValue(3);
                        LinearLayout linearLayout2 = new LinearLayout(acProgramEditActivity);
                        linearLayout2.setGravity(17);
                        linearLayout2.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout2.addView(numberPicker2);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_fan_title).setView(linearLayout2).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: w0.f
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i9) {
                                switch (i5) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f762u.add(new l("temp", numberPicker2.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f762u.add(new l("fan", numberPicker2.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 2:
                        int i9 = AcProgramEditActivity.f760z;
                        NumberPicker numberPicker3 = new NumberPicker(acProgramEditActivity);
                        numberPicker3.setMinValue(0);
                        numberPicker3.setMaxValue(30);
                        numberPicker3.setValue(1);
                        NumberPicker numberPicker4 = new NumberPicker(acProgramEditActivity);
                        numberPicker4.setMinValue(0);
                        numberPicker4.setMaxValue(59);
                        numberPicker4.setValue(0);
                        LinearLayout linearLayout3 = new LinearLayout(acProgramEditActivity);
                        linearLayout3.setOrientation(0);
                        linearLayout3.setGravity(17);
                        linearLayout3.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        LinearLayout linearLayout4 = new LinearLayout(acProgramEditActivity);
                        linearLayout4.setOrientation(1);
                        linearLayout4.setGravity(17);
                        TextView textView = new TextView(acProgramEditActivity);
                        textView.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_min));
                        textView.setGravity(17);
                        linearLayout4.addView(textView);
                        linearLayout4.addView(numberPicker3);
                        linearLayout3.addView(linearLayout4);
                        LinearLayout linearLayout5 = new LinearLayout(acProgramEditActivity);
                        linearLayout5.setOrientation(1);
                        linearLayout5.setGravity(17);
                        linearLayout5.setPadding(acProgramEditActivity.s(16), 0, 0, 0);
                        TextView textView2 = new TextView(acProgramEditActivity);
                        textView2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_sec));
                        textView2.setGravity(17);
                        linearLayout5.addView(textView2);
                        linearLayout5.addView(numberPicker4);
                        linearLayout3.addView(linearLayout5);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_wait_title).setView(linearLayout3).setPositiveButton(R.string.k_ac_edit_dialog_add, new e(numberPicker3, numberPicker4, acProgramEditActivity, i6)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 3:
                        int i10 = AcProgramEditActivity.f760z;
                        RadioGroup radioGroup = new RadioGroup(acProgramEditActivity);
                        radioGroup.setOrientation(1);
                        RadioButton radioButton = new RadioButton(acProgramEditActivity);
                        radioButton.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_internal));
                        radioButton.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton.setTextSize(16.0f);
                        radioButton.setChecked(true);
                        RadioButton radioButton2 = new RadioButton(acProgramEditActivity);
                        radioButton2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_external));
                        radioButton2.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton2.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton2.setTextSize(16.0f);
                        radioGroup.addView(radioButton);
                        radioGroup.addView(radioButton2);
                        LinearLayout linearLayout6 = new LinearLayout(acProgramEditActivity);
                        linearLayout6.setOrientation(1);
                        linearLayout6.setPadding(acProgramEditActivity.s(24), acProgramEditActivity.s(12), acProgramEditActivity.s(24), acProgramEditActivity.s(8));
                        linearLayout6.addView(radioGroup);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_recirc_title).setView(linearLayout6).setPositiveButton(R.string.k_ac_edit_dialog_add, new g(acProgramEditActivity, i6, radioButton)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 4:
                        int i11 = AcProgramEditActivity.f760z;
                        acProgramEditActivity.finish();
                        return;
                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                        int i12 = AcProgramEditActivity.f760z;
                        new AlertDialog.Builder(acProgramEditActivity).setMessage(R.string.k_ac_edit_confirm_delete).setPositiveButton(R.string.k_ac_edit_delete, new h(i6, acProgramEditActivity)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case MusicClient.TYPE_GESTURE /* 6 */:
                        ArrayList arrayList = acProgramEditActivity.f762u;
                        if (arrayList.isEmpty()) {
                            Toast.makeText(acProgramEditActivity, acProgramEditActivity.getString(R.string.k_ac_edit_need_step), 0).show();
                            return;
                        }
                        int i13 = acProgramEditActivity.f761t;
                        ArrayList arrayListN0 = y1.g.n0(arrayList);
                        MasterToggleView masterToggleView3 = acProgramEditActivity.f765x;
                        if (masterToggleView3 == null) {
                            i2.g.h("switchRepeat");
                            throw null;
                        }
                        boolean active = masterToggleView3.getActive();
                        MasterToggleView masterToggleView4 = acProgramEditActivity.f766y;
                        if (masterToggleView4 == null) {
                            i2.g.h("switchRestore");
                            throw null;
                        }
                        boolean active2 = masterToggleView4.getActive();
                        JSONObject jSONObject = new JSONObject();
                        JSONArray jSONArray = new JSONArray();
                        int size = arrayListN0.size();
                        int i14 = 0;
                        while (i14 < size) {
                            Object obj = arrayListN0.get(i14);
                            i14++;
                            l lVar = (l) obj;
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("type", lVar.f3815a);
                            jSONObject2.put("value", lVar.b);
                            jSONArray.put(jSONObject2);
                        }
                        jSONObject.put("steps", jSONArray);
                        jSONObject.put("repeat", active);
                        jSONObject.put("restaurarAnterior", active2);
                        acProgramEditActivity.getSharedPreferences("ac_programs_prefs", 0).edit().putString("program_" + i13, jSONObject.toString()).apply();
                        acProgramEditActivity.finish();
                        return;
                    case PlaybackState.STATE_ERROR /* 7 */:
                        MasterToggleView masterToggleView5 = acProgramEditActivity.f765x;
                        if (masterToggleView5 != null) {
                            masterToggleView5.setActive(!masterToggleView5.getActive());
                            return;
                        } else {
                            i2.g.h("switchRepeat");
                            throw null;
                        }
                    default:
                        MasterToggleView masterToggleView6 = acProgramEditActivity.f766y;
                        if (masterToggleView6 != null) {
                            masterToggleView6.setActive(!masterToggleView6.getActive());
                            return;
                        } else {
                            i2.g.h("switchRestore");
                            throw null;
                        }
                }
            }
        });
        final int i4 = 1;
        findViewById(R.id.btnAcAddFan).setOnClickListener(new View.OnClickListener(this) { // from class: w0.d
            public final /* synthetic */ AcProgramEditActivity b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws JSONException {
                int i5 = i4;
                final int i6 = 1;
                final int i7 = 0;
                final AcProgramEditActivity acProgramEditActivity = this.b;
                switch (i5) {
                    case 0:
                        int i8 = AcProgramEditActivity.f760z;
                        final NumberPicker numberPicker = new NumberPicker(acProgramEditActivity);
                        numberPicker.setMinValue(17);
                        numberPicker.setMaxValue(32);
                        numberPicker.setValue(22);
                        LinearLayout linearLayout = new LinearLayout(acProgramEditActivity);
                        linearLayout.setGravity(17);
                        linearLayout.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout.addView(numberPicker);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_temp_title).setView(linearLayout).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: w0.f
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i9) {
                                switch (i7) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f762u.add(new l("temp", numberPicker.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f762u.add(new l("fan", numberPicker.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 1:
                        int i9 = AcProgramEditActivity.f760z;
                        final NumberPicker numberPicker2 = new NumberPicker(acProgramEditActivity);
                        numberPicker2.setMinValue(0);
                        numberPicker2.setMaxValue(7);
                        numberPicker2.setValue(3);
                        LinearLayout linearLayout2 = new LinearLayout(acProgramEditActivity);
                        linearLayout2.setGravity(17);
                        linearLayout2.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout2.addView(numberPicker2);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_fan_title).setView(linearLayout2).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: w0.f
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i10) {
                                switch (i6) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f762u.add(new l("temp", numberPicker2.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f762u.add(new l("fan", numberPicker2.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 2:
                        int i10 = AcProgramEditActivity.f760z;
                        NumberPicker numberPicker3 = new NumberPicker(acProgramEditActivity);
                        numberPicker3.setMinValue(0);
                        numberPicker3.setMaxValue(30);
                        numberPicker3.setValue(1);
                        NumberPicker numberPicker4 = new NumberPicker(acProgramEditActivity);
                        numberPicker4.setMinValue(0);
                        numberPicker4.setMaxValue(59);
                        numberPicker4.setValue(0);
                        LinearLayout linearLayout3 = new LinearLayout(acProgramEditActivity);
                        linearLayout3.setOrientation(0);
                        linearLayout3.setGravity(17);
                        linearLayout3.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        LinearLayout linearLayout4 = new LinearLayout(acProgramEditActivity);
                        linearLayout4.setOrientation(1);
                        linearLayout4.setGravity(17);
                        TextView textView = new TextView(acProgramEditActivity);
                        textView.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_min));
                        textView.setGravity(17);
                        linearLayout4.addView(textView);
                        linearLayout4.addView(numberPicker3);
                        linearLayout3.addView(linearLayout4);
                        LinearLayout linearLayout5 = new LinearLayout(acProgramEditActivity);
                        linearLayout5.setOrientation(1);
                        linearLayout5.setGravity(17);
                        linearLayout5.setPadding(acProgramEditActivity.s(16), 0, 0, 0);
                        TextView textView2 = new TextView(acProgramEditActivity);
                        textView2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_sec));
                        textView2.setGravity(17);
                        linearLayout5.addView(textView2);
                        linearLayout5.addView(numberPicker4);
                        linearLayout3.addView(linearLayout5);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_wait_title).setView(linearLayout3).setPositiveButton(R.string.k_ac_edit_dialog_add, new e(numberPicker3, numberPicker4, acProgramEditActivity, i7)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 3:
                        int i11 = AcProgramEditActivity.f760z;
                        RadioGroup radioGroup = new RadioGroup(acProgramEditActivity);
                        radioGroup.setOrientation(1);
                        RadioButton radioButton = new RadioButton(acProgramEditActivity);
                        radioButton.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_internal));
                        radioButton.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton.setTextSize(16.0f);
                        radioButton.setChecked(true);
                        RadioButton radioButton2 = new RadioButton(acProgramEditActivity);
                        radioButton2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_external));
                        radioButton2.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton2.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton2.setTextSize(16.0f);
                        radioGroup.addView(radioButton);
                        radioGroup.addView(radioButton2);
                        LinearLayout linearLayout6 = new LinearLayout(acProgramEditActivity);
                        linearLayout6.setOrientation(1);
                        linearLayout6.setPadding(acProgramEditActivity.s(24), acProgramEditActivity.s(12), acProgramEditActivity.s(24), acProgramEditActivity.s(8));
                        linearLayout6.addView(radioGroup);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_recirc_title).setView(linearLayout6).setPositiveButton(R.string.k_ac_edit_dialog_add, new g(acProgramEditActivity, i7, radioButton)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 4:
                        int i12 = AcProgramEditActivity.f760z;
                        acProgramEditActivity.finish();
                        return;
                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                        int i13 = AcProgramEditActivity.f760z;
                        new AlertDialog.Builder(acProgramEditActivity).setMessage(R.string.k_ac_edit_confirm_delete).setPositiveButton(R.string.k_ac_edit_delete, new h(i7, acProgramEditActivity)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case MusicClient.TYPE_GESTURE /* 6 */:
                        ArrayList arrayList = acProgramEditActivity.f762u;
                        if (arrayList.isEmpty()) {
                            Toast.makeText(acProgramEditActivity, acProgramEditActivity.getString(R.string.k_ac_edit_need_step), 0).show();
                            return;
                        }
                        int i14 = acProgramEditActivity.f761t;
                        ArrayList arrayListN0 = y1.g.n0(arrayList);
                        MasterToggleView masterToggleView3 = acProgramEditActivity.f765x;
                        if (masterToggleView3 == null) {
                            i2.g.h("switchRepeat");
                            throw null;
                        }
                        boolean active = masterToggleView3.getActive();
                        MasterToggleView masterToggleView4 = acProgramEditActivity.f766y;
                        if (masterToggleView4 == null) {
                            i2.g.h("switchRestore");
                            throw null;
                        }
                        boolean active2 = masterToggleView4.getActive();
                        JSONObject jSONObject = new JSONObject();
                        JSONArray jSONArray = new JSONArray();
                        int size = arrayListN0.size();
                        int i15 = 0;
                        while (i15 < size) {
                            Object obj = arrayListN0.get(i15);
                            i15++;
                            l lVar = (l) obj;
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("type", lVar.f3815a);
                            jSONObject2.put("value", lVar.b);
                            jSONArray.put(jSONObject2);
                        }
                        jSONObject.put("steps", jSONArray);
                        jSONObject.put("repeat", active);
                        jSONObject.put("restaurarAnterior", active2);
                        acProgramEditActivity.getSharedPreferences("ac_programs_prefs", 0).edit().putString("program_" + i14, jSONObject.toString()).apply();
                        acProgramEditActivity.finish();
                        return;
                    case PlaybackState.STATE_ERROR /* 7 */:
                        MasterToggleView masterToggleView5 = acProgramEditActivity.f765x;
                        if (masterToggleView5 != null) {
                            masterToggleView5.setActive(!masterToggleView5.getActive());
                            return;
                        } else {
                            i2.g.h("switchRepeat");
                            throw null;
                        }
                    default:
                        MasterToggleView masterToggleView6 = acProgramEditActivity.f766y;
                        if (masterToggleView6 != null) {
                            masterToggleView6.setActive(!masterToggleView6.getActive());
                            return;
                        } else {
                            i2.g.h("switchRestore");
                            throw null;
                        }
                }
            }
        });
        final int i5 = 2;
        findViewById(R.id.btnAcAddWait).setOnClickListener(new View.OnClickListener(this) { // from class: w0.d
            public final /* synthetic */ AcProgramEditActivity b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws JSONException {
                int i6 = i5;
                final int i7 = 1;
                final int i8 = 0;
                final AcProgramEditActivity acProgramEditActivity = this.b;
                switch (i6) {
                    case 0:
                        int i9 = AcProgramEditActivity.f760z;
                        final NumberPicker numberPicker = new NumberPicker(acProgramEditActivity);
                        numberPicker.setMinValue(17);
                        numberPicker.setMaxValue(32);
                        numberPicker.setValue(22);
                        LinearLayout linearLayout = new LinearLayout(acProgramEditActivity);
                        linearLayout.setGravity(17);
                        linearLayout.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout.addView(numberPicker);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_temp_title).setView(linearLayout).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: w0.f
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i10) {
                                switch (i8) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f762u.add(new l("temp", numberPicker.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f762u.add(new l("fan", numberPicker.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 1:
                        int i10 = AcProgramEditActivity.f760z;
                        final NumberPicker numberPicker2 = new NumberPicker(acProgramEditActivity);
                        numberPicker2.setMinValue(0);
                        numberPicker2.setMaxValue(7);
                        numberPicker2.setValue(3);
                        LinearLayout linearLayout2 = new LinearLayout(acProgramEditActivity);
                        linearLayout2.setGravity(17);
                        linearLayout2.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout2.addView(numberPicker2);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_fan_title).setView(linearLayout2).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: w0.f
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i11) {
                                switch (i7) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f762u.add(new l("temp", numberPicker2.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f762u.add(new l("fan", numberPicker2.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 2:
                        int i11 = AcProgramEditActivity.f760z;
                        NumberPicker numberPicker3 = new NumberPicker(acProgramEditActivity);
                        numberPicker3.setMinValue(0);
                        numberPicker3.setMaxValue(30);
                        numberPicker3.setValue(1);
                        NumberPicker numberPicker4 = new NumberPicker(acProgramEditActivity);
                        numberPicker4.setMinValue(0);
                        numberPicker4.setMaxValue(59);
                        numberPicker4.setValue(0);
                        LinearLayout linearLayout3 = new LinearLayout(acProgramEditActivity);
                        linearLayout3.setOrientation(0);
                        linearLayout3.setGravity(17);
                        linearLayout3.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        LinearLayout linearLayout4 = new LinearLayout(acProgramEditActivity);
                        linearLayout4.setOrientation(1);
                        linearLayout4.setGravity(17);
                        TextView textView = new TextView(acProgramEditActivity);
                        textView.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_min));
                        textView.setGravity(17);
                        linearLayout4.addView(textView);
                        linearLayout4.addView(numberPicker3);
                        linearLayout3.addView(linearLayout4);
                        LinearLayout linearLayout5 = new LinearLayout(acProgramEditActivity);
                        linearLayout5.setOrientation(1);
                        linearLayout5.setGravity(17);
                        linearLayout5.setPadding(acProgramEditActivity.s(16), 0, 0, 0);
                        TextView textView2 = new TextView(acProgramEditActivity);
                        textView2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_sec));
                        textView2.setGravity(17);
                        linearLayout5.addView(textView2);
                        linearLayout5.addView(numberPicker4);
                        linearLayout3.addView(linearLayout5);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_wait_title).setView(linearLayout3).setPositiveButton(R.string.k_ac_edit_dialog_add, new e(numberPicker3, numberPicker4, acProgramEditActivity, i8)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 3:
                        int i12 = AcProgramEditActivity.f760z;
                        RadioGroup radioGroup = new RadioGroup(acProgramEditActivity);
                        radioGroup.setOrientation(1);
                        RadioButton radioButton = new RadioButton(acProgramEditActivity);
                        radioButton.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_internal));
                        radioButton.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton.setTextSize(16.0f);
                        radioButton.setChecked(true);
                        RadioButton radioButton2 = new RadioButton(acProgramEditActivity);
                        radioButton2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_external));
                        radioButton2.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton2.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton2.setTextSize(16.0f);
                        radioGroup.addView(radioButton);
                        radioGroup.addView(radioButton2);
                        LinearLayout linearLayout6 = new LinearLayout(acProgramEditActivity);
                        linearLayout6.setOrientation(1);
                        linearLayout6.setPadding(acProgramEditActivity.s(24), acProgramEditActivity.s(12), acProgramEditActivity.s(24), acProgramEditActivity.s(8));
                        linearLayout6.addView(radioGroup);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_recirc_title).setView(linearLayout6).setPositiveButton(R.string.k_ac_edit_dialog_add, new g(acProgramEditActivity, i8, radioButton)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 4:
                        int i13 = AcProgramEditActivity.f760z;
                        acProgramEditActivity.finish();
                        return;
                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                        int i14 = AcProgramEditActivity.f760z;
                        new AlertDialog.Builder(acProgramEditActivity).setMessage(R.string.k_ac_edit_confirm_delete).setPositiveButton(R.string.k_ac_edit_delete, new h(i8, acProgramEditActivity)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case MusicClient.TYPE_GESTURE /* 6 */:
                        ArrayList arrayList = acProgramEditActivity.f762u;
                        if (arrayList.isEmpty()) {
                            Toast.makeText(acProgramEditActivity, acProgramEditActivity.getString(R.string.k_ac_edit_need_step), 0).show();
                            return;
                        }
                        int i15 = acProgramEditActivity.f761t;
                        ArrayList arrayListN0 = y1.g.n0(arrayList);
                        MasterToggleView masterToggleView3 = acProgramEditActivity.f765x;
                        if (masterToggleView3 == null) {
                            i2.g.h("switchRepeat");
                            throw null;
                        }
                        boolean active = masterToggleView3.getActive();
                        MasterToggleView masterToggleView4 = acProgramEditActivity.f766y;
                        if (masterToggleView4 == null) {
                            i2.g.h("switchRestore");
                            throw null;
                        }
                        boolean active2 = masterToggleView4.getActive();
                        JSONObject jSONObject = new JSONObject();
                        JSONArray jSONArray = new JSONArray();
                        int size = arrayListN0.size();
                        int i16 = 0;
                        while (i16 < size) {
                            Object obj = arrayListN0.get(i16);
                            i16++;
                            l lVar = (l) obj;
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("type", lVar.f3815a);
                            jSONObject2.put("value", lVar.b);
                            jSONArray.put(jSONObject2);
                        }
                        jSONObject.put("steps", jSONArray);
                        jSONObject.put("repeat", active);
                        jSONObject.put("restaurarAnterior", active2);
                        acProgramEditActivity.getSharedPreferences("ac_programs_prefs", 0).edit().putString("program_" + i15, jSONObject.toString()).apply();
                        acProgramEditActivity.finish();
                        return;
                    case PlaybackState.STATE_ERROR /* 7 */:
                        MasterToggleView masterToggleView5 = acProgramEditActivity.f765x;
                        if (masterToggleView5 != null) {
                            masterToggleView5.setActive(!masterToggleView5.getActive());
                            return;
                        } else {
                            i2.g.h("switchRepeat");
                            throw null;
                        }
                    default:
                        MasterToggleView masterToggleView6 = acProgramEditActivity.f766y;
                        if (masterToggleView6 != null) {
                            masterToggleView6.setActive(!masterToggleView6.getActive());
                            return;
                        } else {
                            i2.g.h("switchRestore");
                            throw null;
                        }
                }
            }
        });
        final int i6 = 3;
        findViewById(R.id.btnAcAddRecirc).setOnClickListener(new View.OnClickListener(this) { // from class: w0.d
            public final /* synthetic */ AcProgramEditActivity b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws JSONException {
                int i7 = i6;
                final int i8 = 1;
                final int i9 = 0;
                final AcProgramEditActivity acProgramEditActivity = this.b;
                switch (i7) {
                    case 0:
                        int i10 = AcProgramEditActivity.f760z;
                        final NumberPicker numberPicker = new NumberPicker(acProgramEditActivity);
                        numberPicker.setMinValue(17);
                        numberPicker.setMaxValue(32);
                        numberPicker.setValue(22);
                        LinearLayout linearLayout = new LinearLayout(acProgramEditActivity);
                        linearLayout.setGravity(17);
                        linearLayout.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout.addView(numberPicker);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_temp_title).setView(linearLayout).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: w0.f
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i11) {
                                switch (i9) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f762u.add(new l("temp", numberPicker.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f762u.add(new l("fan", numberPicker.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 1:
                        int i11 = AcProgramEditActivity.f760z;
                        final NumberPicker numberPicker2 = new NumberPicker(acProgramEditActivity);
                        numberPicker2.setMinValue(0);
                        numberPicker2.setMaxValue(7);
                        numberPicker2.setValue(3);
                        LinearLayout linearLayout2 = new LinearLayout(acProgramEditActivity);
                        linearLayout2.setGravity(17);
                        linearLayout2.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout2.addView(numberPicker2);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_fan_title).setView(linearLayout2).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: w0.f
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i12) {
                                switch (i8) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f762u.add(new l("temp", numberPicker2.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f762u.add(new l("fan", numberPicker2.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 2:
                        int i12 = AcProgramEditActivity.f760z;
                        NumberPicker numberPicker3 = new NumberPicker(acProgramEditActivity);
                        numberPicker3.setMinValue(0);
                        numberPicker3.setMaxValue(30);
                        numberPicker3.setValue(1);
                        NumberPicker numberPicker4 = new NumberPicker(acProgramEditActivity);
                        numberPicker4.setMinValue(0);
                        numberPicker4.setMaxValue(59);
                        numberPicker4.setValue(0);
                        LinearLayout linearLayout3 = new LinearLayout(acProgramEditActivity);
                        linearLayout3.setOrientation(0);
                        linearLayout3.setGravity(17);
                        linearLayout3.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        LinearLayout linearLayout4 = new LinearLayout(acProgramEditActivity);
                        linearLayout4.setOrientation(1);
                        linearLayout4.setGravity(17);
                        TextView textView = new TextView(acProgramEditActivity);
                        textView.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_min));
                        textView.setGravity(17);
                        linearLayout4.addView(textView);
                        linearLayout4.addView(numberPicker3);
                        linearLayout3.addView(linearLayout4);
                        LinearLayout linearLayout5 = new LinearLayout(acProgramEditActivity);
                        linearLayout5.setOrientation(1);
                        linearLayout5.setGravity(17);
                        linearLayout5.setPadding(acProgramEditActivity.s(16), 0, 0, 0);
                        TextView textView2 = new TextView(acProgramEditActivity);
                        textView2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_sec));
                        textView2.setGravity(17);
                        linearLayout5.addView(textView2);
                        linearLayout5.addView(numberPicker4);
                        linearLayout3.addView(linearLayout5);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_wait_title).setView(linearLayout3).setPositiveButton(R.string.k_ac_edit_dialog_add, new e(numberPicker3, numberPicker4, acProgramEditActivity, i9)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 3:
                        int i13 = AcProgramEditActivity.f760z;
                        RadioGroup radioGroup = new RadioGroup(acProgramEditActivity);
                        radioGroup.setOrientation(1);
                        RadioButton radioButton = new RadioButton(acProgramEditActivity);
                        radioButton.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_internal));
                        radioButton.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton.setTextSize(16.0f);
                        radioButton.setChecked(true);
                        RadioButton radioButton2 = new RadioButton(acProgramEditActivity);
                        radioButton2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_external));
                        radioButton2.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton2.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton2.setTextSize(16.0f);
                        radioGroup.addView(radioButton);
                        radioGroup.addView(radioButton2);
                        LinearLayout linearLayout6 = new LinearLayout(acProgramEditActivity);
                        linearLayout6.setOrientation(1);
                        linearLayout6.setPadding(acProgramEditActivity.s(24), acProgramEditActivity.s(12), acProgramEditActivity.s(24), acProgramEditActivity.s(8));
                        linearLayout6.addView(radioGroup);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_recirc_title).setView(linearLayout6).setPositiveButton(R.string.k_ac_edit_dialog_add, new g(acProgramEditActivity, i9, radioButton)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 4:
                        int i14 = AcProgramEditActivity.f760z;
                        acProgramEditActivity.finish();
                        return;
                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                        int i15 = AcProgramEditActivity.f760z;
                        new AlertDialog.Builder(acProgramEditActivity).setMessage(R.string.k_ac_edit_confirm_delete).setPositiveButton(R.string.k_ac_edit_delete, new h(i9, acProgramEditActivity)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case MusicClient.TYPE_GESTURE /* 6 */:
                        ArrayList arrayList = acProgramEditActivity.f762u;
                        if (arrayList.isEmpty()) {
                            Toast.makeText(acProgramEditActivity, acProgramEditActivity.getString(R.string.k_ac_edit_need_step), 0).show();
                            return;
                        }
                        int i16 = acProgramEditActivity.f761t;
                        ArrayList arrayListN0 = y1.g.n0(arrayList);
                        MasterToggleView masterToggleView3 = acProgramEditActivity.f765x;
                        if (masterToggleView3 == null) {
                            i2.g.h("switchRepeat");
                            throw null;
                        }
                        boolean active = masterToggleView3.getActive();
                        MasterToggleView masterToggleView4 = acProgramEditActivity.f766y;
                        if (masterToggleView4 == null) {
                            i2.g.h("switchRestore");
                            throw null;
                        }
                        boolean active2 = masterToggleView4.getActive();
                        JSONObject jSONObject = new JSONObject();
                        JSONArray jSONArray = new JSONArray();
                        int size = arrayListN0.size();
                        int i17 = 0;
                        while (i17 < size) {
                            Object obj = arrayListN0.get(i17);
                            i17++;
                            l lVar = (l) obj;
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("type", lVar.f3815a);
                            jSONObject2.put("value", lVar.b);
                            jSONArray.put(jSONObject2);
                        }
                        jSONObject.put("steps", jSONArray);
                        jSONObject.put("repeat", active);
                        jSONObject.put("restaurarAnterior", active2);
                        acProgramEditActivity.getSharedPreferences("ac_programs_prefs", 0).edit().putString("program_" + i16, jSONObject.toString()).apply();
                        acProgramEditActivity.finish();
                        return;
                    case PlaybackState.STATE_ERROR /* 7 */:
                        MasterToggleView masterToggleView5 = acProgramEditActivity.f765x;
                        if (masterToggleView5 != null) {
                            masterToggleView5.setActive(!masterToggleView5.getActive());
                            return;
                        } else {
                            i2.g.h("switchRepeat");
                            throw null;
                        }
                    default:
                        MasterToggleView masterToggleView6 = acProgramEditActivity.f766y;
                        if (masterToggleView6 != null) {
                            masterToggleView6.setActive(!masterToggleView6.getActive());
                            return;
                        } else {
                            i2.g.h("switchRestore");
                            throw null;
                        }
                }
            }
        });
        final int i7 = 4;
        findViewById(R.id.btnAcEditBack).setOnClickListener(new View.OnClickListener(this) { // from class: w0.d
            public final /* synthetic */ AcProgramEditActivity b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws JSONException {
                int i8 = i7;
                final int i9 = 1;
                final int i10 = 0;
                final AcProgramEditActivity acProgramEditActivity = this.b;
                switch (i8) {
                    case 0:
                        int i11 = AcProgramEditActivity.f760z;
                        final NumberPicker numberPicker = new NumberPicker(acProgramEditActivity);
                        numberPicker.setMinValue(17);
                        numberPicker.setMaxValue(32);
                        numberPicker.setValue(22);
                        LinearLayout linearLayout = new LinearLayout(acProgramEditActivity);
                        linearLayout.setGravity(17);
                        linearLayout.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout.addView(numberPicker);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_temp_title).setView(linearLayout).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: w0.f
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i12) {
                                switch (i10) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f762u.add(new l("temp", numberPicker.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f762u.add(new l("fan", numberPicker.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 1:
                        int i12 = AcProgramEditActivity.f760z;
                        final NumberPicker numberPicker2 = new NumberPicker(acProgramEditActivity);
                        numberPicker2.setMinValue(0);
                        numberPicker2.setMaxValue(7);
                        numberPicker2.setValue(3);
                        LinearLayout linearLayout2 = new LinearLayout(acProgramEditActivity);
                        linearLayout2.setGravity(17);
                        linearLayout2.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout2.addView(numberPicker2);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_fan_title).setView(linearLayout2).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: w0.f
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i13) {
                                switch (i9) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f762u.add(new l("temp", numberPicker2.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f762u.add(new l("fan", numberPicker2.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 2:
                        int i13 = AcProgramEditActivity.f760z;
                        NumberPicker numberPicker3 = new NumberPicker(acProgramEditActivity);
                        numberPicker3.setMinValue(0);
                        numberPicker3.setMaxValue(30);
                        numberPicker3.setValue(1);
                        NumberPicker numberPicker4 = new NumberPicker(acProgramEditActivity);
                        numberPicker4.setMinValue(0);
                        numberPicker4.setMaxValue(59);
                        numberPicker4.setValue(0);
                        LinearLayout linearLayout3 = new LinearLayout(acProgramEditActivity);
                        linearLayout3.setOrientation(0);
                        linearLayout3.setGravity(17);
                        linearLayout3.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        LinearLayout linearLayout4 = new LinearLayout(acProgramEditActivity);
                        linearLayout4.setOrientation(1);
                        linearLayout4.setGravity(17);
                        TextView textView = new TextView(acProgramEditActivity);
                        textView.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_min));
                        textView.setGravity(17);
                        linearLayout4.addView(textView);
                        linearLayout4.addView(numberPicker3);
                        linearLayout3.addView(linearLayout4);
                        LinearLayout linearLayout5 = new LinearLayout(acProgramEditActivity);
                        linearLayout5.setOrientation(1);
                        linearLayout5.setGravity(17);
                        linearLayout5.setPadding(acProgramEditActivity.s(16), 0, 0, 0);
                        TextView textView2 = new TextView(acProgramEditActivity);
                        textView2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_sec));
                        textView2.setGravity(17);
                        linearLayout5.addView(textView2);
                        linearLayout5.addView(numberPicker4);
                        linearLayout3.addView(linearLayout5);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_wait_title).setView(linearLayout3).setPositiveButton(R.string.k_ac_edit_dialog_add, new e(numberPicker3, numberPicker4, acProgramEditActivity, i10)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 3:
                        int i14 = AcProgramEditActivity.f760z;
                        RadioGroup radioGroup = new RadioGroup(acProgramEditActivity);
                        radioGroup.setOrientation(1);
                        RadioButton radioButton = new RadioButton(acProgramEditActivity);
                        radioButton.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_internal));
                        radioButton.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton.setTextSize(16.0f);
                        radioButton.setChecked(true);
                        RadioButton radioButton2 = new RadioButton(acProgramEditActivity);
                        radioButton2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_external));
                        radioButton2.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton2.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton2.setTextSize(16.0f);
                        radioGroup.addView(radioButton);
                        radioGroup.addView(radioButton2);
                        LinearLayout linearLayout6 = new LinearLayout(acProgramEditActivity);
                        linearLayout6.setOrientation(1);
                        linearLayout6.setPadding(acProgramEditActivity.s(24), acProgramEditActivity.s(12), acProgramEditActivity.s(24), acProgramEditActivity.s(8));
                        linearLayout6.addView(radioGroup);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_recirc_title).setView(linearLayout6).setPositiveButton(R.string.k_ac_edit_dialog_add, new g(acProgramEditActivity, i10, radioButton)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 4:
                        int i15 = AcProgramEditActivity.f760z;
                        acProgramEditActivity.finish();
                        return;
                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                        int i16 = AcProgramEditActivity.f760z;
                        new AlertDialog.Builder(acProgramEditActivity).setMessage(R.string.k_ac_edit_confirm_delete).setPositiveButton(R.string.k_ac_edit_delete, new h(i10, acProgramEditActivity)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case MusicClient.TYPE_GESTURE /* 6 */:
                        ArrayList arrayList = acProgramEditActivity.f762u;
                        if (arrayList.isEmpty()) {
                            Toast.makeText(acProgramEditActivity, acProgramEditActivity.getString(R.string.k_ac_edit_need_step), 0).show();
                            return;
                        }
                        int i17 = acProgramEditActivity.f761t;
                        ArrayList arrayListN0 = y1.g.n0(arrayList);
                        MasterToggleView masterToggleView3 = acProgramEditActivity.f765x;
                        if (masterToggleView3 == null) {
                            i2.g.h("switchRepeat");
                            throw null;
                        }
                        boolean active = masterToggleView3.getActive();
                        MasterToggleView masterToggleView4 = acProgramEditActivity.f766y;
                        if (masterToggleView4 == null) {
                            i2.g.h("switchRestore");
                            throw null;
                        }
                        boolean active2 = masterToggleView4.getActive();
                        JSONObject jSONObject = new JSONObject();
                        JSONArray jSONArray = new JSONArray();
                        int size = arrayListN0.size();
                        int i18 = 0;
                        while (i18 < size) {
                            Object obj = arrayListN0.get(i18);
                            i18++;
                            l lVar = (l) obj;
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("type", lVar.f3815a);
                            jSONObject2.put("value", lVar.b);
                            jSONArray.put(jSONObject2);
                        }
                        jSONObject.put("steps", jSONArray);
                        jSONObject.put("repeat", active);
                        jSONObject.put("restaurarAnterior", active2);
                        acProgramEditActivity.getSharedPreferences("ac_programs_prefs", 0).edit().putString("program_" + i17, jSONObject.toString()).apply();
                        acProgramEditActivity.finish();
                        return;
                    case PlaybackState.STATE_ERROR /* 7 */:
                        MasterToggleView masterToggleView5 = acProgramEditActivity.f765x;
                        if (masterToggleView5 != null) {
                            masterToggleView5.setActive(!masterToggleView5.getActive());
                            return;
                        } else {
                            i2.g.h("switchRepeat");
                            throw null;
                        }
                    default:
                        MasterToggleView masterToggleView6 = acProgramEditActivity.f766y;
                        if (masterToggleView6 != null) {
                            masterToggleView6.setActive(!masterToggleView6.getActive());
                            return;
                        } else {
                            i2.g.h("switchRestore");
                            throw null;
                        }
                }
            }
        });
        final int i8 = 5;
        findViewById(R.id.btnAcEditDelete).setOnClickListener(new View.OnClickListener(this) { // from class: w0.d
            public final /* synthetic */ AcProgramEditActivity b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws JSONException {
                int i9 = i8;
                final int i10 = 1;
                final int i11 = 0;
                final AcProgramEditActivity acProgramEditActivity = this.b;
                switch (i9) {
                    case 0:
                        int i12 = AcProgramEditActivity.f760z;
                        final NumberPicker numberPicker = new NumberPicker(acProgramEditActivity);
                        numberPicker.setMinValue(17);
                        numberPicker.setMaxValue(32);
                        numberPicker.setValue(22);
                        LinearLayout linearLayout = new LinearLayout(acProgramEditActivity);
                        linearLayout.setGravity(17);
                        linearLayout.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout.addView(numberPicker);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_temp_title).setView(linearLayout).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: w0.f
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i13) {
                                switch (i11) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f762u.add(new l("temp", numberPicker.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f762u.add(new l("fan", numberPicker.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 1:
                        int i13 = AcProgramEditActivity.f760z;
                        final NumberPicker numberPicker2 = new NumberPicker(acProgramEditActivity);
                        numberPicker2.setMinValue(0);
                        numberPicker2.setMaxValue(7);
                        numberPicker2.setValue(3);
                        LinearLayout linearLayout2 = new LinearLayout(acProgramEditActivity);
                        linearLayout2.setGravity(17);
                        linearLayout2.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout2.addView(numberPicker2);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_fan_title).setView(linearLayout2).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: w0.f
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i14) {
                                switch (i10) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f762u.add(new l("temp", numberPicker2.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f762u.add(new l("fan", numberPicker2.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 2:
                        int i14 = AcProgramEditActivity.f760z;
                        NumberPicker numberPicker3 = new NumberPicker(acProgramEditActivity);
                        numberPicker3.setMinValue(0);
                        numberPicker3.setMaxValue(30);
                        numberPicker3.setValue(1);
                        NumberPicker numberPicker4 = new NumberPicker(acProgramEditActivity);
                        numberPicker4.setMinValue(0);
                        numberPicker4.setMaxValue(59);
                        numberPicker4.setValue(0);
                        LinearLayout linearLayout3 = new LinearLayout(acProgramEditActivity);
                        linearLayout3.setOrientation(0);
                        linearLayout3.setGravity(17);
                        linearLayout3.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        LinearLayout linearLayout4 = new LinearLayout(acProgramEditActivity);
                        linearLayout4.setOrientation(1);
                        linearLayout4.setGravity(17);
                        TextView textView = new TextView(acProgramEditActivity);
                        textView.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_min));
                        textView.setGravity(17);
                        linearLayout4.addView(textView);
                        linearLayout4.addView(numberPicker3);
                        linearLayout3.addView(linearLayout4);
                        LinearLayout linearLayout5 = new LinearLayout(acProgramEditActivity);
                        linearLayout5.setOrientation(1);
                        linearLayout5.setGravity(17);
                        linearLayout5.setPadding(acProgramEditActivity.s(16), 0, 0, 0);
                        TextView textView2 = new TextView(acProgramEditActivity);
                        textView2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_sec));
                        textView2.setGravity(17);
                        linearLayout5.addView(textView2);
                        linearLayout5.addView(numberPicker4);
                        linearLayout3.addView(linearLayout5);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_wait_title).setView(linearLayout3).setPositiveButton(R.string.k_ac_edit_dialog_add, new e(numberPicker3, numberPicker4, acProgramEditActivity, i11)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 3:
                        int i15 = AcProgramEditActivity.f760z;
                        RadioGroup radioGroup = new RadioGroup(acProgramEditActivity);
                        radioGroup.setOrientation(1);
                        RadioButton radioButton = new RadioButton(acProgramEditActivity);
                        radioButton.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_internal));
                        radioButton.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton.setTextSize(16.0f);
                        radioButton.setChecked(true);
                        RadioButton radioButton2 = new RadioButton(acProgramEditActivity);
                        radioButton2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_external));
                        radioButton2.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton2.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton2.setTextSize(16.0f);
                        radioGroup.addView(radioButton);
                        radioGroup.addView(radioButton2);
                        LinearLayout linearLayout6 = new LinearLayout(acProgramEditActivity);
                        linearLayout6.setOrientation(1);
                        linearLayout6.setPadding(acProgramEditActivity.s(24), acProgramEditActivity.s(12), acProgramEditActivity.s(24), acProgramEditActivity.s(8));
                        linearLayout6.addView(radioGroup);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_recirc_title).setView(linearLayout6).setPositiveButton(R.string.k_ac_edit_dialog_add, new g(acProgramEditActivity, i11, radioButton)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 4:
                        int i16 = AcProgramEditActivity.f760z;
                        acProgramEditActivity.finish();
                        return;
                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                        int i17 = AcProgramEditActivity.f760z;
                        new AlertDialog.Builder(acProgramEditActivity).setMessage(R.string.k_ac_edit_confirm_delete).setPositiveButton(R.string.k_ac_edit_delete, new h(i11, acProgramEditActivity)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case MusicClient.TYPE_GESTURE /* 6 */:
                        ArrayList arrayList = acProgramEditActivity.f762u;
                        if (arrayList.isEmpty()) {
                            Toast.makeText(acProgramEditActivity, acProgramEditActivity.getString(R.string.k_ac_edit_need_step), 0).show();
                            return;
                        }
                        int i18 = acProgramEditActivity.f761t;
                        ArrayList arrayListN0 = y1.g.n0(arrayList);
                        MasterToggleView masterToggleView3 = acProgramEditActivity.f765x;
                        if (masterToggleView3 == null) {
                            i2.g.h("switchRepeat");
                            throw null;
                        }
                        boolean active = masterToggleView3.getActive();
                        MasterToggleView masterToggleView4 = acProgramEditActivity.f766y;
                        if (masterToggleView4 == null) {
                            i2.g.h("switchRestore");
                            throw null;
                        }
                        boolean active2 = masterToggleView4.getActive();
                        JSONObject jSONObject = new JSONObject();
                        JSONArray jSONArray = new JSONArray();
                        int size = arrayListN0.size();
                        int i19 = 0;
                        while (i19 < size) {
                            Object obj = arrayListN0.get(i19);
                            i19++;
                            l lVar = (l) obj;
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("type", lVar.f3815a);
                            jSONObject2.put("value", lVar.b);
                            jSONArray.put(jSONObject2);
                        }
                        jSONObject.put("steps", jSONArray);
                        jSONObject.put("repeat", active);
                        jSONObject.put("restaurarAnterior", active2);
                        acProgramEditActivity.getSharedPreferences("ac_programs_prefs", 0).edit().putString("program_" + i18, jSONObject.toString()).apply();
                        acProgramEditActivity.finish();
                        return;
                    case PlaybackState.STATE_ERROR /* 7 */:
                        MasterToggleView masterToggleView5 = acProgramEditActivity.f765x;
                        if (masterToggleView5 != null) {
                            masterToggleView5.setActive(!masterToggleView5.getActive());
                            return;
                        } else {
                            i2.g.h("switchRepeat");
                            throw null;
                        }
                    default:
                        MasterToggleView masterToggleView6 = acProgramEditActivity.f766y;
                        if (masterToggleView6 != null) {
                            masterToggleView6.setActive(!masterToggleView6.getActive());
                            return;
                        } else {
                            i2.g.h("switchRestore");
                            throw null;
                        }
                }
            }
        });
        final int i9 = 6;
        findViewById(R.id.btnAcEditSave).setOnClickListener(new View.OnClickListener(this) { // from class: w0.d
            public final /* synthetic */ AcProgramEditActivity b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws JSONException {
                int i10 = i9;
                final int i11 = 1;
                final int i12 = 0;
                final AcProgramEditActivity acProgramEditActivity = this.b;
                switch (i10) {
                    case 0:
                        int i13 = AcProgramEditActivity.f760z;
                        final NumberPicker numberPicker = new NumberPicker(acProgramEditActivity);
                        numberPicker.setMinValue(17);
                        numberPicker.setMaxValue(32);
                        numberPicker.setValue(22);
                        LinearLayout linearLayout = new LinearLayout(acProgramEditActivity);
                        linearLayout.setGravity(17);
                        linearLayout.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout.addView(numberPicker);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_temp_title).setView(linearLayout).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: w0.f
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i14) {
                                switch (i12) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f762u.add(new l("temp", numberPicker.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f762u.add(new l("fan", numberPicker.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 1:
                        int i14 = AcProgramEditActivity.f760z;
                        final NumberPicker numberPicker2 = new NumberPicker(acProgramEditActivity);
                        numberPicker2.setMinValue(0);
                        numberPicker2.setMaxValue(7);
                        numberPicker2.setValue(3);
                        LinearLayout linearLayout2 = new LinearLayout(acProgramEditActivity);
                        linearLayout2.setGravity(17);
                        linearLayout2.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout2.addView(numberPicker2);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_fan_title).setView(linearLayout2).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: w0.f
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i15) {
                                switch (i11) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f762u.add(new l("temp", numberPicker2.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f762u.add(new l("fan", numberPicker2.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 2:
                        int i15 = AcProgramEditActivity.f760z;
                        NumberPicker numberPicker3 = new NumberPicker(acProgramEditActivity);
                        numberPicker3.setMinValue(0);
                        numberPicker3.setMaxValue(30);
                        numberPicker3.setValue(1);
                        NumberPicker numberPicker4 = new NumberPicker(acProgramEditActivity);
                        numberPicker4.setMinValue(0);
                        numberPicker4.setMaxValue(59);
                        numberPicker4.setValue(0);
                        LinearLayout linearLayout3 = new LinearLayout(acProgramEditActivity);
                        linearLayout3.setOrientation(0);
                        linearLayout3.setGravity(17);
                        linearLayout3.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        LinearLayout linearLayout4 = new LinearLayout(acProgramEditActivity);
                        linearLayout4.setOrientation(1);
                        linearLayout4.setGravity(17);
                        TextView textView = new TextView(acProgramEditActivity);
                        textView.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_min));
                        textView.setGravity(17);
                        linearLayout4.addView(textView);
                        linearLayout4.addView(numberPicker3);
                        linearLayout3.addView(linearLayout4);
                        LinearLayout linearLayout5 = new LinearLayout(acProgramEditActivity);
                        linearLayout5.setOrientation(1);
                        linearLayout5.setGravity(17);
                        linearLayout5.setPadding(acProgramEditActivity.s(16), 0, 0, 0);
                        TextView textView2 = new TextView(acProgramEditActivity);
                        textView2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_sec));
                        textView2.setGravity(17);
                        linearLayout5.addView(textView2);
                        linearLayout5.addView(numberPicker4);
                        linearLayout3.addView(linearLayout5);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_wait_title).setView(linearLayout3).setPositiveButton(R.string.k_ac_edit_dialog_add, new e(numberPicker3, numberPicker4, acProgramEditActivity, i12)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 3:
                        int i16 = AcProgramEditActivity.f760z;
                        RadioGroup radioGroup = new RadioGroup(acProgramEditActivity);
                        radioGroup.setOrientation(1);
                        RadioButton radioButton = new RadioButton(acProgramEditActivity);
                        radioButton.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_internal));
                        radioButton.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton.setTextSize(16.0f);
                        radioButton.setChecked(true);
                        RadioButton radioButton2 = new RadioButton(acProgramEditActivity);
                        radioButton2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_external));
                        radioButton2.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton2.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton2.setTextSize(16.0f);
                        radioGroup.addView(radioButton);
                        radioGroup.addView(radioButton2);
                        LinearLayout linearLayout6 = new LinearLayout(acProgramEditActivity);
                        linearLayout6.setOrientation(1);
                        linearLayout6.setPadding(acProgramEditActivity.s(24), acProgramEditActivity.s(12), acProgramEditActivity.s(24), acProgramEditActivity.s(8));
                        linearLayout6.addView(radioGroup);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_recirc_title).setView(linearLayout6).setPositiveButton(R.string.k_ac_edit_dialog_add, new g(acProgramEditActivity, i12, radioButton)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 4:
                        int i17 = AcProgramEditActivity.f760z;
                        acProgramEditActivity.finish();
                        return;
                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                        int i18 = AcProgramEditActivity.f760z;
                        new AlertDialog.Builder(acProgramEditActivity).setMessage(R.string.k_ac_edit_confirm_delete).setPositiveButton(R.string.k_ac_edit_delete, new h(i12, acProgramEditActivity)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case MusicClient.TYPE_GESTURE /* 6 */:
                        ArrayList arrayList = acProgramEditActivity.f762u;
                        if (arrayList.isEmpty()) {
                            Toast.makeText(acProgramEditActivity, acProgramEditActivity.getString(R.string.k_ac_edit_need_step), 0).show();
                            return;
                        }
                        int i19 = acProgramEditActivity.f761t;
                        ArrayList arrayListN0 = y1.g.n0(arrayList);
                        MasterToggleView masterToggleView3 = acProgramEditActivity.f765x;
                        if (masterToggleView3 == null) {
                            i2.g.h("switchRepeat");
                            throw null;
                        }
                        boolean active = masterToggleView3.getActive();
                        MasterToggleView masterToggleView4 = acProgramEditActivity.f766y;
                        if (masterToggleView4 == null) {
                            i2.g.h("switchRestore");
                            throw null;
                        }
                        boolean active2 = masterToggleView4.getActive();
                        JSONObject jSONObject = new JSONObject();
                        JSONArray jSONArray = new JSONArray();
                        int size = arrayListN0.size();
                        int i110 = 0;
                        while (i110 < size) {
                            Object obj = arrayListN0.get(i110);
                            i110++;
                            l lVar = (l) obj;
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("type", lVar.f3815a);
                            jSONObject2.put("value", lVar.b);
                            jSONArray.put(jSONObject2);
                        }
                        jSONObject.put("steps", jSONArray);
                        jSONObject.put("repeat", active);
                        jSONObject.put("restaurarAnterior", active2);
                        acProgramEditActivity.getSharedPreferences("ac_programs_prefs", 0).edit().putString("program_" + i19, jSONObject.toString()).apply();
                        acProgramEditActivity.finish();
                        return;
                    case PlaybackState.STATE_ERROR /* 7 */:
                        MasterToggleView masterToggleView5 = acProgramEditActivity.f765x;
                        if (masterToggleView5 != null) {
                            masterToggleView5.setActive(!masterToggleView5.getActive());
                            return;
                        } else {
                            i2.g.h("switchRepeat");
                            throw null;
                        }
                    default:
                        MasterToggleView masterToggleView6 = acProgramEditActivity.f766y;
                        if (masterToggleView6 != null) {
                            masterToggleView6.setActive(!masterToggleView6.getActive());
                            return;
                        } else {
                            i2.g.h("switchRestore");
                            throw null;
                        }
                }
            }
        });
        final int i10 = 7;
        findViewById(R.id.rowAcRepeat).setOnClickListener(new View.OnClickListener(this) { // from class: w0.d
            public final /* synthetic */ AcProgramEditActivity b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws JSONException {
                int i11 = i10;
                final int i12 = 1;
                final int i13 = 0;
                final AcProgramEditActivity acProgramEditActivity = this.b;
                switch (i11) {
                    case 0:
                        int i14 = AcProgramEditActivity.f760z;
                        final NumberPicker numberPicker = new NumberPicker(acProgramEditActivity);
                        numberPicker.setMinValue(17);
                        numberPicker.setMaxValue(32);
                        numberPicker.setValue(22);
                        LinearLayout linearLayout = new LinearLayout(acProgramEditActivity);
                        linearLayout.setGravity(17);
                        linearLayout.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout.addView(numberPicker);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_temp_title).setView(linearLayout).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: w0.f
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i15) {
                                switch (i13) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f762u.add(new l("temp", numberPicker.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f762u.add(new l("fan", numberPicker.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 1:
                        int i15 = AcProgramEditActivity.f760z;
                        final NumberPicker numberPicker2 = new NumberPicker(acProgramEditActivity);
                        numberPicker2.setMinValue(0);
                        numberPicker2.setMaxValue(7);
                        numberPicker2.setValue(3);
                        LinearLayout linearLayout2 = new LinearLayout(acProgramEditActivity);
                        linearLayout2.setGravity(17);
                        linearLayout2.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout2.addView(numberPicker2);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_fan_title).setView(linearLayout2).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: w0.f
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i16) {
                                switch (i12) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f762u.add(new l("temp", numberPicker2.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f762u.add(new l("fan", numberPicker2.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 2:
                        int i16 = AcProgramEditActivity.f760z;
                        NumberPicker numberPicker3 = new NumberPicker(acProgramEditActivity);
                        numberPicker3.setMinValue(0);
                        numberPicker3.setMaxValue(30);
                        numberPicker3.setValue(1);
                        NumberPicker numberPicker4 = new NumberPicker(acProgramEditActivity);
                        numberPicker4.setMinValue(0);
                        numberPicker4.setMaxValue(59);
                        numberPicker4.setValue(0);
                        LinearLayout linearLayout3 = new LinearLayout(acProgramEditActivity);
                        linearLayout3.setOrientation(0);
                        linearLayout3.setGravity(17);
                        linearLayout3.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        LinearLayout linearLayout4 = new LinearLayout(acProgramEditActivity);
                        linearLayout4.setOrientation(1);
                        linearLayout4.setGravity(17);
                        TextView textView = new TextView(acProgramEditActivity);
                        textView.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_min));
                        textView.setGravity(17);
                        linearLayout4.addView(textView);
                        linearLayout4.addView(numberPicker3);
                        linearLayout3.addView(linearLayout4);
                        LinearLayout linearLayout5 = new LinearLayout(acProgramEditActivity);
                        linearLayout5.setOrientation(1);
                        linearLayout5.setGravity(17);
                        linearLayout5.setPadding(acProgramEditActivity.s(16), 0, 0, 0);
                        TextView textView2 = new TextView(acProgramEditActivity);
                        textView2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_sec));
                        textView2.setGravity(17);
                        linearLayout5.addView(textView2);
                        linearLayout5.addView(numberPicker4);
                        linearLayout3.addView(linearLayout5);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_wait_title).setView(linearLayout3).setPositiveButton(R.string.k_ac_edit_dialog_add, new e(numberPicker3, numberPicker4, acProgramEditActivity, i13)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 3:
                        int i17 = AcProgramEditActivity.f760z;
                        RadioGroup radioGroup = new RadioGroup(acProgramEditActivity);
                        radioGroup.setOrientation(1);
                        RadioButton radioButton = new RadioButton(acProgramEditActivity);
                        radioButton.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_internal));
                        radioButton.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton.setTextSize(16.0f);
                        radioButton.setChecked(true);
                        RadioButton radioButton2 = new RadioButton(acProgramEditActivity);
                        radioButton2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_external));
                        radioButton2.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton2.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton2.setTextSize(16.0f);
                        radioGroup.addView(radioButton);
                        radioGroup.addView(radioButton2);
                        LinearLayout linearLayout6 = new LinearLayout(acProgramEditActivity);
                        linearLayout6.setOrientation(1);
                        linearLayout6.setPadding(acProgramEditActivity.s(24), acProgramEditActivity.s(12), acProgramEditActivity.s(24), acProgramEditActivity.s(8));
                        linearLayout6.addView(radioGroup);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_recirc_title).setView(linearLayout6).setPositiveButton(R.string.k_ac_edit_dialog_add, new g(acProgramEditActivity, i13, radioButton)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 4:
                        int i18 = AcProgramEditActivity.f760z;
                        acProgramEditActivity.finish();
                        return;
                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                        int i19 = AcProgramEditActivity.f760z;
                        new AlertDialog.Builder(acProgramEditActivity).setMessage(R.string.k_ac_edit_confirm_delete).setPositiveButton(R.string.k_ac_edit_delete, new h(i13, acProgramEditActivity)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case MusicClient.TYPE_GESTURE /* 6 */:
                        ArrayList arrayList = acProgramEditActivity.f762u;
                        if (arrayList.isEmpty()) {
                            Toast.makeText(acProgramEditActivity, acProgramEditActivity.getString(R.string.k_ac_edit_need_step), 0).show();
                            return;
                        }
                        int i110 = acProgramEditActivity.f761t;
                        ArrayList arrayListN0 = y1.g.n0(arrayList);
                        MasterToggleView masterToggleView3 = acProgramEditActivity.f765x;
                        if (masterToggleView3 == null) {
                            i2.g.h("switchRepeat");
                            throw null;
                        }
                        boolean active = masterToggleView3.getActive();
                        MasterToggleView masterToggleView4 = acProgramEditActivity.f766y;
                        if (masterToggleView4 == null) {
                            i2.g.h("switchRestore");
                            throw null;
                        }
                        boolean active2 = masterToggleView4.getActive();
                        JSONObject jSONObject = new JSONObject();
                        JSONArray jSONArray = new JSONArray();
                        int size = arrayListN0.size();
                        int i111 = 0;
                        while (i111 < size) {
                            Object obj = arrayListN0.get(i111);
                            i111++;
                            l lVar = (l) obj;
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("type", lVar.f3815a);
                            jSONObject2.put("value", lVar.b);
                            jSONArray.put(jSONObject2);
                        }
                        jSONObject.put("steps", jSONArray);
                        jSONObject.put("repeat", active);
                        jSONObject.put("restaurarAnterior", active2);
                        acProgramEditActivity.getSharedPreferences("ac_programs_prefs", 0).edit().putString("program_" + i110, jSONObject.toString()).apply();
                        acProgramEditActivity.finish();
                        return;
                    case PlaybackState.STATE_ERROR /* 7 */:
                        MasterToggleView masterToggleView5 = acProgramEditActivity.f765x;
                        if (masterToggleView5 != null) {
                            masterToggleView5.setActive(!masterToggleView5.getActive());
                            return;
                        } else {
                            i2.g.h("switchRepeat");
                            throw null;
                        }
                    default:
                        MasterToggleView masterToggleView6 = acProgramEditActivity.f766y;
                        if (masterToggleView6 != null) {
                            masterToggleView6.setActive(!masterToggleView6.getActive());
                            return;
                        } else {
                            i2.g.h("switchRestore");
                            throw null;
                        }
                }
            }
        });
        final int i11 = 8;
        findViewById(R.id.rowAcRestore).setOnClickListener(new View.OnClickListener(this) { // from class: w0.d
            public final /* synthetic */ AcProgramEditActivity b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws JSONException {
                int i12 = i11;
                final int i13 = 1;
                final int i14 = 0;
                final AcProgramEditActivity acProgramEditActivity = this.b;
                switch (i12) {
                    case 0:
                        int i15 = AcProgramEditActivity.f760z;
                        final NumberPicker numberPicker = new NumberPicker(acProgramEditActivity);
                        numberPicker.setMinValue(17);
                        numberPicker.setMaxValue(32);
                        numberPicker.setValue(22);
                        LinearLayout linearLayout = new LinearLayout(acProgramEditActivity);
                        linearLayout.setGravity(17);
                        linearLayout.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout.addView(numberPicker);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_temp_title).setView(linearLayout).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: w0.f
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i16) {
                                switch (i14) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f762u.add(new l("temp", numberPicker.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f762u.add(new l("fan", numberPicker.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 1:
                        int i16 = AcProgramEditActivity.f760z;
                        final NumberPicker numberPicker2 = new NumberPicker(acProgramEditActivity);
                        numberPicker2.setMinValue(0);
                        numberPicker2.setMaxValue(7);
                        numberPicker2.setValue(3);
                        LinearLayout linearLayout2 = new LinearLayout(acProgramEditActivity);
                        linearLayout2.setGravity(17);
                        linearLayout2.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        linearLayout2.addView(numberPicker2);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_fan_title).setView(linearLayout2).setPositiveButton(R.string.k_ac_edit_dialog_add, new DialogInterface.OnClickListener() { // from class: w0.f
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i17) {
                                switch (i13) {
                                    case 0:
                                        AcProgramEditActivity acProgramEditActivity2 = acProgramEditActivity;
                                        acProgramEditActivity2.f762u.add(new l("temp", numberPicker2.getValue()));
                                        acProgramEditActivity2.t();
                                        break;
                                    default:
                                        AcProgramEditActivity acProgramEditActivity3 = acProgramEditActivity;
                                        acProgramEditActivity3.f762u.add(new l("fan", numberPicker2.getValue()));
                                        acProgramEditActivity3.t();
                                        break;
                                }
                            }
                        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 2:
                        int i17 = AcProgramEditActivity.f760z;
                        NumberPicker numberPicker3 = new NumberPicker(acProgramEditActivity);
                        numberPicker3.setMinValue(0);
                        numberPicker3.setMaxValue(30);
                        numberPicker3.setValue(1);
                        NumberPicker numberPicker4 = new NumberPicker(acProgramEditActivity);
                        numberPicker4.setMinValue(0);
                        numberPicker4.setMaxValue(59);
                        numberPicker4.setValue(0);
                        LinearLayout linearLayout3 = new LinearLayout(acProgramEditActivity);
                        linearLayout3.setOrientation(0);
                        linearLayout3.setGravity(17);
                        linearLayout3.setPadding(acProgramEditActivity.s(16), acProgramEditActivity.s(8), acProgramEditActivity.s(16), acProgramEditActivity.s(8));
                        LinearLayout linearLayout4 = new LinearLayout(acProgramEditActivity);
                        linearLayout4.setOrientation(1);
                        linearLayout4.setGravity(17);
                        TextView textView = new TextView(acProgramEditActivity);
                        textView.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_min));
                        textView.setGravity(17);
                        linearLayout4.addView(textView);
                        linearLayout4.addView(numberPicker3);
                        linearLayout3.addView(linearLayout4);
                        LinearLayout linearLayout5 = new LinearLayout(acProgramEditActivity);
                        linearLayout5.setOrientation(1);
                        linearLayout5.setGravity(17);
                        linearLayout5.setPadding(acProgramEditActivity.s(16), 0, 0, 0);
                        TextView textView2 = new TextView(acProgramEditActivity);
                        textView2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_dialog_wait_sec));
                        textView2.setGravity(17);
                        linearLayout5.addView(textView2);
                        linearLayout5.addView(numberPicker4);
                        linearLayout3.addView(linearLayout5);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_wait_title).setView(linearLayout3).setPositiveButton(R.string.k_ac_edit_dialog_add, new e(numberPicker3, numberPicker4, acProgramEditActivity, i14)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 3:
                        int i18 = AcProgramEditActivity.f760z;
                        RadioGroup radioGroup = new RadioGroup(acProgramEditActivity);
                        radioGroup.setOrientation(1);
                        RadioButton radioButton = new RadioButton(acProgramEditActivity);
                        radioButton.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_internal));
                        radioButton.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton.setTextSize(16.0f);
                        radioButton.setChecked(true);
                        RadioButton radioButton2 = new RadioButton(acProgramEditActivity);
                        radioButton2.setText(acProgramEditActivity.getString(R.string.k_ac_edit_recirc_external));
                        radioButton2.setTextColor(acProgramEditActivity.getColor(R.color.cx_text_primary));
                        radioButton2.setButtonTintList(ColorStateList.valueOf(acProgramEditActivity.getColor(R.color.cx_accent)));
                        radioButton2.setTextSize(16.0f);
                        radioGroup.addView(radioButton);
                        radioGroup.addView(radioButton2);
                        LinearLayout linearLayout6 = new LinearLayout(acProgramEditActivity);
                        linearLayout6.setOrientation(1);
                        linearLayout6.setPadding(acProgramEditActivity.s(24), acProgramEditActivity.s(12), acProgramEditActivity.s(24), acProgramEditActivity.s(8));
                        linearLayout6.addView(radioGroup);
                        new AlertDialog.Builder(acProgramEditActivity).setTitle(R.string.k_ac_edit_dialog_recirc_title).setView(linearLayout6).setPositiveButton(R.string.k_ac_edit_dialog_add, new g(acProgramEditActivity, i14, radioButton)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case 4:
                        int i19 = AcProgramEditActivity.f760z;
                        acProgramEditActivity.finish();
                        return;
                    case MusicClient.TYPE_MEDIA_INNER /* 5 */:
                        int i110 = AcProgramEditActivity.f760z;
                        new AlertDialog.Builder(acProgramEditActivity).setMessage(R.string.k_ac_edit_confirm_delete).setPositiveButton(R.string.k_ac_edit_delete, new h(i14, acProgramEditActivity)).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
                        return;
                    case MusicClient.TYPE_GESTURE /* 6 */:
                        ArrayList arrayList = acProgramEditActivity.f762u;
                        if (arrayList.isEmpty()) {
                            Toast.makeText(acProgramEditActivity, acProgramEditActivity.getString(R.string.k_ac_edit_need_step), 0).show();
                            return;
                        }
                        int i111 = acProgramEditActivity.f761t;
                        ArrayList arrayListN0 = y1.g.n0(arrayList);
                        MasterToggleView masterToggleView3 = acProgramEditActivity.f765x;
                        if (masterToggleView3 == null) {
                            i2.g.h("switchRepeat");
                            throw null;
                        }
                        boolean active = masterToggleView3.getActive();
                        MasterToggleView masterToggleView4 = acProgramEditActivity.f766y;
                        if (masterToggleView4 == null) {
                            i2.g.h("switchRestore");
                            throw null;
                        }
                        boolean active2 = masterToggleView4.getActive();
                        JSONObject jSONObject = new JSONObject();
                        JSONArray jSONArray = new JSONArray();
                        int size = arrayListN0.size();
                        int i112 = 0;
                        while (i112 < size) {
                            Object obj = arrayListN0.get(i112);
                            i112++;
                            l lVar = (l) obj;
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("type", lVar.f3815a);
                            jSONObject2.put("value", lVar.b);
                            jSONArray.put(jSONObject2);
                        }
                        jSONObject.put("steps", jSONArray);
                        jSONObject.put("repeat", active);
                        jSONObject.put("restaurarAnterior", active2);
                        acProgramEditActivity.getSharedPreferences("ac_programs_prefs", 0).edit().putString("program_" + i111, jSONObject.toString()).apply();
                        acProgramEditActivity.finish();
                        return;
                    case PlaybackState.STATE_ERROR /* 7 */:
                        MasterToggleView masterToggleView5 = acProgramEditActivity.f765x;
                        if (masterToggleView5 != null) {
                            masterToggleView5.setActive(!masterToggleView5.getActive());
                            return;
                        } else {
                            i2.g.h("switchRepeat");
                            throw null;
                        }
                    default:
                        MasterToggleView masterToggleView6 = acProgramEditActivity.f766y;
                        if (masterToggleView6 != null) {
                            masterToggleView6.setActive(!masterToggleView6.getActive());
                            return;
                        } else {
                            i2.g.h("switchRestore");
                            throw null;
                        }
                }
            }
        });
        t();
    }

    public final int s(int i3) {
        return (int) (i3 * getResources().getDisplayMetrics().density);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:42:0x0139  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void t() {
        String string;
        String string2;
        LinearLayout linearLayout = this.f763v;
        if (linearLayout == null) {
            g.h("container");
            throw null;
        }
        linearLayout.removeAllViews();
        TextView textView = this.f764w;
        if (textView == null) {
            g.h("emptyHint");
            throw null;
        }
        ArrayList arrayList = this.f762u;
        int i3 = 0;
        textView.setVisibility(arrayList.isEmpty() ? 0 : 8);
        int size = arrayList.size();
        int i4 = 0;
        while (i4 < size) {
            LinearLayout linearLayout2 = this.f763v;
            if (linearLayout2 == null) {
                g.h("container");
                throw null;
            }
            l lVar = (l) arrayList.get(i4);
            LinearLayout linearLayout3 = new LinearLayout(this);
            linearLayout3.setOrientation(i3);
            linearLayout3.setGravity(16);
            linearLayout3.setBackgroundResource(R.drawable.bg_master_inner_card);
            linearLayout3.setPadding(s(18), s(10), s(12), s(10));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, s(64));
            layoutParams.topMargin = i4 == 0 ? i3 : s(10);
            linearLayout3.setLayoutParams(layoutParams);
            TextView textView2 = new TextView(this);
            StringBuilder sb = new StringBuilder();
            int i5 = i4 + 1;
            sb.append(i5);
            sb.append(". ");
            String str = lVar.f3815a;
            double d3 = lVar.b;
            switch (str.hashCode()) {
                case -934914614:
                    if (!str.equals("recirc")) {
                        string = "?";
                    } else {
                        string = getString(R.string.k_ac_edit_step_recirc, getString(d3 == 1.0d ? R.string.k_ac_edit_recirc_internal_short : R.string.k_ac_edit_recirc_external_short));
                        g.d(string, "getString(...)");
                    }
                    break;
                case 101139:
                    if (!str.equals("fan")) {
                        string = "?";
                    } else {
                        string = getString(R.string.k_ac_edit_step_fan, Integer.valueOf((int) d3));
                        g.d(string, "getString(...)");
                    }
                    break;
                case 3556308:
                    if (!str.equals("temp")) {
                        string = "?";
                    } else {
                        string = getString(R.string.k_ac_edit_step_temp, Integer.valueOf((int) d3));
                        g.d(string, "getString(...)");
                    }
                    break;
                case 3641717:
                    if (!str.equals("wait")) {
                        string = "?";
                    } else {
                        int i6 = (int) d3;
                        int i7 = i6 / 60;
                        int i8 = i6 % 60;
                        if (i7 > 0 && i8 > 0) {
                            string2 = i7 + "min" + i8 + 's';
                        } else if (i7 > 0) {
                            string2 = i7 + "min";
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(i8);
                            sb2.append('s');
                            string2 = sb2.toString();
                        }
                        string = getString(R.string.k_ac_edit_step_wait, string2);
                        g.d(string, "getString(...)");
                    }
                    break;
                default:
                    string = "?";
                    break;
            }
            sb.append(string);
            textView2.setText(sb.toString());
            textView2.setTextColor(getColor(R.color.master_text));
            textView2.setTextSize(18.0f);
            textView2.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
            linearLayout3.addView(textView2);
            TextView textView3 = new TextView(this);
            textView3.setText("×");
            textView3.setTextColor(getColor(R.color.cx_danger));
            textView3.setBackgroundResource(R.drawable.bg_master_restart);
            textView3.setGravity(17);
            textView3.setTextSize(25.0f);
            textView3.setClickable(true);
            textView3.setFocusable(true);
            textView3.setLayoutParams(new LinearLayout.LayoutParams(s(48), s(44)));
            textView3.setOnClickListener(new n(this, i4, 1));
            linearLayout3.addView(textView3);
            linearLayout2.addView(linearLayout3);
            i3 = 0;
            i4 = i5;
        }
    }
}
