.class public Lorg/apache/james/mime4j/dom/address/AddressList;
.super Ljava/util/AbstractList;
.source "AddressList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lorg/apache/james/mime4j/dom/address/Address;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/dom/address/AddressList;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lorg/apache/james/mime4j/dom/address/AddressList;->e:Ljava/util/List;

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/dom/address/AddressList;->e:Ljava/util/List;

    :goto_1
    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/james/mime4j/dom/address/Address;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    if-eqz p1, :cond_0

    .line 6
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/dom/address/AddressList;->e:Ljava/util/List;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/dom/address/AddressList;->e:Ljava/util/List;

    :goto_0
    return-void
.end method


# virtual methods
.method public flatten()Lorg/apache/james/mime4j/dom/address/MailboxList;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/AddressList;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/dom/address/Address;

    .line 2
    instance-of v1, v1, Lorg/apache/james/mime4j/dom/address/Mailbox;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/AddressList;->e:Ljava/util/List;

    .line 4
    new-instance v1, Lorg/apache/james/mime4j/dom/address/MailboxList;

    invoke-direct {v1, v0, v2}, Lorg/apache/james/mime4j/dom/address/MailboxList;-><init>(Ljava/util/List;Z)V

    return-object v1

    .line 5
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lorg/apache/james/mime4j/dom/address/AddressList;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/dom/address/Address;

    .line 7
    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/dom/address/Address;->a(Ljava/util/List;)V

    goto :goto_1

    .line 8
    :cond_3
    new-instance v1, Lorg/apache/james/mime4j/dom/address/MailboxList;

    invoke-direct {v1, v0, v3}, Lorg/apache/james/mime4j/dom/address/MailboxList;-><init>(Ljava/util/List;Z)V

    return-object v1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/dom/address/AddressList;->get(I)Lorg/apache/james/mime4j/dom/address/Address;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/apache/james/mime4j/dom/address/Address;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/AddressList;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/james/mime4j/dom/address/Address;

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/AddressList;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
