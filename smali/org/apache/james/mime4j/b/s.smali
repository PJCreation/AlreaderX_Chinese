.class public Lorg/apache/james/mime4j/b/s;
.super Lorg/apache/james/mime4j/b/t;
.source "DefaultFieldParser.java"


# static fields
.field private static final c:Lorg/apache/james/mime4j/dom/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/d<",
            "Lorg/apache/james/mime4j/dom/field/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/james/mime4j/b/s;

    invoke-direct {v0}, Lorg/apache/james/mime4j/b/s;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/b/s;->c:Lorg/apache/james/mime4j/dom/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/b/b0;->c:Lorg/apache/james/mime4j/dom/d;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/b/t;-><init>(Lorg/apache/james/mime4j/dom/d;)V

    .line 2
    sget-object v0, Lorg/apache/james/mime4j/b/o;->c:Lorg/apache/james/mime4j/dom/d;

    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    .line 3
    sget-object v0, Lorg/apache/james/mime4j/b/j;->c:Lorg/apache/james/mime4j/dom/d;

    const-string v1, "Content-Length"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    .line 4
    sget-object v0, Lorg/apache/james/mime4j/b/n;->c:Lorg/apache/james/mime4j/dom/d;

    const-string v1, "Content-Transfer-Encoding"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    .line 5
    sget-object v0, Lorg/apache/james/mime4j/b/e;->c:Lorg/apache/james/mime4j/dom/d;

    const-string v1, "Content-Disposition"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    .line 6
    sget-object v0, Lorg/apache/james/mime4j/b/g;->c:Lorg/apache/james/mime4j/dom/d;

    const-string v1, "Content-ID"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    .line 7
    sget-object v0, Lorg/apache/james/mime4j/b/m;->c:Lorg/apache/james/mime4j/dom/d;

    const-string v1, "Content-MD5"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    .line 8
    sget-object v0, Lorg/apache/james/mime4j/b/d;->c:Lorg/apache/james/mime4j/dom/d;

    const-string v1, "Content-Description"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    .line 9
    sget-object v0, Lorg/apache/james/mime4j/b/h;->c:Lorg/apache/james/mime4j/dom/d;

    const-string v1, "Content-Language"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    .line 10
    sget-object v0, Lorg/apache/james/mime4j/b/k;->d:Lorg/apache/james/mime4j/dom/d;

    const-string v1, "Content-Location"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    .line 11
    sget-object v0, Lorg/apache/james/mime4j/b/z;->c:Lorg/apache/james/mime4j/dom/d;

    const-string v1, "MIME-Version"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    .line 12
    sget-object v0, Lorg/apache/james/mime4j/b/q;->c:Lorg/apache/james/mime4j/dom/d;

    const-string v1, "Date"

    .line 13
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    const-string v1, "Resent-Date"

    .line 14
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    .line 15
    sget-object v0, Lorg/apache/james/mime4j/b/x;->c:Lorg/apache/james/mime4j/dom/d;

    const-string v1, "From"

    .line 16
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    const-string v1, "Resent-From"

    .line 17
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    .line 18
    sget-object v0, Lorg/apache/james/mime4j/b/v;->c:Lorg/apache/james/mime4j/dom/d;

    const-string v1, "Sender"

    .line 19
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    const-string v1, "Resent-Sender"

    .line 20
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    .line 21
    sget-object v0, Lorg/apache/james/mime4j/b/b;->c:Lorg/apache/james/mime4j/dom/d;

    const-string v1, "To"

    .line 22
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    const-string v1, "Resent-To"

    .line 23
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    const-string v1, "Cc"

    .line 24
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    const-string v1, "Resent-Cc"

    .line 25
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    const-string v1, "Bcc"

    .line 26
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    const-string v1, "Resent-Bcc"

    .line 27
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    const-string v1, "Reply-To"

    .line 28
    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/b/t;->c(Ljava/lang/String;Lorg/apache/james/mime4j/dom/d;)V

    return-void
.end method

.method public static d()Lorg/apache/james/mime4j/dom/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/james/mime4j/dom/d<",
            "Lorg/apache/james/mime4j/dom/field/a0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/b/s;->c:Lorg/apache/james/mime4j/dom/d;

    return-object v0
.end method
