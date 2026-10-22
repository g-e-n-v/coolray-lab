.class public final Landroidx/activity/result/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    .line 17
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    return-void

    .line 18
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance p1, Ll/k;

    invoke-direct {p1}, Ll/k;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    .line 20
    new-instance p1, Ll/e;

    invoke-direct {p1}, Ll/e;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    iput-object p1, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lq0/g0;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    .line 8
    new-instance p1, Lq0/g1;

    .line 9
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p1, Lq0/g1;->a:I

    .line 11
    iput-object p1, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_6

    if-eq v1, v2, :cond_6

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const-class v2, Landroidx/emoji2/text/w;

    invoke-interface {p0, p1, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/emoji2/text/w;

    if-eqz v1, :cond_6

    array-length v2, v1

    if-lez v2, :cond_6

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-eqz p2, :cond_2

    if-eq v5, p1, :cond_4

    :cond_2
    if-nez p2, :cond_3

    if-eq v4, p1, :cond_4

    :cond_3
    if-le p1, v5, :cond_5

    if-ge p1, v4, :cond_5

    :cond_4
    invoke-interface {p0, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 p0, 0x1

    return p0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v0
.end method

.method public static s(II)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v1, p0, :cond_2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, p1, :cond_0

    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    if-le v2, p1, :cond_1

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v2, v4

    if-le v2, p1, :cond_3

    add-int/2addr v3, v4

    :cond_3
    return v3
.end method


# virtual methods
.method public A(Lz/f;)V
    .locals 4

    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/emoji2/text/m;

    iget v2, p1, Lz/f;->b:I

    if-nez v2, :cond_0

    iget-object p1, p1, Lz/f;->a:Landroid/graphics/Typeface;

    new-instance v2, Landroidx/fragment/app/c;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3, p1}, Landroidx/fragment/app/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance p1, Landroidx/emoji2/text/i;

    const/4 v3, 0x2

    invoke-direct {p1, v1, v2, v3}, Landroidx/emoji2/text/i;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public B(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 9

    new-instance v0, Lq/m;

    invoke-direct {v0}, Lq/m;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_f

    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v4, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_1
    const-string v1, "ConstraintLayoutStates"

    const-string v3, "error in parsing id"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_3
    if-eq v1, v5, :cond_d

    if-eqz v1, :cond_b

    const/4 v6, 0x2

    const-string v7, "Constraint"

    if-eq v1, v6, :cond_5

    const/4 v6, 0x3

    if-eq v1, v6, :cond_3

    goto/16 :goto_4

    :cond_3
    :try_start_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "ConstraintSet"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lq/m;->c:Ljava/util/HashMap;

    iget v6, v4, Lq/h;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :catch_1
    move-exception p1

    goto/16 :goto_6

    :cond_5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "XML parser error must be within a Constraint "

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    :try_start_2
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    invoke-static {p1, v1}, Lq/m;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Lq/h;

    move-result-object v4

    goto/16 :goto_4

    :sswitch_1
    const-string v6, "CustomAttribute"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v4, :cond_6

    iget-object v1, v4, Lq/h;->f:Ljava/util/HashMap;

    invoke-static {p1, p2, v1}, Lq/b;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;)V

    goto/16 :goto_4

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_2
    const-string v6, "Barrier"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    invoke-static {p1, v1}, Lq/m;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Lq/h;

    move-result-object v4

    iget-object v1, v4, Lq/h;->d:Lq/i;

    iput v5, v1, Lq/i;->c0:I

    goto/16 :goto_4

    :sswitch_3
    const-string v6, "Guideline"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    invoke-static {p1, v1}, Lq/m;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Lq/h;

    move-result-object v4

    iget-object v1, v4, Lq/h;->d:Lq/i;

    iput-boolean v5, v1, Lq/i;->a:Z

    goto/16 :goto_4

    :sswitch_4
    const-string v6, "Transform"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v4, :cond_7

    iget-object v1, v4, Lq/h;->e:Lq/l;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    invoke-virtual {v1, p1, v6}, Lq/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_4

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_5
    const-string v6, "PropertySet"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v4, :cond_8

    iget-object v1, v4, Lq/h;->b:Lq/k;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    invoke-virtual {v1, p1, v6}, Lq/k;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_4

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_6
    const-string v6, "Motion"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v4, :cond_9

    iget-object v1, v4, Lq/h;->c:Lq/j;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    invoke-virtual {v1, p1, v6}, Lq/j;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_7
    const-string v6, "Layout"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v4, :cond_a

    iget-object v1, v4, Lq/h;->d:Lq/i;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    invoke-virtual {v1, p1, v6}, Lq/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :cond_c
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :goto_6
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_d
    :goto_7
    iget-object p1, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78c018b6 -> :sswitch_7
        -0x7648542a -> :sswitch_6
        -0x4bab3dd3 -> :sswitch_5
        -0x49cf74b4 -> :sswitch_4
        -0x446d330 -> :sswitch_3
        0x4f5d3b97 -> :sswitch_2
        0x6acd460b -> :sswitch_1
        0x6b78f1fd -> :sswitch_0
    .end sparse-switch
.end method

.method public C(Lq0/w0;I)Lc0/q;
    .locals 5

    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Ll/k;

    invoke-virtual {v0, p1}, Ll/k;->d(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Ll/k;->i(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq0/h1;

    if-eqz v2, :cond_4

    iget v3, v2, Lq0/h1;->a:I

    and-int v4, v3, p2

    if-eqz v4, :cond_4

    not-int v4, p2

    and-int/2addr v3, v4

    iput v3, v2, Lq0/h1;->a:I

    const/4 v4, 0x4

    if-ne p2, v4, :cond_1

    iget-object p2, v2, Lq0/h1;->b:Lc0/q;

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    if-ne p2, v4, :cond_3

    iget-object p2, v2, Lq0/h1;->c:Lc0/q;

    :goto_0
    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_2

    invoke-virtual {v0, p1}, Ll/k;->h(I)Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, v2, Lq0/h1;->a:I

    iput-object v1, v2, Lq0/h1;->b:Lc0/q;

    iput-object v1, v2, Lq0/h1;->c:Lc0/q;

    sget-object p1, Lq0/h1;->d:Lb0/c;

    invoke-virtual {p1, v2}, Lb0/c;->c(Ljava/lang/Object;)Z

    :cond_2
    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-object v1
.end method

.method public D(Lq0/w0;)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Ll/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ll/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq0/h1;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lq0/h1;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Lq0/h1;->a:I

    return-void
.end method

.method public E(Lq0/w0;)V
    .locals 6

    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v0, Ll/e;

    invoke-virtual {v0}, Ll/e;->e()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ll/e;->f(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_0

    iget-object v3, v0, Ll/e;->c:[Ljava/lang/Object;

    aget-object v4, v3, v1

    sget-object v5, Ll/e;->e:Ljava/lang/Object;

    if-eq v4, v5, :cond_1

    aput-object v5, v3, v1

    iput-boolean v2, v0, Ll/e;->a:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Ll/k;

    invoke-virtual {v0, p1}, Ll/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq0/h1;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iput v0, p1, Lq0/h1;->a:I

    const/4 v0, 0x0

    iput-object v0, p1, Lq0/h1;->b:Lc0/q;

    iput-object v0, p1, Lq0/h1;->c:Lc0/q;

    sget-object v0, Lq0/h1;->d:Lb0/c;

    invoke-virtual {v0, p1}, Lb0/c;->c(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public a(Lq0/w0;Lc0/q;)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Ll/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ll/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq0/h1;

    if-nez v1, :cond_0

    invoke-static {}, Lq0/h1;->a()Lq0/h1;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ll/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v1, Lq0/h1;->c:Lc0/q;

    iget p1, v1, Lq0/h1;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v1, Lq0/h1;->a:I

    return-void
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/h0;

    iget-object v0, v0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->j()Landroidx/fragment/app/h0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/h0;->k:Landroidx/activity/result/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/activity/result/c;->c(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/h0;

    iget-object v1, v0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    iget-object v1, v1, Landroidx/fragment/app/u;->b:Le/j;

    iget-object v0, v0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->j()Landroidx/fragment/app/h0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/h0;->k:Landroidx/activity/result/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/activity/result/c;->d(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public e(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/h0;

    iget-object v0, v0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->j()Landroidx/fragment/app/h0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/h0;->k:Landroidx/activity/result/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/activity/result/c;->e(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public f(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/h0;

    iget-object v0, v0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->j()Landroidx/fragment/app/h0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/h0;->k:Landroidx/activity/result/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/activity/result/c;->f(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public g(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/h0;

    iget-object v0, v0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->j()Landroidx/fragment/app/h0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/h0;->k:Landroidx/activity/result/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/activity/result/c;->g(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public h(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/h0;

    iget-object v0, v0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->j()Landroidx/fragment/app/h0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/h0;->k:Landroidx/activity/result/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/activity/result/c;->h(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public i(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/h0;

    iget-object v1, v0, Landroidx/fragment/app/h0;->n:Landroidx/fragment/app/u;

    iget-object v1, v1, Landroidx/fragment/app/u;->b:Le/j;

    iget-object v0, v0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->j()Landroidx/fragment/app/h0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/h0;->k:Landroidx/activity/result/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/activity/result/c;->i(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public j(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/h0;

    iget-object v0, v0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->j()Landroidx/fragment/app/h0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/h0;->k:Landroidx/activity/result/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/activity/result/c;->j(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public k(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/h0;

    iget-object v0, v0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->j()Landroidx/fragment/app/h0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/h0;->k:Landroidx/activity/result/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/activity/result/c;->k(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public l(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/h0;

    iget-object v0, v0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->j()Landroidx/fragment/app/h0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/h0;->k:Landroidx/activity/result/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/activity/result/c;->l(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public m(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/h0;

    iget-object v0, v0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->j()Landroidx/fragment/app/h0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/h0;->k:Landroidx/activity/result/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/activity/result/c;->m(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public n(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/h0;

    iget-object v0, v0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->j()Landroidx/fragment/app/h0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/h0;->k:Landroidx/activity/result/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/activity/result/c;->n(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public o(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/h0;

    iget-object v0, v0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->j()Landroidx/fragment/app/h0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/h0;->k:Landroidx/activity/result/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/activity/result/c;->o(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public p(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/h0;

    iget-object v0, v0, Landroidx/fragment/app/h0;->p:Landroidx/fragment/app/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/r;->j()Landroidx/fragment/app/h0;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/h0;->k:Landroidx/activity/result/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/activity/result/c;->p(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    throw v0

    :cond_1
    throw v0

    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public q(I)V
    .locals 4

    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    return-void

    :cond_0
    array-length v2, v0

    if-lt p1, v2, :cond_2

    array-length v2, v0

    :goto_0
    if-gt v2, p1, :cond_1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    new-array p1, v2, [I

    iput-object p1, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast p1, [I

    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v0, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    :cond_2
    return-void
.end method

.method public r(IIII)Landroid/view/View;
    .locals 9

    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v0, Lq0/g1;

    iget-object v1, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v1, Lq0/g0;

    invoke-virtual {v1}, Lq0/g0;->d()I

    move-result v2

    invoke-virtual {v1}, Lq0/g0;->c()I

    move-result v3

    if-le p2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-eq p1, p2, :cond_3

    iget v6, v1, Lq0/g0;->a:I

    packed-switch v6, :pswitch_data_0

    iget-object v6, v1, Lq0/g0;->b:Lq0/i0;

    invoke-virtual {v6, p1}, Lq0/i0;->u(I)Landroid/view/View;

    move-result-object v6

    goto :goto_2

    :pswitch_0
    iget-object v6, v1, Lq0/g0;->b:Lq0/i0;

    invoke-virtual {v6, p1}, Lq0/i0;->u(I)Landroid/view/View;

    move-result-object v6

    :goto_2
    invoke-virtual {v1, v6}, Lq0/g0;->b(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v1, v6}, Lq0/g0;->a(Landroid/view/View;)I

    move-result v8

    iput v2, v0, Lq0/g1;->b:I

    iput v3, v0, Lq0/g1;->c:I

    iput v7, v0, Lq0/g1;->d:I

    iput v8, v0, Lq0/g1;->e:I

    if-eqz p3, :cond_1

    iput p3, v0, Lq0/g1;->a:I

    invoke-virtual {v0}, Lq0/g1;->a()Z

    move-result v7

    if-eqz v7, :cond_1

    return-object v6

    :cond_1
    if-eqz p4, :cond_2

    iput p4, v0, Lq0/g1;->a:I

    invoke-virtual {v0}, Lq0/g1;->a()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v5, v6

    :cond_2
    add-int/2addr p1, v4

    goto :goto_1

    :cond_3
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public t(Ljava/lang/CharSequence;IILandroidx/emoji2/text/o;)Z
    .locals 7

    iget v0, p4, Landroidx/emoji2/text/o;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/g;

    invoke-virtual {p4}, Landroidx/emoji2/text/o;->b()Lj0/a;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lc0/y;->a(I)I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v6, v4, Lc0/y;->d:Ljava/lang/Object;

    check-cast v6, Ljava/nio/ByteBuffer;

    iget v4, v4, Lc0/y;->a:I

    add-int/2addr v5, v4

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    :cond_0
    check-cast v0, Landroidx/emoji2/text/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/emoji2/text/c;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, v0, Landroidx/emoji2/text/c;->a:Landroid/text/TextPaint;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget p3, Lv/e;->a:I

    invoke-static {p1, p2}, Lv/d;->a(Landroid/graphics/Paint;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_3
    move p1, v3

    :goto_1
    iput p1, p4, Landroidx/emoji2/text/o;->c:I

    :cond_4
    iget p1, p4, Landroidx/emoji2/text/o;->c:I

    if-ne p1, v1, :cond_5

    return v3

    :cond_5
    return v2
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public v(Landroid/view/View;)Z
    .locals 5

    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v0, Lq0/g1;

    iget-object v1, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v1, Lq0/g0;

    invoke-virtual {v1}, Lq0/g0;->d()I

    move-result v2

    invoke-virtual {v1}, Lq0/g0;->c()I

    move-result v3

    invoke-virtual {v1, p1}, Lq0/g0;->b(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v1, p1}, Lq0/g0;->a(Landroid/view/View;)I

    move-result p1

    iput v2, v0, Lq0/g1;->b:I

    iput v3, v0, Lq0/g1;->c:I

    iput v4, v0, Lq0/g1;->d:I

    iput p1, v0, Lq0/g1;->e:I

    const/16 p1, 0x6003

    iput p1, v0, Lq0/g1;->a:I

    invoke-virtual {v0}, Lq0/g1;->a()Z

    move-result p1

    return p1
.end method

.method public w(II)V
    .locals 3

    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Landroidx/activity/result/c;->q(I)V

    iget-object v1, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v2, -0x1

    invoke-static {v1, p1, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq0/d1;

    iget v2, v1, Lq0/d1;->a:I

    if-ge v2, p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v2, p2

    iput v2, v1, Lq0/d1;->a:I

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public x(II)V
    .locals 5

    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_2

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Landroidx/activity/result/c;->q(I)V

    iget-object v1, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    sub-int/2addr v2, p2

    array-length v3, v1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v1, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    iget-object v2, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq0/d1;

    iget v3, v2, Lq0/d1;->a:I

    if-ge v3, p1, :cond_2

    goto :goto_1

    :cond_2
    if-ge v3, v0, :cond_3

    iget-object v2, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sub-int/2addr v3, p2

    iput v3, v2, Lq0/d1;->a:I

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public y(Lg/a;)V
    .locals 3

    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/t;

    iget-object v1, v0, Landroidx/emoji2/text/t;->a:Ljava/lang/Object;

    check-cast v1, Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/t;->b(Lg/a;)Lg/f;

    move-result-object p1

    invoke-interface {v1, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iget-object p1, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast p1, Le/y;

    iget-object v0, p1, Le/y;->w:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p1, Le/y;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Le/y;->x:Le/p;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p1, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_2

    iget-object v0, p1, Le/y;->y:Lc0/w0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc0/w0;->b()V

    :cond_1
    iget-object v0, p1, Le/y;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Lc0/p0;->a(Landroid/view/View;)Lc0/w0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc0/w0;->a(F)V

    iput-object v0, p1, Le/y;->y:Lc0/w0;

    new-instance v1, Le/r;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Le/r;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lc0/w0;->d(Lc0/x0;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p1, Le/y;->u:Lg/a;

    iget-object v0, p1, Le/y;->A:Landroid/view/ViewGroup;

    sget-object v1, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lc0/d0;->c(Landroid/view/View;)V

    invoke-virtual {p1}, Le/y;->O()V

    return-void
.end method

.method public z(Lg/a;Landroid/view/Menu;)Z
    .locals 5

    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/lang/Object;

    check-cast v0, Le/y;

    iget-object v0, v0, Le/y;->A:Landroid/view/ViewGroup;

    sget-object v1, Lc0/p0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lc0/d0;->c(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/activity/result/c;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/t;

    iget-object v1, v0, Landroidx/emoji2/text/t;->a:Ljava/lang/Object;

    check-cast v1, Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/t;->b(Lg/a;)Lg/f;

    move-result-object p1

    iget-object v2, v0, Landroidx/emoji2/text/t;->d:Ljava/lang/Object;

    check-cast v2, Ll/k;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Ll/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Menu;

    if-nez v3, :cond_0

    new-instance v3, Lh/c0;

    iget-object v0, v0, Landroidx/emoji2/text/t;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    move-object v4, p2

    check-cast v4, Lh/m;

    invoke-direct {v3, v0, v4}, Lh/c0;-><init>(Landroid/content/Context;Lh/m;)V

    invoke-virtual {v2, p2, v3}, Ll/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p1, v3}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
