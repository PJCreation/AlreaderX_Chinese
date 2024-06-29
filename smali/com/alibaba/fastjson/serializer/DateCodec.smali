.class public final Lcom/alibaba/fastjson/serializer/DateCodec;
.super Ljava/lang/Object;
.source "DateCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/DateCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/DateCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/DateCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 p3, 0x0

    if-nez p4, :cond_0

    return-object p3

    .line 1
    :cond_0
    instance-of v0, p4, Ljava/util/Date;

    if-eqz v0, :cond_1

    return-object p4

    .line 2
    :cond_1
    instance-of v0, p4, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 3
    new-instance p1, Ljava/util/Date;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    return-object p1

    .line 4
    :cond_2
    instance-of v0, p4, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 5
    check-cast p4, Ljava/lang/String;

    .line 6
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    return-object p3

    .line 7
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v0, p4}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9
    iget-object p1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 10
    const-class p3, Ljava/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, p3, :cond_4

    .line 11
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    return-object p1

    .line 12
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    return-object p1

    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    const-string p2, "0000-00-00"

    .line 14
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "0000-00-00T00:00:00"

    .line 15
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "0001-01-01T00:00:00+08:00"

    .line 16
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    if-eqz p5, :cond_7

    .line 17
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, p5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFormat()Ljava/text/DateFormat;

    move-result-object p1

    .line 19
    :goto_0
    :try_start_2
    invoke-virtual {p1, p4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    .line 20
    :catch_0
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 21
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, p1, p2}, Ljava/util/Date;-><init>(J)V

    :cond_8
    :goto_1
    return-object p3

    :catchall_0
    move-exception p1

    .line 22
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 23
    throw p1

    .line 24
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "parse error"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/serializer/DateCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x10

    if-ne v1, v3, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    :cond_0
    :goto_0
    move-object v7, v1

    goto/16 :goto_1

    :cond_1
    const/4 v5, 0x4

    if-ne v1, v5, :cond_4

    .line 6
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 8
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    iget v4, v4, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 9
    new-instance v3, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 10
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    iget-object v1, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 12
    const-class v4, Ljava/util/Calendar;

    if-ne p2, v4, :cond_2

    .line 13
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    return-object v1

    .line 14
    :cond_2
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 15
    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    goto :goto_0

    :cond_4
    const/16 v6, 0x8

    if-ne v1, v6, :cond_5

    .line 16
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object v7, v2

    goto/16 :goto_1

    :cond_5
    const/16 v6, 0xc

    const/16 v7, 0xd

    const/16 v8, 0x11

    const-string v9, "syntax error"

    if-ne v1, v6, :cond_a

    .line 17
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 18
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v5, :cond_9

    .line 19
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    const-string v6, "@type"

    .line 20
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 21
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 22
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 23
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 24
    iget-object v6, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    invoke-virtual {v6, v1, v2, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object p2, v1

    .line 25
    :cond_6
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 26
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    :cond_7
    const/16 v1, 0x3a

    .line 27
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 28
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v3, :cond_8

    .line 29
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v3

    .line 30
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 31
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 32
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto/16 :goto_0

    .line 33
    :cond_8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "syntax error : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_a
    iget v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    if-ne v1, v3, :cond_d

    const/4 v1, 0x0

    .line 36
    iput v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 37
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 38
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v5, :cond_c

    .line 39
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    const-string v3, "val"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 40
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 41
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 42
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 43
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto/16 :goto_0

    .line 44
    :cond_b
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_c
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_d
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    :goto_1
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    .line 47
    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/fastjson/serializer/DateCodec;->cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 48
    const-class p3, Ljava/util/Calendar;

    if-ne p2, p3, :cond_10

    .line 49
    instance-of p2, p1, Ljava/util/Calendar;

    if-eqz p2, :cond_e

    return-object p1

    .line 50
    :cond_e
    check-cast p1, Ljava/util/Date;

    if-nez p1, :cond_f

    return-object v2

    .line 51
    :cond_f
    iget-object p2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    iget-object p3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-static {p2, p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    .line 52
    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p2

    :cond_10
    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 3
    :cond_0
    iget v3, v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v4, p4

    if-eq v3, v4, :cond_2

    .line 5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/util/Date;

    if-ne v3, v4, :cond_1

    const-string v0, "new Date("

    .line 6
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 7
    move-object v0, v1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    const/16 v0, 0x29

    .line 8
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x7b

    .line 9
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const-string v3, "@type"

    const/4 v4, 0x0

    .line 10
    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 11
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    const/16 v0, 0x2c

    .line 12
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const-string v0, "val"

    .line 13
    invoke-virtual {v2, v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 14
    move-object v0, v1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    const/16 v0, 0x7d

    .line 15
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_0
    return-void

    .line 16
    :cond_2
    instance-of v3, v1, Ljava/util/Calendar;

    if-eqz v3, :cond_3

    .line 17
    check-cast v1, Ljava/util/Calendar;

    .line 18
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    goto :goto_1

    .line 19
    :cond_3
    check-cast v1, Ljava/util/Date;

    .line 20
    :goto_1
    iget v3, v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v3

    if-nez v3, :cond_4

    .line 22
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 23
    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 24
    :cond_4
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 26
    :cond_5
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 27
    iget v1, v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_a

    .line 28
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v6

    const/16 v6, 0x27

    const/16 v7, 0x22

    if-eqz v1, :cond_6

    .line 29
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 30
    :cond_6
    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 31
    :goto_2
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    invoke-static {v1, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 34
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v1

    const/4 v1, 0x5

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v8, 0xb

    .line 36
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v9, 0xc

    .line 37
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v10, 0xd

    .line 38
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v12, 0xe

    .line 39
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v12, 0x10

    const/16 v13, 0x13

    const/16 v7, 0xa

    if-eqz v0, :cond_7

    const-string v16, "0000-00-00T00:00:00.000"

    .line 40
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    int-to-long v14, v0

    const/16 v0, 0x17

    .line 41
    invoke-static {v14, v15, v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v14, v11

    .line 42
    invoke-static {v14, v15, v13, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v13, v9

    .line 43
    invoke-static {v13, v14, v12, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v8, v8

    .line 44
    invoke-static {v8, v9, v10, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v0, v1

    .line 45
    invoke-static {v0, v1, v7, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v0, v4

    const/4 v4, 0x7

    .line 46
    invoke-static {v0, v1, v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v0, v3

    const/4 v3, 0x4

    .line 47
    invoke-static {v0, v1, v3, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    goto :goto_3

    :cond_7
    if-nez v11, :cond_8

    if-nez v9, :cond_8

    if-nez v8, :cond_8

    const-string v0, "0000-00-00"

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    int-to-long v0, v1

    .line 49
    invoke-static {v0, v1, v7, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v0, v4

    const/4 v4, 0x7

    .line 50
    invoke-static {v0, v1, v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v0, v3

    const/4 v3, 0x4

    .line 51
    invoke-static {v0, v1, v3, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    goto :goto_3

    :cond_8
    const-string v0, "0000-00-00T00:00:00"

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    int-to-long v14, v11

    .line 53
    invoke-static {v14, v15, v13, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v13, v9

    .line 54
    invoke-static {v13, v14, v12, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v8, v8

    .line 55
    invoke-static {v8, v9, v10, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v0, v1

    .line 56
    invoke-static {v0, v1, v7, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v0, v4

    const/4 v4, 0x7

    .line 57
    invoke-static {v0, v1, v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    int-to-long v0, v3

    const/4 v3, 0x4

    .line 58
    invoke-static {v0, v1, v3, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 59
    :goto_3
    invoke-virtual {v2, v6}, Ljava/io/Writer;->write([C)V

    .line 60
    iget v0, v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    iget v1, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/16 v0, 0x27

    .line 61
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_4

    :cond_9
    const/16 v0, 0x22

    .line 62
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_4

    .line 63
    :cond_a
    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    :goto_4
    return-void
.end method
