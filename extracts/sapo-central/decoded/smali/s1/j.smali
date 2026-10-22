.class public final Ls1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lk1/a;

.field public b:Lk1/a;

.field public c:Lk1/a;

.field public d:Lk1/a;

.field public e:Ls1/c;

.field public f:Ls1/c;

.field public g:Ls1/c;

.field public h:Ls1/c;

.field public i:Ls1/e;

.field public j:Ls1/e;

.field public k:Ls1/e;

.field public l:Ls1/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ls1/j;->a:Lk1/a;

    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ls1/j;->b:Lk1/a;

    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ls1/j;->c:Lk1/a;

    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ls1/j;->d:Lk1/a;

    new-instance v0, Ls1/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls1/a;-><init>(F)V

    iput-object v0, p0, Ls1/j;->e:Ls1/c;

    new-instance v0, Ls1/a;

    invoke-direct {v0, v1}, Ls1/a;-><init>(F)V

    iput-object v0, p0, Ls1/j;->f:Ls1/c;

    new-instance v0, Ls1/a;

    invoke-direct {v0, v1}, Ls1/a;-><init>(F)V

    iput-object v0, p0, Ls1/j;->g:Ls1/c;

    new-instance v0, Ls1/a;

    invoke-direct {v0, v1}, Ls1/a;-><init>(F)V

    iput-object v0, p0, Ls1/j;->h:Ls1/c;

    new-instance v0, Ls1/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ls1/j;->i:Ls1/e;

    new-instance v0, Ls1/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ls1/j;->j:Ls1/e;

    new-instance v0, Ls1/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ls1/j;->k:Ls1/e;

    new-instance v0, Ls1/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ls1/j;->l:Ls1/e;

    return-void
.end method


# virtual methods
.method public final a()Ls1/k;
    .locals 2

    new-instance v0, Ls1/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Ls1/j;->a:Lk1/a;

    iput-object v1, v0, Ls1/k;->a:Lk1/a;

    iget-object v1, p0, Ls1/j;->b:Lk1/a;

    iput-object v1, v0, Ls1/k;->b:Lk1/a;

    iget-object v1, p0, Ls1/j;->c:Lk1/a;

    iput-object v1, v0, Ls1/k;->c:Lk1/a;

    iget-object v1, p0, Ls1/j;->d:Lk1/a;

    iput-object v1, v0, Ls1/k;->d:Lk1/a;

    iget-object v1, p0, Ls1/j;->e:Ls1/c;

    iput-object v1, v0, Ls1/k;->e:Ls1/c;

    iget-object v1, p0, Ls1/j;->f:Ls1/c;

    iput-object v1, v0, Ls1/k;->f:Ls1/c;

    iget-object v1, p0, Ls1/j;->g:Ls1/c;

    iput-object v1, v0, Ls1/k;->g:Ls1/c;

    iget-object v1, p0, Ls1/j;->h:Ls1/c;

    iput-object v1, v0, Ls1/k;->h:Ls1/c;

    iget-object v1, p0, Ls1/j;->i:Ls1/e;

    iput-object v1, v0, Ls1/k;->i:Ls1/e;

    iget-object v1, p0, Ls1/j;->j:Ls1/e;

    iput-object v1, v0, Ls1/k;->j:Ls1/e;

    iget-object v1, p0, Ls1/j;->k:Ls1/e;

    iput-object v1, v0, Ls1/k;->k:Ls1/e;

    iget-object v1, p0, Ls1/j;->l:Ls1/e;

    iput-object v1, v0, Ls1/k;->l:Ls1/e;

    return-object v0
.end method
