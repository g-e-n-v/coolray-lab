.class public final Lw0/ch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static P:I = 0xf0

.field public static volatile Q:Lw0/m;


# instance fields
.field public A:J

.field public B:Ljava/lang/Float;

.field public C:Ljava/lang/Float;

.field public D:Ljava/lang/Float;

.field public E:Ljava/lang/Float;

.field public F:Ljava/lang/Float;

.field public G:Ljava/lang/Float;

.field public H:Ljava/lang/Float;

.field public I:F

.field public J:F

.field public K:I

.field public L:F

.field public M:F

.field public N:F

.field public O:Ljava/lang/String;

.field public a:Lw0/w3;

.field public b:Lw0/w3;

.field public c:Lw0/w3;

.field public d:Lw0/w3;

.field public e:D

.field public f:D

.field public g:D

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:J

.field public s:D

.field public t:D

.field public u:D

.field public v:D

.field public w:D

.field public final x:Lw0/m3;

.field public y:Z

.field public z:J


# direct methods
.method public constructor <init>(Lw0/m3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/ch;->x:Lw0/m3;

    return-void
.end method

.method public static c(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 25

    move-object/from16 v1, p0

    const-string v0, "\"sourceKey\":\""

    iget-object v2, v1, Lw0/ch;->B:Ljava/lang/Float;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lw0/ch;->E:Ljava/lang/Float;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v4, v1, Lw0/ch;->B:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v2, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, v1, Lw0/ch;->E:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v4, v1, Lw0/ch;->B:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v2, v4

    goto :goto_0

    :cond_0
    iget v2, v1, Lw0/ch;->N:F

    :goto_0
    iget-wide v4, v1, Lw0/ch;->z:J

    sub-long v4, p1, v4

    const v6, 0x3e4ccccd    # 0.2f

    cmpl-float v6, v2, v6

    const/4 v7, 0x0

    if-gez v6, :cond_2

    const-wide/32 v9, 0x1d4c0

    cmp-long v4, v4, v9

    if-ltz v4, :cond_1

    goto :goto_2

    :catchall_0
    :cond_1
    :goto_1
    const/4 v8, 0x0

    goto/16 :goto_d

    :cond_2
    :goto_2
    iget v4, v1, Lw0/ch;->K:I

    if-lez v4, :cond_3

    iget v5, v1, Lw0/ch;->J:F

    int-to-float v4, v4

    div-float/2addr v5, v4

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    cmpl-float v4, v2, v3

    if-lez v4, :cond_4

    iget v3, v1, Lw0/ch;->L:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, v2

    :cond_4
    iget-object v4, v1, Lw0/ch;->O:Ljava/lang/String;

    if-eqz v4, :cond_5

    const-string v6, "unknown"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v1, Lw0/ch;->O:Ljava/lang/String;

    goto :goto_4

    :cond_5
    const-string v4, "unknown"

    :goto_4
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    iget-object v9, v1, Lw0/ch;->b:Lw0/w3;

    const/4 v10, 0x1

    if-eqz v9, :cond_6

    const-string v11, "curva_vel"

    const/high16 v12, 0x41200000    # 10.0f

    invoke-virtual {v9, v12, v7}, Lw0/w3;->b(FZ)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v11, v9}, Lw0/ch;->c(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "curva_vel_max"

    iget-object v11, v1, Lw0/ch;->b:Lw0/w3;

    invoke-virtual {v11, v12, v10}, Lw0/w3;->b(FZ)Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v9, v11}, Lw0/ch;->c(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "curva_pot"

    iget-object v11, v1, Lw0/ch;->a:Lw0/w3;

    invoke-virtual {v11, v12, v7}, Lw0/w3;->b(FZ)Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v9, v11}, Lw0/ch;->c(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "curva_pot_pico"

    iget-object v11, v1, Lw0/ch;->a:Lw0/w3;

    invoke-virtual {v11, v12, v10}, Lw0/w3;->b(FZ)Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v9, v11}, Lw0/ch;->c(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "curva_soc"

    iget-object v11, v1, Lw0/ch;->c:Lw0/w3;

    invoke-virtual {v11, v12, v7}, Lw0/w3;->b(FZ)Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v9, v11}, Lw0/ch;->c(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "curva_pot_bruta"

    iget-object v11, v1, Lw0/ch;->d:Lw0/w3;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12, v7}, Lw0/w3;->b(FZ)Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v9, v11}, Lw0/ch;->c(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v9, "pot_fonte"

    const-string v11, "soc"

    invoke-virtual {v6, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "pot_diag_v"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "pot_diag_pwr_erro"

    iget v10, v1, Lw0/ch;->i:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "pot_diag_pwr_zero"

    iget v10, v1, Lw0/ch;->j:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "pot_diag_pwr_ok"

    iget v10, v1, Lw0/ch;->k:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "pot_diag_cur_erro"

    iget v10, v1, Lw0/ch;->l:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "pot_diag_cur_zero"

    iget v10, v1, Lw0/ch;->m:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "pot_diag_cur_ok"

    iget v10, v1, Lw0/ch;->n:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "pot_diag_vol_erro"

    iget v10, v1, Lw0/ch;->o:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "pot_diag_vol_zero"

    iget v10, v1, Lw0/ch;->p:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "pot_diag_vol_ok"

    iget v10, v1, Lw0/ch;->q:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v9, v1, Lw0/ch;->h:I

    if-lez v9, :cond_7

    const-string v9, "pot_bruta_integral"

    iget-wide v10, v1, Lw0/ch;->e:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v9, "pot_bruta_integral_mod"

    iget-wide v10, v1, Lw0/ch;->f:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v9, "pot_bruta_seg"

    iget-wide v10, v1, Lw0/ch;->g:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v9, "pot_bruta_n"

    iget v10, v1, Lw0/ch;->h:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    iget-wide v9, v1, Lw0/ch;->r:J

    const-wide/16 v11, 0x1e

    cmp-long v9, v9, v11

    const-wide/16 v13, 0x0

    if-gez v9, :cond_9

    move-wide v15, v11

    :cond_8
    :goto_5
    const/4 v9, 0x0

    goto :goto_6

    :cond_9
    iget-wide v9, v1, Lw0/ch;->v:D

    move-wide v15, v11

    iget-wide v11, v1, Lw0/ch;->w:D

    mul-double/2addr v9, v11

    cmpg-double v11, v9, v13

    if-gtz v11, :cond_a

    goto :goto_5

    :cond_a
    iget-wide v11, v1, Lw0/ch;->u:D

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    div-double/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {v11, v12}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_5

    :cond_b
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    :goto_6
    if-eqz v9, :cond_c

    const-string v10, "pot_iv_r0"

    invoke-virtual {v6, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_c
    iget-wide v9, v1, Lw0/ch;->r:J

    cmp-long v11, v9, v15

    if-gez v11, :cond_e

    move/from16 v21, v2

    move/from16 v22, v3

    move-wide/from16 v17, v13

    :cond_d
    :goto_7
    const/4 v8, 0x0

    goto :goto_8

    :cond_e
    long-to-double v9, v9

    iget-wide v11, v1, Lw0/ch;->v:D

    mul-double/2addr v11, v9

    move-wide/from16 v17, v13

    iget-wide v13, v1, Lw0/ch;->s:D

    mul-double v19, v13, v13

    sub-double v11, v11, v19

    cmpg-double v19, v11, v17

    if-gtz v19, :cond_f

    move/from16 v21, v2

    move/from16 v22, v3

    goto :goto_7

    :cond_f
    iget-wide v7, v1, Lw0/ch;->u:D

    mul-double/2addr v7, v9

    move/from16 v21, v2

    move/from16 v22, v3

    iget-wide v2, v1, Lw0/ch;->t:D

    mul-double v23, v13, v2

    sub-double v7, v7, v23

    div-double/2addr v7, v11

    mul-double/2addr v7, v13

    sub-double/2addr v2, v7

    div-double/2addr v2, v9

    iget-wide v7, v1, Lw0/ch;->w:D

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    cmpg-double v9, v7, v17

    if-gtz v9, :cond_10

    goto :goto_7

    :cond_10
    div-double/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-eqz v7, :cond_11

    goto :goto_7

    :cond_11
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v8, v2

    :goto_8
    if-eqz v8, :cond_12

    const-string v2, "pot_iv_desloc"

    invoke-virtual {v6, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_12
    iget-wide v2, v1, Lw0/ch;->r:J

    cmp-long v7, v2, v15

    if-gez v7, :cond_14

    :cond_13
    :goto_9
    const/4 v2, 0x0

    goto :goto_a

    :cond_14
    long-to-double v2, v2

    iget-wide v7, v1, Lw0/ch;->u:D

    iget-wide v9, v1, Lw0/ch;->s:D

    iget-wide v11, v1, Lw0/ch;->t:D

    mul-double v13, v9, v11

    div-double/2addr v13, v2

    sub-double/2addr v7, v13

    iget-wide v13, v1, Lw0/ch;->v:D

    mul-double/2addr v9, v9

    div-double/2addr v9, v2

    sub-double/2addr v13, v9

    iget-wide v9, v1, Lw0/ch;->w:D

    mul-double/2addr v11, v11

    div-double/2addr v11, v2

    sub-double/2addr v9, v11

    cmpg-double v2, v13, v17

    if-lez v2, :cond_13

    cmpg-double v2, v9, v17

    if-gtz v2, :cond_15

    goto :goto_9

    :cond_15
    mul-double/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {v7, v8}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_9

    :cond_16
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_a
    if-eqz v2, :cond_17

    const-string v3, "pot_iv_r"

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_17
    iget-wide v2, v1, Lw0/ch;->v:D

    cmpl-double v7, v2, v17

    if-lez v7, :cond_18

    const-string v7, "pot_iv_escala"

    iget-wide v8, v1, Lw0/ch;->u:D

    div-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_18
    iget-wide v2, v1, Lw0/ch;->r:J

    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_19

    const-string v7, "pot_iv_n"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_19
    const-string v2, "c-"

    const-string v3, "-"

    invoke-static {v2, v4, v3}, Landroidx/activity/result/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v1, Lw0/ch;->z:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "source_key"

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "start_ms"

    iget-wide v7, v1, Lw0/ch;->z:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "end_ms"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "distance_km"

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v3, "kwh_used"

    iget v4, v1, Lw0/ch;->L:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v3, "kwh_regen"

    iget v4, v1, Lw0/ch;->M:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v3, "avg_speed"

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v3, "max_speed"

    iget v4, v1, Lw0/ch;->I:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v3, "avg_cons"

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v3, v1, Lw0/ch;->C:Ljava/lang/Float;

    if-eqz v3, :cond_1a

    const-string v4, "soc_start"

    invoke-virtual {v6, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_1a
    iget-object v3, v1, Lw0/ch;->F:Ljava/lang/Float;

    if-eqz v3, :cond_1b

    const-string v4, "soc_end"

    invoke-virtual {v6, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_1b
    iget-object v3, v1, Lw0/ch;->D:Ljava/lang/Float;

    if-eqz v3, :cond_1c

    const-string v4, "range_start"

    invoke-virtual {v6, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_1c
    iget-object v3, v1, Lw0/ch;->G:Ljava/lang/Float;

    if-eqz v3, :cond_1d

    const-string v4, "range_end"

    invoke-virtual {v6, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_1d
    iget-object v3, v1, Lw0/ch;->B:Ljava/lang/Float;

    if-eqz v3, :cond_1e

    const-string v4, "odo_start"

    invoke-virtual {v6, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_1e
    iget-object v3, v1, Lw0/ch;->E:Ljava/lang/Float;

    if-eqz v3, :cond_1f

    const-string v4, "odo_end"

    invoke-virtual {v6, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_1f
    iget-object v3, v1, Lw0/ch;->x:Lw0/m3;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "trips"

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    const-string v5, "DELETE FROM trips WHERE source_key NOT IN (SELECT source_key FROM trips ORDER BY start_ms DESC LIMIT 20)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catchall_1
    monitor-exit v3

    sget-object v3, Lw0/ch;->Q:Lw0/m;

    if-eqz v3, :cond_1

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lw0/ch;->x:Lw0/m3;

    invoke-virtual {v2}, Lw0/m3;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_20
    if-ge v4, v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_20

    sget-object v2, Lcom/ex/auto/VhalProviderService;->p:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/ex/auto/VhalProviderService;->q:Ljava/util/ArrayDeque;

    new-instance v3, Lw0/hh;

    sget-wide v6, Lcom/ex/auto/VhalProviderService;->r:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    sput-wide v6, Lcom/ex/auto/VhalProviderService;->r:J

    invoke-direct {v3, v6, v7, v5}, Lw0/hh;-><init>(JLjava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :goto_b
    sget-object v0, Lcom/ex/auto/VhalProviderService;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_21

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_c

    :cond_21
    monitor-exit v2

    goto/16 :goto_1

    :goto_c
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_d
    iput-object v8, v1, Lw0/ch;->b:Lw0/w3;

    iput-object v8, v1, Lw0/ch;->a:Lw0/w3;

    iput-object v8, v1, Lw0/ch;->c:Lw0/w3;

    iput-object v8, v1, Lw0/ch;->d:Lw0/w3;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lw0/ch;->y:Z

    return-void
.end method

.method public final declared-synchronized b(Lw0/wg;J)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v2, v0, Lw0/wg;->b:Ljava/lang/Integer;

    iget-object v4, v0, Lw0/wg;->a:Ljava/lang/Float;

    iget-object v5, v0, Lw0/wg;->d:Ljava/lang/Float;

    iget-object v6, v0, Lw0/wg;->f:Ljava/lang/Float;

    iget-object v7, v0, Lw0/wg;->e:Ljava/lang/Float;

    iget-boolean v3, v1, Lw0/ch;->y:Z

    const/4 v8, 0x1

    if-nez v3, :cond_3

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v9, 0x40400000    # 3.0f

    cmpl-float v3, v3, v9

    if-lez v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    const/4 v8, 0x0

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    if-eqz v8, :cond_2

    iget-object v8, v0, Lw0/wg;->I:Ljava/lang/String;

    move-wide/from16 v2, p2

    invoke-virtual/range {v1 .. v8}, Lw0/ch;->d(JLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    move-object v9, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-wide/from16 v3, p2

    :try_start_1
    iget-object v10, v1, Lw0/ch;->b:Lw0/w3;

    if-eqz v10, :cond_5

    invoke-virtual {v10, v5}, Lw0/w3;->a(Ljava/lang/Float;)V

    iget-object v10, v1, Lw0/ch;->a:Lw0/w3;

    iget-object v11, v0, Lw0/wg;->g:Ljava/lang/Float;

    invoke-virtual {v10, v11}, Lw0/w3;->a(Ljava/lang/Float;)V

    iget-object v10, v1, Lw0/ch;->c:Lw0/w3;

    invoke-virtual {v10, v6}, Lw0/w3;->a(Ljava/lang/Float;)V

    iget-object v10, v1, Lw0/ch;->d:Lw0/w3;

    iget-object v11, v0, Lw0/wg;->y:Ljava/lang/Integer;

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v10, v11}, Lw0/w3;->a(Ljava/lang/Float;)V

    :cond_5
    iget v10, v0, Lw0/wg;->B:I

    const/4 v11, 0x2

    if-eq v10, v8, :cond_7

    if-eq v10, v11, :cond_6

    iget v10, v1, Lw0/ch;->i:I

    add-int/2addr v10, v8

    iput v10, v1, Lw0/ch;->i:I

    goto :goto_2

    :cond_6
    iget v10, v1, Lw0/ch;->k:I

    add-int/2addr v10, v8

    iput v10, v1, Lw0/ch;->k:I

    goto :goto_2

    :cond_7
    iget v10, v1, Lw0/ch;->j:I

    add-int/2addr v10, v8

    iput v10, v1, Lw0/ch;->j:I

    :goto_2
    iget v10, v0, Lw0/wg;->C:I

    if-eq v10, v8, :cond_9

    if-eq v10, v11, :cond_8

    iget v10, v1, Lw0/ch;->l:I

    add-int/2addr v10, v8

    iput v10, v1, Lw0/ch;->l:I

    goto :goto_3

    :cond_8
    iget v10, v1, Lw0/ch;->n:I

    add-int/2addr v10, v8

    iput v10, v1, Lw0/ch;->n:I

    goto :goto_3

    :cond_9
    iget v10, v1, Lw0/ch;->m:I

    add-int/2addr v10, v8

    iput v10, v1, Lw0/ch;->m:I

    :goto_3
    iget v10, v0, Lw0/wg;->D:I

    if-eq v10, v8, :cond_b

    if-eq v10, v11, :cond_a

    iget v10, v1, Lw0/ch;->o:I

    add-int/2addr v10, v8

    iput v10, v1, Lw0/ch;->o:I

    goto :goto_4

    :cond_a
    iget v10, v1, Lw0/ch;->q:I

    add-int/2addr v10, v8

    iput v10, v1, Lw0/ch;->q:I

    goto :goto_4

    :cond_b
    iget v10, v1, Lw0/ch;->p:I

    add-int/2addr v10, v8

    iput v10, v1, Lw0/ch;->p:I

    :goto_4
    iget-object v10, v0, Lw0/wg;->y:Ljava/lang/Integer;

    const-wide/16 v11, 0x0

    if-eqz v10, :cond_c

    iget-wide v13, v1, Lw0/ch;->A:J

    cmp-long v15, v13, v11

    if-lez v15, :cond_c

    sub-long v13, v3, v13

    cmp-long v15, v13, v11

    if-lez v15, :cond_c

    const-wide/32 v15, 0x11940

    cmp-long v15, v13, v15

    if-gez v15, :cond_c

    long-to-double v13, v13

    const-wide v15, 0x414b774000000000L    # 3600000.0

    div-double v15, v13, v15

    move-wide/from16 v17, v11

    iget-wide v11, v1, Lw0/ch;->e:D

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move/from16 v19, v8

    move-object/from16 v20, v9

    int-to-double v8, v10

    mul-double/2addr v8, v15

    add-double/2addr v8, v11

    iput-wide v8, v1, Lw0/ch;->e:D

    iget-wide v8, v1, Lw0/ch;->f:D

    iget-object v10, v0, Lw0/wg;->y:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    mul-double/2addr v10, v15

    add-double/2addr v10, v8

    iput-wide v10, v1, Lw0/ch;->f:D

    iget-wide v8, v1, Lw0/ch;->g:D

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v13, v10

    add-double/2addr v13, v8

    iput-wide v13, v1, Lw0/ch;->g:D

    iget v8, v1, Lw0/ch;->h:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v1, Lw0/ch;->h:I

    goto :goto_5

    :cond_c
    move/from16 v19, v8

    move-object/from16 v20, v9

    move-wide/from16 v17, v11

    :goto_5
    iget-object v8, v0, Lw0/wg;->y:Ljava/lang/Integer;

    if-eqz v8, :cond_d

    iget-object v8, v0, Lw0/wg;->z:Ljava/lang/Integer;

    if-eqz v8, :cond_d

    iget-object v9, v0, Lw0/wg;->A:Ljava/lang/Integer;

    if-eqz v9, :cond_d

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    iget-object v10, v0, Lw0/wg;->A:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v8, v10

    iget-object v0, v0, Lw0/wg;->y:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v10, v0

    iget-wide v12, v1, Lw0/ch;->r:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    iput-wide v12, v1, Lw0/ch;->r:J

    iget-wide v12, v1, Lw0/ch;->s:D

    add-double/2addr v12, v8

    iput-wide v12, v1, Lw0/ch;->s:D

    iget-wide v12, v1, Lw0/ch;->t:D

    add-double/2addr v12, v10

    iput-wide v12, v1, Lw0/ch;->t:D

    iget-wide v12, v1, Lw0/ch;->u:D

    mul-double v14, v8, v10

    add-double/2addr v14, v12

    iput-wide v14, v1, Lw0/ch;->u:D

    iget-wide v12, v1, Lw0/ch;->v:D

    mul-double/2addr v8, v8

    add-double/2addr v8, v12

    iput-wide v8, v1, Lw0/ch;->v:D

    iget-wide v8, v1, Lw0/ch;->w:D

    mul-double/2addr v10, v10

    add-double/2addr v10, v8

    iput-wide v10, v1, Lw0/ch;->w:D

    :cond_d
    const/4 v0, 0x0

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget v9, v1, Lw0/ch;->I:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_e

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v1, Lw0/ch;->I:F

    :cond_e
    iget v8, v1, Lw0/ch;->J:F

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    add-float/2addr v8, v9

    iput v8, v1, Lw0/ch;->J:F

    iget v8, v1, Lw0/ch;->K:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v1, Lw0/ch;->K:I

    iget-wide v8, v1, Lw0/ch;->A:J

    cmp-long v10, v8, v17

    if-lez v10, :cond_f

    sub-long v8, v3, v8

    long-to-float v8, v8

    const v9, 0x4a5bba00    # 3600000.0f

    div-float/2addr v8, v9

    cmpl-float v9, v8, v0

    if-lez v9, :cond_f

    const v9, 0x3ca3d70a    # 0.02f

    cmpg-float v9, v8, v9

    if-gez v9, :cond_f

    iget v9, v1, Lw0/ch;->N:F

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float/2addr v5, v8

    add-float/2addr v5, v9

    iput v5, v1, Lw0/ch;->N:F

    :cond_f
    if-eqz v6, :cond_12

    iget-object v5, v1, Lw0/ch;->H:Ljava/lang/Float;

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x421c0000    # 39.0f

    mul-float/2addr v8, v9

    cmpl-float v0, v5, v0

    if-lez v0, :cond_10

    iget v0, v1, Lw0/ch;->L:F

    add-float/2addr v0, v8

    iput v0, v1, Lw0/ch;->L:F

    goto :goto_6

    :cond_10
    iget v0, v1, Lw0/ch;->M:F

    add-float/2addr v0, v8

    iput v0, v1, Lw0/ch;->M:F

    :cond_11
    :goto_6
    iput-object v6, v1, Lw0/ch;->H:Ljava/lang/Float;

    iput-object v6, v1, Lw0/ch;->F:Ljava/lang/Float;

    :cond_12
    if-eqz v7, :cond_13

    iput-object v7, v1, Lw0/ch;->E:Ljava/lang/Float;

    :cond_13
    if-eqz v20, :cond_14

    move-object/from16 v7, v20

    iput-object v7, v1, Lw0/ch;->G:Ljava/lang/Float;

    :cond_14
    iput-wide v3, v1, Lw0/ch;->A:J

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_15

    invoke-virtual {v1, v3, v4}, Lw0/ch;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_15
    monitor-exit p0

    return-void

    :goto_7
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final d(JLjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw0/ch;->y:Z

    iput-wide p1, p0, Lw0/ch;->z:J

    iput-wide p1, p0, Lw0/ch;->A:J

    new-instance p1, Lw0/w3;

    sget p2, Lw0/ch;->P:I

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1}, Lw0/w3;-><init>(IZ)V

    iput-object p1, p0, Lw0/ch;->b:Lw0/w3;

    new-instance p1, Lw0/w3;

    sget p2, Lw0/ch;->P:I

    invoke-direct {p1, p2, v0}, Lw0/w3;-><init>(IZ)V

    iput-object p1, p0, Lw0/ch;->a:Lw0/w3;

    new-instance p1, Lw0/w3;

    sget p2, Lw0/ch;->P:I

    invoke-direct {p1, p2, v1}, Lw0/w3;-><init>(IZ)V

    iput-object p1, p0, Lw0/ch;->c:Lw0/w3;

    new-instance p1, Lw0/w3;

    sget p2, Lw0/ch;->P:I

    invoke-direct {p1, p2, v0}, Lw0/w3;-><init>(IZ)V

    iput-object p1, p0, Lw0/ch;->d:Lw0/w3;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lw0/ch;->e:D

    iput-wide p1, p0, Lw0/ch;->f:D

    iput-wide p1, p0, Lw0/ch;->g:D

    iput v1, p0, Lw0/ch;->h:I

    iput v1, p0, Lw0/ch;->i:I

    iput v1, p0, Lw0/ch;->j:I

    iput v1, p0, Lw0/ch;->k:I

    iput v1, p0, Lw0/ch;->l:I

    iput v1, p0, Lw0/ch;->m:I

    iput v1, p0, Lw0/ch;->n:I

    iput v1, p0, Lw0/ch;->o:I

    iput v1, p0, Lw0/ch;->p:I

    iput v1, p0, Lw0/ch;->q:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lw0/ch;->r:J

    iput-wide p1, p0, Lw0/ch;->s:D

    iput-wide p1, p0, Lw0/ch;->t:D

    iput-wide p1, p0, Lw0/ch;->u:D

    iput-wide p1, p0, Lw0/ch;->v:D

    iput-wide p1, p0, Lw0/ch;->w:D

    iget-object p1, p0, Lw0/ch;->b:Lw0/w3;

    invoke-virtual {p1, p3}, Lw0/w3;->a(Ljava/lang/Float;)V

    iget-object p1, p0, Lw0/ch;->c:Lw0/w3;

    invoke-virtual {p1, p4}, Lw0/w3;->a(Ljava/lang/Float;)V

    iput-object p5, p0, Lw0/ch;->B:Ljava/lang/Float;

    iput-object p4, p0, Lw0/ch;->C:Ljava/lang/Float;

    iput-object p6, p0, Lw0/ch;->D:Ljava/lang/Float;

    iput-object p5, p0, Lw0/ch;->E:Ljava/lang/Float;

    iput-object p4, p0, Lw0/ch;->F:Ljava/lang/Float;

    iput-object p6, p0, Lw0/ch;->G:Ljava/lang/Float;

    iput-object p4, p0, Lw0/ch;->H:Ljava/lang/Float;

    iput-object p7, p0, Lw0/ch;->O:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput p2, p0, Lw0/ch;->I:F

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_1

    :cond_1
    move p2, p1

    :goto_1
    iput p2, p0, Lw0/ch;->J:F

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput v0, p0, Lw0/ch;->K:I

    iput p1, p0, Lw0/ch;->L:F

    iput p1, p0, Lw0/ch;->M:F

    iput p1, p0, Lw0/ch;->N:F

    return-void
.end method
