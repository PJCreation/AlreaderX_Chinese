.class public Lorg/apache/james/mime4j/dom/address/Group;
.super Lorg/apache/james/mime4j/dom/address/Address;
.source "Group.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Lorg/apache/james/mime4j/dom/address/MailboxList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lorg/apache/james/mime4j/dom/address/Mailbox;",
            ">;)V"
        }
    .end annotation

    .line 7
    new-instance v0, Lorg/apache/james/mime4j/dom/address/MailboxList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x1

    invoke-direct {v0, v1, p2}, Lorg/apache/james/mime4j/dom/address/MailboxList;-><init>(Ljava/util/List;Z)V

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/dom/address/Group;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/MailboxList;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/MailboxList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/james/mime4j/dom/address/Address;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    iput-object p1, p0, Lorg/apache/james/mime4j/dom/address/Group;->e:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/apache/james/mime4j/dom/address/Group;->f:Lorg/apache/james/mime4j/dom/address/MailboxList;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lorg/apache/james/mime4j/dom/address/Mailbox;)V
    .locals 2

    .line 6
    new-instance v0, Lorg/apache/james/mime4j/dom/address/MailboxList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lorg/apache/james/mime4j/dom/address/MailboxList;-><init>(Ljava/util/List;Z)V

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/dom/address/Group;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/MailboxList;)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/james/mime4j/dom/address/Mailbox;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/Group;->f:Lorg/apache/james/mime4j/dom/address/MailboxList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getMailboxes()Lorg/apache/james/mime4j/dom/address/MailboxList;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/Group;->f:Lorg/apache/james/mime4j/dom/address/MailboxList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/Group;->e:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/apache/james/mime4j/dom/address/Group;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lorg/apache/james/mime4j/dom/address/Group;->f:Lorg/apache/james/mime4j/dom/address/MailboxList;

    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/james/mime4j/dom/address/Mailbox;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/16 v4, 0x2c

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v4, 0x20

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, ";"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
