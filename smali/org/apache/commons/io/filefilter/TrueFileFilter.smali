.class public Lorg/apache/commons/io/filefilter/TrueFileFilter;
.super Ljava/lang/Object;
.source "TrueFileFilter.java"

# interfaces
.implements Lorg/apache/commons/io/filefilter/w;
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/io/filefilter/w;

.field public static final TRUE:Lorg/apache/commons/io/filefilter/w;

.field private static final e:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x79e1c04752927a87L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/filefilter/TrueFileFilter;->e:Ljava/lang/String;

    .line 2
    new-instance v0, Lorg/apache/commons/io/filefilter/TrueFileFilter;

    invoke-direct {v0}, Lorg/apache/commons/io/filefilter/TrueFileFilter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/filefilter/TrueFileFilter;->TRUE:Lorg/apache/commons/io/filefilter/w;

    .line 3
    sput-object v0, Lorg/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/w;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 1
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1
.end method

.method public accept(Ljava/io/File;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public and(Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;
    .locals 0

    return-object p1
.end method

.method public negate()Lorg/apache/commons/io/filefilter/w;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/filefilter/FalseFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/w;

    return-object v0
.end method

.method public or(Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;
    .locals 0

    .line 1
    sget-object p1, Lorg/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/w;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/filefilter/TrueFileFilter;->e:Ljava/lang/String;

    return-object v0
.end method
