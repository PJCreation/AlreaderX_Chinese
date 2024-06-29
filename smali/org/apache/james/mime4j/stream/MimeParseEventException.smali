.class public Lorg/apache/james/mime4j/stream/MimeParseEventException;
.super Lorg/apache/james/mime4j/MimeException;
.source "MimeParseEventException.java"


# static fields
.field private static final serialVersionUID:J = 0x404bb151428032ceL


# instance fields
.field private final e:Lorg/apache/james/mime4j/stream/g;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/stream/g;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/MimeParseEventException;->e:Lorg/apache/james/mime4j/stream/g;

    return-void
.end method


# virtual methods
.method public getEvent()Lorg/apache/james/mime4j/stream/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeParseEventException;->e:Lorg/apache/james/mime4j/stream/g;

    return-object v0
.end method
