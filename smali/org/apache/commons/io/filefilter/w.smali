.class public interface abstract Lorg/apache/commons/io/filefilter/w;
.super Ljava/lang/Object;
.source "IOFileFilter.java"

# interfaces
.implements Ljava/io/FileFilter;
.implements Ljava/io/FilenameFilter;
.implements Lorg/apache/commons/io/file/f;


# static fields
.field public static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sput-object v0, Lorg/apache/commons/io/filefilter/w;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
.end method

.method public abstract accept(Ljava/io/File;)Z
.end method

.method public abstract accept(Ljava/io/File;Ljava/lang/String;)Z
.end method

.method public abstract and(Lorg/apache/commons/io/filefilter/w;)Lorg/apache/commons/io/filefilter/w;
.end method

.method public abstract negate()Lorg/apache/commons/io/filefilter/w;
.end method
