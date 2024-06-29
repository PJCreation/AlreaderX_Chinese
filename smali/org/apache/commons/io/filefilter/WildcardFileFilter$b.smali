.class public Lorg/apache/commons/io/filefilter/WildcardFileFilter$b;
.super Lorg/apache/commons/io/n/d;
.source "WildcardFileFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/filefilter/WildcardFileFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/n/d<",
        "Lorg/apache/commons/io/filefilter/WildcardFileFilter;",
        "Lorg/apache/commons/io/filefilter/WildcardFileFilter$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Lorg/apache/commons/io/IOCase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/n/d;-><init>()V

    .line 2
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter$b;->b:Lorg/apache/commons/io/IOCase;

    return-void
.end method


# virtual methods
.method public b()Lorg/apache/commons/io/filefilter/WildcardFileFilter;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/commons/io/filefilter/WildcardFileFilter;

    iget-object v1, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter$b;->b:Lorg/apache/commons/io/IOCase;

    iget-object v2, p0, Lorg/apache/commons/io/filefilter/WildcardFileFilter$b;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Lorg/apache/commons/io/IOCase;[Ljava/lang/String;Lorg/apache/commons/io/filefilter/WildcardFileFilter$a;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/filefilter/WildcardFileFilter$b;->b()Lorg/apache/commons/io/filefilter/WildcardFileFilter;

    move-result-object v0

    return-object v0
.end method
