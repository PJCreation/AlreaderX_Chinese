.class public Lorg/apache/james/mime4j/e/b;
.super Ljava/lang/Object;
.source "MimeStreamParser.java"


# instance fields
.field private a:Lorg/apache/james/mime4j/e/a;

.field private b:Z

.field private final c:Lorg/apache/james/mime4j/stream/m;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/stream/k;Lorg/apache/james/mime4j/codec/c;Lorg/apache/james/mime4j/stream/c;)V
    .locals 1

    .line 5
    new-instance v0, Lorg/apache/james/mime4j/stream/m;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/james/mime4j/stream/k;->b:Lorg/apache/james/mime4j/stream/k;

    :goto_0
    invoke-direct {v0, p1, p2, p3}, Lorg/apache/james/mime4j/stream/m;-><init>(Lorg/apache/james/mime4j/stream/k;Lorg/apache/james/mime4j/codec/c;Lorg/apache/james/mime4j/stream/c;)V

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/e/b;-><init>(Lorg/apache/james/mime4j/stream/m;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/stream/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/james/mime4j/e/b;->a:Lorg/apache/james/mime4j/e/a;

    .line 3
    iput-object p1, p0, Lorg/apache/james/mime4j/e/b;->c:Lorg/apache/james/mime4j/stream/m;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lorg/apache/james/mime4j/e/b;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/e/b;->c:Lorg/apache/james/mime4j/stream/m;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/m;->c()Lorg/apache/james/mime4j/stream/k;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/k;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lorg/apache/james/mime4j/e/b;->c:Lorg/apache/james/mime4j/stream/m;

    .line 4
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/k;->b()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v1, p1, v0}, Lorg/apache/james/mime4j/stream/m;->j(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/james/mime4j/stream/i;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lorg/apache/james/mime4j/e/b;->a:Lorg/apache/james/mime4j/e/a;

    invoke-interface {v0}, Lorg/apache/james/mime4j/e/a;->h()V

    .line 7
    iget-object v0, p0, Lorg/apache/james/mime4j/e/b;->a:Lorg/apache/james/mime4j/e/a;

    invoke-interface {v0}, Lorg/apache/james/mime4j/e/a;->i()V

    .line 8
    iget-object v0, p0, Lorg/apache/james/mime4j/e/b;->a:Lorg/apache/james/mime4j/e/a;

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/e/a;->b(Lorg/apache/james/mime4j/stream/i;)V

    .line 9
    iget-object p1, p0, Lorg/apache/james/mime4j/e/b;->a:Lorg/apache/james/mime4j/e/a;

    invoke-interface {p1}, Lorg/apache/james/mime4j/e/a;->k()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/e/b;->c:Lorg/apache/james/mime4j/stream/m;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/stream/m;->i(Ljava/io/InputStream;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lorg/apache/james/mime4j/e/b;->c:Lorg/apache/james/mime4j/stream/m;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/m;->g()Lorg/apache/james/mime4j/stream/EntityState;

    move-result-object p1

    .line 12
    sget-object v0, Lorg/apache/james/mime4j/e/b$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :pswitch_0
    iget-object p1, p0, Lorg/apache/james/mime4j/e/b;->a:Lorg/apache/james/mime4j/e/a;

    iget-object v0, p0, Lorg/apache/james/mime4j/e/b;->c:Lorg/apache/james/mime4j/stream/m;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/m;->b()Lorg/apache/james/mime4j/stream/b;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/james/mime4j/e/a;->e(Lorg/apache/james/mime4j/stream/b;)V

    goto/16 :goto_2

    .line 15
    :pswitch_1
    iget-object p1, p0, Lorg/apache/james/mime4j/e/b;->a:Lorg/apache/james/mime4j/e/a;

    invoke-interface {p1}, Lorg/apache/james/mime4j/e/a;->h()V

    goto/16 :goto_2

    .line 16
    :pswitch_2
    iget-object p1, p0, Lorg/apache/james/mime4j/e/b;->a:Lorg/apache/james/mime4j/e/a;

    invoke-interface {p1}, Lorg/apache/james/mime4j/e/a;->i()V

    goto/16 :goto_2

    .line 17
    :pswitch_3
    iget-object p1, p0, Lorg/apache/james/mime4j/e/b;->a:Lorg/apache/james/mime4j/e/a;

    invoke-interface {p1}, Lorg/apache/james/mime4j/e/a;->l()V

    goto :goto_2

    .line 18
    :pswitch_4
    iget-object p1, p0, Lorg/apache/james/mime4j/e/b;->a:Lorg/apache/james/mime4j/e/a;

    iget-object v0, p0, Lorg/apache/james/mime4j/e/b;->c:Lorg/apache/james/mime4j/stream/m;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/m;->f()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/james/mime4j/e/a;->j(Ljava/io/InputStream;)V

    goto :goto_2

    .line 19
    :pswitch_5
    iget-object p1, p0, Lorg/apache/james/mime4j/e/b;->a:Lorg/apache/james/mime4j/e/a;

    iget-object v0, p0, Lorg/apache/james/mime4j/e/b;->c:Lorg/apache/james/mime4j/stream/m;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/m;->f()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/james/mime4j/e/a;->f(Ljava/io/InputStream;)V

    goto :goto_2

    .line 20
    :pswitch_6
    iget-object p1, p0, Lorg/apache/james/mime4j/e/b;->a:Lorg/apache/james/mime4j/e/a;

    iget-object v0, p0, Lorg/apache/james/mime4j/e/b;->c:Lorg/apache/james/mime4j/stream/m;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/m;->e()Lorg/apache/james/mime4j/stream/i;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/james/mime4j/e/a;->b(Lorg/apache/james/mime4j/stream/i;)V

    goto :goto_2

    .line 21
    :pswitch_7
    iget-object p1, p0, Lorg/apache/james/mime4j/e/b;->a:Lorg/apache/james/mime4j/e/a;

    iget-object v0, p0, Lorg/apache/james/mime4j/e/b;->c:Lorg/apache/james/mime4j/stream/m;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/m;->f()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/james/mime4j/e/a;->c(Ljava/io/InputStream;)V

    goto :goto_2

    :pswitch_8
    return-void

    .line 22
    :pswitch_9
    iget-object p1, p0, Lorg/apache/james/mime4j/e/b;->a:Lorg/apache/james/mime4j/e/a;

    invoke-interface {p1}, Lorg/apache/james/mime4j/e/a;->m()V

    goto :goto_2

    .line 23
    :pswitch_a
    iget-object p1, p0, Lorg/apache/james/mime4j/e/b;->a:Lorg/apache/james/mime4j/e/a;

    invoke-interface {p1}, Lorg/apache/james/mime4j/e/a;->g()V

    goto :goto_2

    .line 24
    :pswitch_b
    iget-object p1, p0, Lorg/apache/james/mime4j/e/b;->a:Lorg/apache/james/mime4j/e/a;

    invoke-interface {p1}, Lorg/apache/james/mime4j/e/a;->k()V

    goto :goto_2

    .line 25
    :pswitch_c
    iget-object p1, p0, Lorg/apache/james/mime4j/e/b;->a:Lorg/apache/james/mime4j/e/a;

    invoke-interface {p1}, Lorg/apache/james/mime4j/e/a;->a()V

    goto :goto_2

    .line 26
    :pswitch_d
    iget-object p1, p0, Lorg/apache/james/mime4j/e/b;->c:Lorg/apache/james/mime4j/stream/m;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/m;->b()Lorg/apache/james/mime4j/stream/b;

    move-result-object p1

    .line 27
    iget-boolean v0, p0, Lorg/apache/james/mime4j/e/b;->b:Z

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lorg/apache/james/mime4j/e/b;->c:Lorg/apache/james/mime4j/stream/m;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/m;->d()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 29
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/e/b;->c:Lorg/apache/james/mime4j/stream/m;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/m;->f()Ljava/io/InputStream;

    move-result-object v0

    .line 30
    :goto_1
    iget-object v1, p0, Lorg/apache/james/mime4j/e/b;->a:Lorg/apache/james/mime4j/e/a;

    invoke-interface {v1, p1, v0}, Lorg/apache/james/mime4j/e/a;->d(Lorg/apache/james/mime4j/stream/b;Ljava/io/InputStream;)V

    .line 31
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 32
    :goto_2
    iget-object p1, p0, Lorg/apache/james/mime4j/e/b;->c:Lorg/apache/james/mime4j/stream/m;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/m;->h()Lorg/apache/james/mime4j/stream/EntityState;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/james/mime4j/e/b;->b:Z

    return-void
.end method

.method public c(Lorg/apache/james/mime4j/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/james/mime4j/e/b;->a:Lorg/apache/james/mime4j/e/a;

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/e/b;->c:Lorg/apache/james/mime4j/stream/m;

    sget-object v1, Lorg/apache/james/mime4j/stream/RecursionMode;->M_FLAT:Lorg/apache/james/mime4j/stream/RecursionMode;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/stream/m;->k(Lorg/apache/james/mime4j/stream/RecursionMode;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/e/b;->c:Lorg/apache/james/mime4j/stream/m;

    sget-object v1, Lorg/apache/james/mime4j/stream/RecursionMode;->M_RECURSE:Lorg/apache/james/mime4j/stream/RecursionMode;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/stream/m;->k(Lorg/apache/james/mime4j/stream/RecursionMode;)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/e/b;->c:Lorg/apache/james/mime4j/stream/m;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/m;->l()V

    return-void
.end method
