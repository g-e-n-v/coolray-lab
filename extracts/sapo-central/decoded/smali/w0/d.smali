.class public final synthetic Lw0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/ex/auto/AcProgramEditActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ex/auto/AcProgramEditActivity;I)V
    .locals 0

    iput p2, p0, Lw0/d;->a:I

    iput-object p1, p0, Lw0/d;->b:Lcom/ex/auto/AcProgramEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    iget p1, p0, Lw0/d;->a:I

    const-string v0, "switchRepeat"

    const-string v1, "switchRestore"

    const/16 v2, 0x10

    const/16 v3, 0x11

    const v4, 0x7f0f005d

    const/16 v5, 0x8

    const/high16 v6, 0x1040000

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lw0/d;->b:Lcom/ex/auto/AcProgramEditActivity;

    packed-switch p1, :pswitch_data_0

    iget-object p1, v10, Lcom/ex/auto/AcProgramEditActivity;->y:Lcom/ex/auto/MasterToggleView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ex/auto/MasterToggleView;->getActive()Z

    move-result v0

    xor-int/2addr v0, v7

    invoke-virtual {p1, v0}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    return-void

    :cond_0
    invoke-static {v1}, Li2/g;->h(Ljava/lang/String;)V

    throw v9

    :pswitch_0
    iget-object p1, v10, Lcom/ex/auto/AcProgramEditActivity;->x:Lcom/ex/auto/MasterToggleView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ex/auto/MasterToggleView;->getActive()Z

    move-result v0

    xor-int/2addr v0, v7

    invoke-virtual {p1, v0}, Lcom/ex/auto/MasterToggleView;->setActive(Z)V

    return-void

    :cond_1
    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v9

    :pswitch_1
    iget-object p1, v10, Lcom/ex/auto/AcProgramEditActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const p1, 0x7f0f0065

    invoke-virtual {v10, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_2
    iget v2, v10, Lcom/ex/auto/AcProgramEditActivity;->t:I

    invoke-static {p1}, Ly1/g;->n0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v3, v10, Lcom/ex/auto/AcProgramEditActivity;->x:Lcom/ex/auto/MasterToggleView;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/ex/auto/MasterToggleView;->getActive()Z

    move-result v0

    iget-object v3, v10, Lcom/ex/auto/AcProgramEditActivity;->y:Lcom/ex/auto/MasterToggleView;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/ex/auto/MasterToggleView;->getActive()Z

    move-result v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v8

    :goto_0
    if-ge v6, v5, :cond_3

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lw0/l;

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "type"

    iget-object v12, v7, Lw0/l;->a:Ljava/lang/String;

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "value"

    iget-wide v12, v7, Lw0/l;->b:D

    invoke-virtual {v9, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    const-string p1, "steps"

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "repeat"

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "restaurarAnterior"

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "ac_programs_prefs"

    invoke-virtual {v10, p1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "program_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :cond_4
    invoke-static {v1}, Li2/g;->h(Ljava/lang/String;)V

    throw v9

    :cond_5
    invoke-static {v0}, Li2/g;->h(Ljava/lang/String;)V

    throw v9

    :pswitch_2
    sget p1, Lcom/ex/auto/AcProgramEditActivity;->z:I

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f005b

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lw0/h;

    invoke-direct {v0, v8, v10}, Lw0/h;-><init>(ILjava/lang/Object;)V

    const v1, 0x7f0f005c

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v6, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :pswitch_3
    sget p1, Lcom/ex/auto/AcProgramEditActivity;->z:I

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_4
    sget p1, Lcom/ex/auto/AcProgramEditActivity;->z:I

    new-instance p1, Landroid/widget/RadioGroup;

    invoke-direct {p1, v10}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, v10}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0068

    invoke-virtual {v10, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f050041

    invoke-virtual {v10, v1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f05002e

    invoke-virtual {v10, v2}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v11, Landroid/widget/RadioButton;

    invoke-direct {v11, v10}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0f0066

    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x18

    invoke-virtual {v10, v2}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v3

    const/16 v7, 0xc

    invoke-virtual {v10, v7}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v7

    invoke-virtual {v10, v2}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v2

    invoke-virtual {v10, v5}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v5

    invoke-virtual {v1, v3, v7, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f005f

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lw0/g;

    invoke-direct {v1, v10, v8, v0}, Lw0/g;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p1, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v6, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :pswitch_5
    sget p1, Lcom/ex/auto/AcProgramEditActivity;->z:I

    new-instance p1, Landroid/widget/NumberPicker;

    invoke-direct {p1, v10}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v8}, Landroid/widget/NumberPicker;->setMinValue(I)V

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    invoke-virtual {p1, v7}, Landroid/widget/NumberPicker;->setValue(I)V

    new-instance v0, Landroid/widget/NumberPicker;

    invoke-direct {v0, v10}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Landroid/widget/NumberPicker;->setMinValue(I)V

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    invoke-virtual {v0, v8}, Landroid/widget/NumberPicker;->setValue(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v10, v2}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v11

    invoke-virtual {v10, v5}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v12

    invoke-virtual {v10, v2}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v13

    invoke-virtual {v10, v5}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v5

    invoke-virtual {v1, v11, v12, v13, v5}, Landroid/view/View;->setPadding(IIII)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0f0061

    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v10, v2}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v2

    invoke-virtual {v5, v2, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0f0062

    invoke-virtual {v10, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0063

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lw0/e;

    invoke-direct {v2, p1, v0, v10, v8}, Lw0/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v6, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :pswitch_6
    sget p1, Lcom/ex/auto/AcProgramEditActivity;->z:I

    new-instance p1, Landroid/widget/NumberPicker;

    invoke-direct {p1, v10}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v8}, Landroid/widget/NumberPicker;->setMinValue(I)V

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v10, v2}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v1

    invoke-virtual {v10, v5}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v3

    invoke-virtual {v10, v2}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v2

    invoke-virtual {v10, v5}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v5

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f005e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lw0/f;

    invoke-direct {v1, v10, p1, v7}, Lw0/f;-><init>(Lcom/ex/auto/AcProgramEditActivity;Landroid/widget/NumberPicker;I)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v6, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :pswitch_7
    sget p1, Lcom/ex/auto/AcProgramEditActivity;->z:I

    new-instance p1, Landroid/widget/NumberPicker;

    invoke-direct {p1, v10}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v10, v2}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v1

    invoke-virtual {v10, v5}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v3

    invoke-virtual {v10, v2}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v2

    invoke-virtual {v10, v5}, Lcom/ex/auto/AcProgramEditActivity;->s(I)I

    move-result v5

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0060

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lw0/f;

    invoke-direct {v1, v10, p1, v8}, Lw0/f;-><init>(Lcom/ex/auto/AcProgramEditActivity;Landroid/widget/NumberPicker;I)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v6, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
