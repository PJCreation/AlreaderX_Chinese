.class public Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
.super Ljava/lang/Object;
.source "JavaBeanDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field private final alterNameFieldDeserializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field public final beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

.field private transient smartMatchHashArray:[J

.field private transient smartMatchHashArrayMapping:[I

.field private final sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    iget-object v7, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->build(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/JavaBeanInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/JavaBeanInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/JavaBeanInfo;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .line 4
    iput-object p4, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 5
    iget-object p3, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, p3

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 6
    array-length p3, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_2

    .line 7
    iget-object v3, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v3, v3, v2

    .line 8
    invoke-virtual {p1, p1, p2, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    .line 9
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v4, v5, v2

    .line 10
    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    array-length v5, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    if-nez v1, :cond_0

    .line 11
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 12
    :cond_0
    invoke-interface {v1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    .line 14
    iget-object p1, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length p2, p1

    new-array p2, p2, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 15
    array-length p1, p1

    :goto_2
    if-ge v0, p1, :cond_3

    .line 16
    iget-object p2, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object p2, p2, v0

    .line 17
    iget-object p2, p2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object p2

    .line 18
    iget-object p3, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object p2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    .line 2
    const-class v10, Ljava/lang/Double;

    const-class v11, Ljava/lang/Float;

    const-class v12, Ljava/lang/Long;

    const-class v13, Ljava/lang/Integer;

    const-class v1, Lcom/alibaba/fastjson/JSON;

    if-eq v0, v1, :cond_81

    const-class v1, Lcom/alibaba/fastjson/JSONObject;

    if-ne v0, v1, :cond_0

    goto/16 :goto_49

    .line 3
    :cond_0
    iget-object v14, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 4
    iget v1, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v2, 0x8

    const/16 v15, 0x10

    const/4 v6, 0x0

    if-ne v1, v2, :cond_1

    .line 5
    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-object v6

    .line 6
    :cond_1
    iget-boolean v5, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    .line 7
    iget-object v2, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz p4, :cond_2

    if-eqz v2, :cond_2

    .line 8
    iget-object v2, v2, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_2
    move-object v4, v2

    const/16 v3, 0xd

    if-ne v1, v3, :cond_4

    .line 9
    :try_start_0
    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    if-nez p4, :cond_3

    .line 10
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p4

    .line 11
    :goto_0
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v10, p4

    :goto_1
    move-object v11, v4

    goto/16 :goto_48

    :cond_4
    const/16 v2, 0xe

    if-ne v1, v2, :cond_7

    .line 12
    :try_start_1
    iget-object v2, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-boolean v2, v2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->supportBeanToArray:Z

    if-nez v2, :cond_6

    iget v2, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_7

    .line 13
    invoke-direct/range {p0 .. p4}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    :cond_7
    const/16 v2, 0xc

    const/4 v3, 0x4

    if-eq v1, v2, :cond_b

    if-eq v1, v15, :cond_b

    .line 15
    :try_start_2
    invoke-virtual {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_8

    .line 16
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v6

    :cond_8
    if-ne v1, v3, :cond_9

    .line 17
    :try_start_3
    invoke-virtual {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 19
    invoke-virtual {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v6

    .line 21
    :cond_9
    :try_start_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "syntax error, expect {, actual "

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    invoke-virtual {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    instance-of v1, v9, Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v1, ", fieldName "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 27
    :cond_a
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 28
    :cond_b
    :try_start_5
    iget v1, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_14

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    const/4 v2, 0x0

    .line 29
    :try_start_6
    iput v2, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    .line 30
    :goto_4
    :try_start_7
    iget-object v1, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 31
    iget-object v2, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v2, v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_14

    const-wide/16 v19, 0x0

    move-object/from16 v21, p4

    move-object/from16 v22, v4

    move-object/from16 v25, v6

    move-object/from16 v26, v25

    move-wide/from16 v3, v19

    const/4 v6, 0x0

    :goto_5
    cmp-long v27, v3, v19

    if-eqz v27, :cond_e

    .line 32
    :try_start_8
    invoke-virtual {v7, v3, v4}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializerByHash(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 33
    iget-object v4, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 34
    iget-object v15, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    goto :goto_6

    :cond_d
    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_6
    move-wide/from16 v28, v19

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    :goto_7
    move-object/from16 v6, v25

    goto/16 :goto_48

    :cond_e
    move-wide/from16 v28, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_8
    if-nez v3, :cond_10

    if-ge v6, v2, :cond_f

    .line 35
    iget-object v3, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v3, v3, v6

    .line 36
    iget-object v4, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 37
    iget-object v15, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    :cond_f
    add-int/lit8 v6, v6, 0x1

    :cond_10
    move-object/from16 v42, v15

    move v15, v6

    move-object/from16 v6, v42

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    if-eqz v3, :cond_35

    move-object/from16 v33, v1

    .line 38
    iget-wide v0, v4, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    move/from16 v34, v2

    .line 39
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move/from16 p4, v15

    const/4 v15, -0x2

    if-eq v6, v2, :cond_32

    if-ne v6, v13, :cond_11

    goto/16 :goto_14

    .line 40
    :cond_11
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v6, v2, :cond_2f

    if-ne v6, v12, :cond_12

    goto/16 :goto_11

    .line 41
    :cond_12
    const-class v2, Ljava/lang/String;

    if-ne v6, v2, :cond_15

    .line 42
    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldString(J)Ljava/lang/String;

    move-result-object v0

    .line 43
    iget v1, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_13

    :goto_9
    const/4 v2, 0x1

    const/4 v15, 0x1

    :goto_a
    const/16 v35, 0x0

    const/16 v36, 0x0

    :goto_b
    move-wide/from16 v42, v31

    move-object/from16 v32, v0

    move-wide/from16 v30, v19

    goto/16 :goto_13

    :cond_13
    if-ne v1, v15, :cond_14

    .line 44
    iget-wide v3, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_16

    :cond_14
    const/4 v2, 0x0

    const/4 v15, 0x0

    goto :goto_a

    .line 45
    :cond_15
    const-class v2, Ljava/util/Date;

    if-ne v6, v2, :cond_17

    .line 46
    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDate(J)Ljava/util/Date;

    move-result-object v0

    .line 47
    iget v1, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_16

    goto :goto_9

    :cond_16
    if-ne v1, v15, :cond_14

    .line 48
    iget-wide v3, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_16

    .line 49
    :cond_17
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v6, v2, :cond_2d

    const-class v2, Ljava/lang/Boolean;

    if-ne v6, v2, :cond_18

    goto/16 :goto_10

    .line 50
    :cond_18
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v6, v2, :cond_2a

    if-ne v6, v11, :cond_19

    goto/16 :goto_e

    .line 51
    :cond_19
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v6, v2, :cond_28

    if-ne v6, v10, :cond_1a

    goto/16 :goto_d

    .line 52
    :cond_1a
    iget-boolean v2, v4, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    if-eqz v2, :cond_1d

    iget-object v2, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 53
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/fastjson/parser/EnumDeserializer;

    if-eqz v2, :cond_1d

    .line 54
    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldSymbol(J)J

    move-result-wide v0

    .line 55
    iget v2, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v2, :cond_1b

    .line 56
    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    goto :goto_c

    :cond_1b
    if-ne v2, v15, :cond_1c

    .line 57
    iget-wide v3, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_16

    :cond_1c
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    move v15, v2

    const/16 v35, 0x0

    const/16 v36, 0x0

    move v2, v1

    goto :goto_b

    .line 58
    :cond_1d
    const-class v2, [I

    if-ne v6, v2, :cond_1f

    .line 59
    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldIntArray(J)[I

    move-result-object v0

    .line 60
    iget v1, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_1e

    goto :goto_9

    :cond_1e
    if-ne v1, v15, :cond_14

    .line 61
    iget-wide v3, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_16

    .line 62
    :cond_1f
    const-class v2, [F

    if-ne v6, v2, :cond_21

    .line 63
    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldFloatArray(J)[F

    move-result-object v0

    .line 64
    iget v1, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_20

    goto/16 :goto_9

    :cond_20
    if-ne v1, v15, :cond_14

    .line 65
    iget-wide v3, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_16

    .line 66
    :cond_21
    const-class v2, [D

    if-ne v6, v2, :cond_23

    .line 67
    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDoubleArray(J)[D

    move-result-object v0

    .line 68
    iget v1, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_22

    goto/16 :goto_9

    :cond_22
    if-ne v1, v15, :cond_14

    .line 69
    iget-wide v3, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_16

    .line 70
    :cond_23
    const-class v2, [[F

    if-ne v6, v2, :cond_25

    .line 71
    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldFloatArray2(J)[[F

    move-result-object v0

    .line 72
    iget v1, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_24

    goto/16 :goto_9

    :cond_24
    if-ne v1, v15, :cond_14

    .line 73
    iget-wide v3, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_16

    .line 74
    :cond_25
    const-class v2, [[D

    if-ne v6, v2, :cond_27

    .line 75
    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDoubleArray2(J)[[D

    move-result-object v0

    .line 76
    iget v1, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_26

    goto/16 :goto_9

    :cond_26
    if-ne v1, v15, :cond_14

    .line 77
    iget-wide v3, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_16

    .line 78
    :cond_27
    iget-wide v0, v4, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchField(J)Z

    move-result v0

    if-eqz v0, :cond_38

    move-wide/from16 v0, v31

    const/4 v2, 0x1

    goto/16 :goto_17

    .line 79
    :cond_28
    :goto_d
    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDouble(J)D

    move-result-wide v31

    .line 80
    iget v0, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v0, :cond_29

    move-wide/from16 v0, v31

    const/4 v2, 0x1

    const/4 v15, 0x1

    goto/16 :goto_18

    :cond_29
    if-ne v0, v15, :cond_36

    .line 81
    iget-wide v3, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto/16 :goto_16

    .line 82
    :cond_2a
    :goto_e
    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldFloat(J)F

    move-result v30

    .line 83
    iget v0, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v0, :cond_2b

    move/from16 v36, v30

    move-wide/from16 v0, v31

    const/4 v2, 0x1

    const/4 v15, 0x1

    :goto_f
    const/16 v32, 0x0

    const/16 v35, 0x0

    goto/16 :goto_1a

    :cond_2b
    if-ne v0, v15, :cond_2c

    .line 84
    iget-wide v3, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto :goto_16

    :cond_2c
    move/from16 v36, v30

    move-wide/from16 v0, v31

    const/4 v2, 0x0

    const/4 v15, 0x0

    goto :goto_f

    .line 85
    :cond_2d
    :goto_10
    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 86
    iget v1, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_2e

    goto/16 :goto_9

    :cond_2e
    if-ne v1, v15, :cond_14

    .line 87
    iget-wide v3, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto :goto_16

    .line 88
    :cond_2f
    :goto_11
    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldLong(J)J

    move-result-wide v0

    .line 89
    iget v2, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v2, :cond_30

    const/4 v2, 0x1

    const/4 v15, 0x1

    :goto_12
    const/16 v35, 0x0

    const/16 v36, 0x0

    move-wide/from16 v42, v31

    const/16 v32, 0x0

    move-wide/from16 v30, v0

    :goto_13
    move-wide/from16 v0, v42

    goto :goto_1b

    :cond_30
    if-ne v2, v15, :cond_31

    .line 90
    iget-wide v3, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    goto :goto_16

    :cond_31
    const/4 v2, 0x0

    const/4 v15, 0x0

    goto :goto_12

    .line 91
    :cond_32
    :goto_14
    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldInt(J)I

    move-result v0

    .line 92
    iget v1, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v1, :cond_33

    move/from16 v35, v0

    move-wide/from16 v0, v31

    const/4 v2, 0x1

    const/4 v15, 0x1

    :goto_15
    const/16 v32, 0x0

    goto :goto_19

    :cond_33
    if-ne v1, v15, :cond_34

    .line 93
    iget-wide v3, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_16
    move-object/from16 v0, p2

    move/from16 v6, p4

    move-object/from16 v1, v33

    move/from16 v2, v34

    goto/16 :goto_26

    :cond_34
    move/from16 v35, v0

    move-wide/from16 v0, v31

    const/4 v2, 0x0

    const/4 v15, 0x0

    goto :goto_15

    :cond_35
    move-object/from16 v33, v1

    move/from16 v34, v2

    move/from16 p4, v15

    :cond_36
    move-wide/from16 v0, v31

    const/4 v2, 0x0

    :goto_17
    const/4 v15, 0x0

    :goto_18
    const/16 v32, 0x0

    const/16 v35, 0x0

    :goto_19
    const/16 v36, 0x0

    :goto_1a
    move-wide/from16 v30, v19

    :goto_1b
    if-nez v2, :cond_51

    move-object/from16 v37, v4

    .line 94
    :try_start_9
    iget-object v4, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v14, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    if-nez v4, :cond_39

    move-wide/from16 v38, v0

    .line 95
    :try_start_a
    iget v0, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_37

    const/16 v1, 0x10

    .line 96
    invoke-virtual {v14, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v2, p2

    move-object/from16 v41, v22

    move-object/from16 v40, v25

    goto/16 :goto_24

    :cond_37
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3a

    :cond_38
    move-object/from16 v2, p2

    move-object/from16 v41, v22

    move-object/from16 v40, v25

    move-object/from16 v0, v33

    const/16 v3, 0xd

    goto/16 :goto_25

    :cond_39
    move-wide/from16 v38, v0

    :cond_3a
    :try_start_b
    const-string v0, "$ref"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    const/16 v1, 0x3a

    if-ne v0, v4, :cond_44

    if-eqz v22, :cond_44

    .line 97
    :try_start_c
    invoke-virtual {v14, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 98
    iget v0, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_43

    .line 99
    invoke-virtual {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-eqz v1, :cond_3b

    move-object/from16 v1, v22

    .line 101
    :try_start_d
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-object v2, v0

    goto :goto_1f

    :catchall_2
    move-exception v0

    move-object v11, v1

    move-object/from16 v10, v21

    goto/16 :goto_7

    :cond_3b
    move-object/from16 v1, v22

    :try_start_e
    const-string v2, ".."

    .line 102
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v2, :cond_3d

    .line 103
    :try_start_f
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 104
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v3, :cond_3c

    :goto_1c
    move-object/from16 v21, v3

    goto :goto_1d

    .line 105
    :cond_3c
    new-instance v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v3, v2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v0, 0x1

    .line 106
    iput v0, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :goto_1d
    move-object/from16 v2, v21

    goto :goto_1f

    :cond_3d
    :try_start_10
    const-string v2, "$"

    .line 107
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-eqz v2, :cond_40

    move-object v2, v1

    .line 108
    :goto_1e
    :try_start_11
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v3, :cond_3e

    move-object v2, v3

    goto :goto_1e

    .line 109
    :cond_3e
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v3, :cond_3f

    goto :goto_1c

    .line 110
    :cond_3f
    new-instance v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v3, v2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v0, 0x1

    .line 111
    iput v0, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_1d

    .line 112
    :cond_40
    :try_start_12
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v2, v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v0, 0x1

    .line 113
    iput v0, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    goto :goto_1d

    :goto_1f
    const/16 v0, 0xd

    .line 114
    :try_start_13
    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 115
    iget v3, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v3, v0, :cond_42

    const/16 v0, 0x10

    .line 116
    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 117
    invoke-virtual {v8, v1, v2, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    move-object/from16 v3, v25

    if-eqz v3, :cond_41

    .line 118
    iput-object v2, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 119
    :cond_41
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v2

    :cond_42
    move-object/from16 v3, v25

    .line 120
    :try_start_14
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "illegal ref"

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_20

    :catchall_4
    move-exception v0

    move-object/from16 v3, v25

    :goto_20
    move-object v11, v1

    move-object v10, v2

    move-object v6, v3

    goto/16 :goto_48

    :catchall_5
    move-exception v0

    move-object/from16 v3, v25

    goto :goto_21

    :cond_43
    move-object/from16 v1, v22

    move-object/from16 v3, v25

    .line 121
    :try_start_15
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal ref, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :catchall_6
    move-exception v0

    :goto_21
    move-object v11, v1

    move-object v6, v3

    :goto_22
    move-object/from16 v10, v21

    goto/16 :goto_48

    :catchall_7
    move-exception v0

    move-object/from16 v3, v25

    move-object v6, v3

    goto/16 :goto_2a

    :cond_44
    move-object/from16 v41, v22

    move-object/from16 v40, v25

    const/4 v0, 0x1

    if-eqz v33, :cond_45

    move-object/from16 v0, v33

    .line 122
    :try_start_16
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    if-nez v22, :cond_46

    goto :goto_23

    :catchall_8
    move-exception v0

    move-object/from16 v10, v21

    goto/16 :goto_3a

    :cond_45
    move-object/from16 v0, v33

    :goto_23
    :try_start_17
    const-string v1, "@type"
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    if-ne v1, v4, :cond_50

    const/16 v1, 0x3a

    .line 123
    :cond_46
    :try_start_18
    invoke-virtual {v14, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 124
    iget v1, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4f

    .line 125
    invoke-virtual {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    .line 126
    invoke-virtual {v14, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object/from16 v2, p2

    .line 127
    instance-of v3, v2, Ljava/lang/Class;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    if-eqz v3, :cond_48

    :try_start_19
    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 128
    iget v1, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v3, 0xd

    if-ne v1, v3, :cond_47

    .line 129
    invoke-virtual {v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    :goto_24
    move-object/from16 v14, v26

    move-object/from16 v6, v40

    move-object/from16 v11, v41

    const/16 v18, 0x0

    goto/16 :goto_3f

    :cond_47
    :goto_25
    move/from16 v6, p4

    move-object v1, v0

    move-object v0, v2

    move-wide/from16 v3, v28

    move/from16 v2, v34

    move-object/from16 v25, v40

    move-object/from16 v22, v41

    :goto_26
    const/16 v15, 0x10

    goto/16 :goto_5

    .line 130
    :cond_48
    :try_start_1a
    iget-object v3, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v4, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    invoke-virtual {v7, v3, v4, v1}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move-result-object v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    if-nez v3, :cond_4b

    .line 131
    :try_start_1b
    iget-object v3, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v4, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    iget v5, v14, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    invoke-virtual {v3, v1, v4, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v3

    .line 132
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_4a

    if-eqz v3, :cond_49

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_27

    .line 134
    :cond_49
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "type not match"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_4a
    :goto_27
    iget-object v2, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    move-object/from16 v42, v3

    move-object v3, v2

    move-object/from16 v2, v42

    goto :goto_28

    :cond_4b
    const/4 v2, 0x0

    .line 136
    :goto_28
    :try_start_1c
    instance-of v4, v3, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    if-eqz v4, :cond_4c

    .line 137
    :try_start_1d
    check-cast v3, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    const/4 v4, 0x0

    .line 138
    invoke-direct {v3, v8, v2, v9, v4}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v0, :cond_4d

    .line 139
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 140
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    goto :goto_29

    .line 141
    :cond_4c
    :try_start_1e
    invoke-interface {v3, v8, v2, v9}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    :cond_4d
    :goto_29
    move-object/from16 v1, v40

    if-eqz v1, :cond_4e

    move-object/from16 v3, v21

    .line 142
    iput-object v3, v1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    :cond_4e
    move-object/from16 v4, v41

    .line 143
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v2

    :cond_4f
    move-object/from16 v3, v21

    move-object/from16 v1, v40

    move-object/from16 v4, v41

    .line 144
    :try_start_1f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "syntax error"

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    :catchall_9
    move-exception v0

    move-object v6, v1

    move-object v10, v3

    goto/16 :goto_1

    :catchall_a
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v1, v40

    move-object v6, v1

    move-object v10, v3

    goto/16 :goto_3b

    :cond_50
    move-object/from16 v33, v0

    move-object/from16 v16, v4

    move-object/from16 v1, v40

    move-object/from16 v4, v41

    const/16 v22, 0xd

    const/16 v24, 0x0

    move-object/from16 v0, p2

    goto :goto_2b

    :catchall_b
    move-exception v0

    move-object/from16 v1, v40

    move-object v6, v1

    move-object/from16 v10, v21

    goto/16 :goto_3b

    :catchall_c
    move-exception v0

    move-object/from16 v1, v25

    move-object v6, v1

    :goto_2a
    move-object/from16 v10, v21

    move-object/from16 v11, v22

    goto/16 :goto_48

    :cond_51
    move-wide/from16 v38, v0

    move-object/from16 v37, v4

    move-object/from16 v4, v22

    move-object/from16 v1, v25

    const/16 v22, 0xd

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v16, v24

    :goto_2b
    if-nez v21, :cond_54

    if-nez v26, :cond_54

    move-object/from16 v40, v1

    .line 145
    :try_start_20
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    if-nez v1, :cond_52

    move-object/from16 v25, v14

    .line 146
    :try_start_21
    new-instance v14, Ljava/util/HashMap;

    move-object/from16 v41, v10

    iget-object v10, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v10, v10

    invoke-direct {v14, v10}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v26, v14

    goto :goto_2c

    :catchall_d
    move-exception v0

    move-object v10, v1

    goto :goto_2f

    :cond_52
    move-object/from16 v41, v10

    move-object/from16 v25, v14

    :goto_2c
    if-nez v5, :cond_53

    .line 147
    invoke-virtual {v8, v4, v1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v10
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    move-object/from16 v40, v10

    move-object/from16 v14, v26

    move-object v10, v1

    goto :goto_2e

    :cond_53
    move-object v10, v1

    goto :goto_2d

    :catchall_e
    move-exception v0

    move-object v11, v4

    move-object/from16 v10, v21

    goto/16 :goto_47

    :cond_54
    move-object/from16 v40, v1

    move-object/from16 v41, v10

    move-object/from16 v25, v14

    move-object/from16 v10, v21

    :goto_2d
    move-object/from16 v14, v26

    :goto_2e
    if-eqz v2, :cond_6d

    if-nez v15, :cond_55

    .line 148
    :try_start_22
    invoke-virtual {v3, v8, v10, v0, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    move/from16 v21, v5

    move-object/from16 v16, v11

    move-object/from16 v0, v25

    move-object/from16 v23, v33

    move/from16 v17, v34

    move-object/from16 v15, v41

    const/16 v18, 0x0

    const/16 v22, 0x4

    move-object v11, v4

    move-object/from16 v25, v10

    const/16 v10, 0xd

    goto/16 :goto_3d

    :catchall_f
    move-exception v0

    :goto_2f
    move-object v11, v4

    goto/16 :goto_47

    :cond_55
    if-nez v10, :cond_5e

    .line 149
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v6, v1, :cond_5d

    if-ne v6, v13, :cond_56

    goto :goto_33

    .line 150
    :cond_56
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v6, v1, :cond_5c

    if-ne v6, v12, :cond_57

    goto :goto_32

    .line 151
    :cond_57
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v6, v1, :cond_5b

    if-ne v6, v11, :cond_58

    goto :goto_31

    .line 152
    :cond_58
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v15, v41

    if-eq v6, v1, :cond_5a

    if-ne v6, v15, :cond_59

    goto :goto_30

    :cond_59
    move-object/from16 v1, v32

    goto :goto_34

    .line 153
    :cond_5a
    :goto_30
    new-instance v1, Ljava/lang/Double;

    move-wide/from16 v2, v38

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_34

    :cond_5b
    :goto_31
    move-object/from16 v15, v41

    .line 154
    new-instance v1, Ljava/lang/Float;

    move/from16 v2, v36

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    goto :goto_34

    :cond_5c
    :goto_32
    move-object/from16 v15, v41

    .line 155
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_34

    :cond_5d
    :goto_33
    move-object/from16 v15, v41

    .line 156
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_34
    move-object/from16 v2, v37

    .line 157
    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v14, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_f

    move-object/from16 v41, v4

    move/from16 v21, v5

    goto/16 :goto_39

    :cond_5e
    move/from16 v21, v5

    move/from16 v2, v36

    move-object/from16 v1, v37

    move-object/from16 v15, v41

    move-object/from16 v41, v4

    move-wide/from16 v4, v38

    if-nez v32, :cond_6b

    .line 158
    :try_start_23
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v6, v0, :cond_69

    if-ne v6, v13, :cond_5f

    goto :goto_38

    .line 159
    :cond_5f
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v6, v0, :cond_67

    if-ne v6, v12, :cond_60

    goto :goto_37

    .line 160
    :cond_60
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v6, v0, :cond_65

    if-ne v6, v11, :cond_61

    goto :goto_36

    .line 161
    :cond_61
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v6, v0, :cond_63

    if-ne v6, v15, :cond_62

    goto :goto_35

    :cond_62
    move-object/from16 v2, v32

    .line 162
    invoke-virtual {v3, v10, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_39

    .line 163
    :cond_63
    :goto_35
    iget-boolean v2, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v2, :cond_64

    if-ne v6, v0, :cond_64

    .line 164
    invoke-virtual {v3, v10, v4, v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;D)V

    goto/16 :goto_39

    .line 165
    :cond_64
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v3, v10, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_39

    .line 166
    :cond_65
    :goto_36
    iget-boolean v4, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v4, :cond_66

    if-ne v6, v0, :cond_66

    .line 167
    invoke-virtual {v3, v10, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;F)V

    goto :goto_39

    .line 168
    :cond_66
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v3, v10, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_39

    .line 169
    :cond_67
    :goto_37
    iget-boolean v2, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v2, :cond_68

    if-ne v6, v0, :cond_68

    move-wide/from16 v4, v30

    .line 170
    invoke-virtual {v3, v10, v4, v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;J)V

    goto :goto_39

    :cond_68
    move-wide/from16 v4, v30

    .line 171
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v10, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_39

    .line 172
    :cond_69
    :goto_38
    iget-boolean v2, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v2, :cond_6a

    if-ne v6, v0, :cond_6a

    move/from16 v0, v35

    .line 173
    invoke-virtual {v3, v10, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;I)V

    goto :goto_39

    :cond_6a
    move/from16 v0, v35

    .line 174
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v10, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_10

    goto :goto_39

    :catch_0
    move-exception v0

    .line 175
    :try_start_24
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set property error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_6b
    move-object/from16 v2, v32

    .line 176
    invoke-virtual {v3, v10, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_39
    move-object/from16 v0, v25

    .line 177
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_10

    const/4 v3, 0x4

    move-object/from16 v25, v10

    if-ne v1, v3, :cond_6c

    move-object/from16 v11, v41

    const/16 v18, 0x0

    goto/16 :goto_3e

    :cond_6c
    move-object/from16 v16, v11

    move-object/from16 v23, v33

    move/from16 v17, v34

    move-object/from16 v11, v41

    const/16 v10, 0xd

    const/16 v18, 0x0

    const/16 v22, 0x4

    goto :goto_3d

    :catchall_10
    move-exception v0

    :goto_3a
    move-object/from16 v6, v40

    :goto_3b
    move-object/from16 v11, v41

    goto/16 :goto_48

    :cond_6d
    move/from16 v21, v5

    move-object/from16 v0, v25

    move-object/from16 v23, v33

    move-object/from16 v15, v41

    const/4 v3, 0x4

    move-object/from16 v41, v4

    move-object/from16 v1, p0

    move/from16 v17, v34

    const/4 v4, 0x0

    move-object/from16 v2, p1

    const/4 v5, 0x1

    const/16 v6, 0xd

    const/16 v18, 0x0

    const/16 v22, 0x4

    move-object/from16 v3, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v41

    move-object v4, v10

    move-object/from16 v25, v10

    const/4 v10, 0x1

    move-object/from16 v5, p2

    const/16 v10, 0xd

    move-object v6, v14

    .line 178
    :try_start_25
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 179
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v1, v10, :cond_6e

    .line 180
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_3e

    :cond_6e
    const/16 v2, 0x10

    :goto_3c
    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_46

    .line 181
    :cond_6f
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_7f

    .line 182
    :goto_3d
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_70

    goto :goto_3c

    :cond_70
    if-ne v1, v10, :cond_7d

    .line 183
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_13

    :goto_3e
    move-object/from16 v21, v25

    move-object/from16 v6, v40

    :goto_3f
    if-nez v21, :cond_7a

    if-nez v14, :cond_73

    .line 184
    :try_start_26
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_12

    if-nez v6, :cond_71

    .line 185
    :try_start_27
    invoke-virtual {v8, v11, v1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v6
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_11

    goto :goto_40

    :catchall_11
    move-exception v0

    move-object v10, v1

    goto/16 :goto_48

    :cond_71
    :goto_40
    if-eqz v6, :cond_72

    .line 186
    iput-object v1, v6, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 187
    :cond_72
    invoke-virtual {v8, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v1

    .line 188
    :cond_73
    :try_start_28
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    if-eqz v0, :cond_74

    .line 189
    array-length v1, v0

    goto :goto_41

    :cond_74
    iget-object v1, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v1, v1

    .line 190
    :goto_41
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_42
    if-ge v3, v1, :cond_77

    .line 191
    iget-object v4, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v0, :cond_75

    .line 192
    iget-object v5, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v14, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_43

    .line 193
    :cond_75
    iget-object v5, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_43
    if-nez v5, :cond_76

    .line 194
    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 195
    :cond_76
    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 196
    :cond_77
    iget-object v1, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_12

    if-eqz v3, :cond_79

    .line 197
    :try_start_29
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_1
    .catchall {:try_start_29 .. :try_end_29} :catchall_12

    if-eqz v0, :cond_7b

    .line 198
    :try_start_2a
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_78
    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 199
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    if-eqz v3, :cond_78

    .line 200
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_11

    goto :goto_44

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 201
    :try_start_2b
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create instance error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 202
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 203
    :cond_79
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_12

    if-eqz v0, :cond_7a

    const/4 v3, 0x0

    .line 204
    :try_start_2c
    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_2
    .catchall {:try_start_2c .. :try_end_2c} :catchall_12

    goto :goto_45

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 205
    :try_start_2d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create factory method error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_12

    :catchall_12
    move-exception v0

    goto/16 :goto_22

    :cond_7a
    :goto_45
    move-object/from16 v1, v21

    :cond_7b
    if-eqz v6, :cond_7c

    .line 206
    iput-object v1, v6, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 207
    :cond_7c
    invoke-virtual {v8, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v1

    :cond_7d
    const/4 v3, 0x0

    const/16 v4, 0x12

    if-eq v1, v4, :cond_7e

    const/4 v4, 0x1

    if-eq v1, v4, :cond_7e

    :goto_46
    move/from16 v6, p4

    move-object/from16 v22, v11

    move-object/from16 v26, v14

    move-object v10, v15

    move-object/from16 v11, v16

    move/from16 v2, v17

    move/from16 v5, v21

    move-object/from16 v1, v23

    move-object/from16 v21, v25

    move-wide/from16 v3, v28

    move-object/from16 v25, v40

    const/16 v15, 0x10

    move-object v14, v0

    move-object/from16 v0, p2

    goto/16 :goto_5

    .line 208
    :cond_7e
    :try_start_2e
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, unexpect token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_7f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error, unexpect token \':\'"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_13

    :catchall_13
    move-exception v0

    move-object/from16 v10, v25

    :goto_47
    move-object/from16 v6, v40

    goto :goto_48

    :catchall_14
    move-exception v0

    move-object v11, v4

    move-object v3, v6

    move-object/from16 v10, p4

    :goto_48
    if-eqz v6, :cond_80

    .line 210
    iput-object v10, v6, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 211
    :cond_80
    invoke-virtual {v8, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 212
    throw v0

    .line 213
    :cond_81
    :goto_49
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 2
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    .line 3
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v4

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x10

    const/16 v7, 0x2c

    if-ge v5, v4, :cond_31

    add-int/lit8 v9, v4, -0x1

    const/16 v10, 0x5d

    if-ne v5, v9, :cond_0

    const/16 v9, 0x5d

    goto :goto_1

    :cond_0
    const/16 v9, 0x2c

    .line 4
    :goto_1
    iget-object v11, v1, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v11, v11, v5

    .line 5
    iget-object v12, v11, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 6
    iget-object v13, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 7
    :try_start_0
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v15, 0xf

    if-ne v13, v14, :cond_6

    .line 8
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v13

    long-to-int v9, v13

    .line 9
    iget-boolean v13, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v13, :cond_1

    .line 10
    iget-object v11, v12, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v11, v3, v9}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_2

    .line 11
    :cond_1
    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v3, v13}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    :goto_2
    iget-char v9, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v9, v7, :cond_3

    .line 13
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 14
    iget v9, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v9, :cond_2

    const/16 v8, 0x1a

    goto :goto_3

    :cond_2
    iget-object v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 15
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_3
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 16
    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_5

    :cond_3
    if-ne v9, v10, :cond_5

    .line 17
    iget v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 18
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v7, :cond_4

    const/16 v8, 0x1a

    goto :goto_4

    :cond_4
    iget-object v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 19
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_4
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 20
    iput v15, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_5

    .line 21
    :cond_5
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_5
    move-object/from16 v14, p3

    goto/16 :goto_19

    .line 22
    :cond_6
    const-class v14, Ljava/lang/String;

    const/16 v8, 0x22

    if-ne v13, v14, :cond_f

    .line 23
    iget-char v9, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v9, v8, :cond_7

    .line 24
    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanStringValue(C)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_7
    const/16 v8, 0x6e

    if-ne v9, v8, :cond_e

    .line 25
    iget-object v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v9, "null"

    iget v13, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 26
    invoke-virtual {v8, v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 27
    iget v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x4

    iput v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 28
    iget v9, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v9, :cond_8

    const/16 v8, 0x1a

    goto :goto_6

    :cond_8
    iget-object v9, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 29
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_6
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v8, 0x0

    .line 30
    :goto_7
    iget-boolean v9, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v9, :cond_9

    .line 31
    iget-object v9, v12, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v3, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 32
    :cond_9
    invoke-virtual {v11, v3, v8}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    :goto_8
    iget-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v8, v7, :cond_b

    .line 34
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 35
    iget v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_a

    const/16 v8, 0x1a

    goto :goto_9

    :cond_a
    iget-object v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 36
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_9
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 37
    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_5

    :cond_b
    if-ne v8, v10, :cond_d

    .line 38
    iget v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 39
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v7, :cond_c

    const/16 v8, 0x1a

    goto :goto_a

    :cond_c
    iget-object v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 40
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_a
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 41
    iput v15, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_5

    .line 42
    :cond_d
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_5

    .line 43
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not match string. feild : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p3

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object/from16 v14, p3

    .line 44
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v13, v8, :cond_15

    .line 45
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v8

    .line 46
    iget-boolean v13, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v13, :cond_10

    .line 47
    iget-object v11, v12, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v11, v3, v8, v9}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_b

    .line 48
    :cond_10
    new-instance v13, Ljava/lang/Long;

    invoke-direct {v13, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v11, v3, v13}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    :goto_b
    iget-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v8, v7, :cond_12

    .line 50
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 51
    iget v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_11

    const/16 v8, 0x1a

    goto :goto_c

    :cond_11
    iget-object v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 52
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_c
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 53
    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    :cond_12
    if-ne v8, v10, :cond_14

    .line 54
    iget v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 55
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v7, :cond_13

    const/16 v8, 0x1a

    goto :goto_d

    :cond_13
    iget-object v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 56
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_d
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 57
    iput v15, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    .line 58
    :cond_14
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_19

    .line 59
    :cond_15
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v13, v8, :cond_1b

    .line 60
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanBoolean()Z

    move-result v8

    .line 61
    iget-boolean v9, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v9, :cond_16

    .line 62
    iget-object v9, v12, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v3, v8}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_e

    .line 63
    :cond_16
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v11, v3, v8}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    :goto_e
    iget-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v8, v7, :cond_18

    .line 65
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 66
    iget v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_17

    const/16 v8, 0x1a

    goto :goto_f

    :cond_17
    iget-object v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 67
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_f
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 68
    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    :cond_18
    if-ne v8, v10, :cond_1a

    .line 69
    iget v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 70
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v7, :cond_19

    const/16 v8, 0x1a

    goto :goto_10

    :cond_19
    iget-object v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 71
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_10
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 72
    iput v15, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    .line 73
    :cond_1a
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_19

    .line 74
    :cond_1b
    invoke-virtual {v13}, Ljava/lang/Class;->isEnum()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 75
    iget-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v9, 0x22

    if-ne v8, v9, :cond_1d

    .line 76
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1c

    const/4 v8, 0x0

    goto :goto_11

    .line 77
    :cond_1c
    invoke-static {v13, v8}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v8

    goto :goto_11

    :cond_1d
    const/16 v9, 0x30

    if-lt v8, v9, :cond_22

    const/16 v9, 0x39

    if-gt v8, v9, :cond_22

    .line 78
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v8

    long-to-int v9, v8

    .line 79
    move-object v8, v11

    check-cast v8, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson/parser/EnumDeserializer;

    .line 80
    iget-object v8, v8, Lcom/alibaba/fastjson/parser/EnumDeserializer;->ordinalEnums:[Ljava/lang/Enum;

    aget-object v8, v8, v9

    .line 81
    :goto_11
    invoke-virtual {v11, v3, v8}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    iget-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v8, v7, :cond_1f

    .line 83
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 84
    iget v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_1e

    const/16 v8, 0x1a

    goto :goto_12

    :cond_1e
    iget-object v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 85
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_12
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 86
    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    :cond_1f
    if-ne v8, v10, :cond_21

    .line 87
    iget v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 88
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v7, :cond_20

    const/16 v8, 0x1a

    goto :goto_13

    :cond_20
    iget-object v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 89
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_13
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 90
    iput v15, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    .line 91
    :cond_21
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_19

    .line 92
    :cond_22
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal enum."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_23
    const-class v8, Ljava/util/Date;

    if-ne v13, v8, :cond_28

    iget-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v13, 0x31

    if-ne v8, v13, :cond_28

    .line 94
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v8

    .line 95
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v3, v13}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    iget-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v8, v7, :cond_25

    .line 97
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 98
    iget v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_24

    const/16 v8, 0x1a

    goto :goto_14

    :cond_24
    iget-object v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 99
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_14
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 100
    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    :cond_25
    if-ne v8, v10, :cond_27

    .line 101
    iget v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 102
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v7, :cond_26

    const/16 v8, 0x1a

    goto :goto_15

    :cond_26
    iget-object v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 103
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_15
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 104
    iput v15, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_19

    .line 105
    :cond_27
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_19

    .line 106
    :cond_28
    iget-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v13, 0x5b

    if-ne v8, v13, :cond_2a

    .line 107
    iget v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 108
    iget v13, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v13, :cond_29

    const/16 v8, 0x1a

    goto :goto_16

    :cond_29
    iget-object v13, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 109
    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_16
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v8, 0xe

    .line 110
    iput v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_18

    :cond_2a
    const/16 v13, 0x7b

    if-ne v8, v13, :cond_2c

    .line 111
    iget v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 112
    iget v13, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v13, :cond_2b

    const/16 v8, 0x1a

    goto :goto_17

    :cond_2b
    iget-object v13, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 113
    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_17
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v8, 0xc

    .line 114
    iput v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_18

    .line 115
    :cond_2c
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 116
    :goto_18
    iget-object v8, v12, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    const/4 v13, 0x0

    invoke-virtual {v11, v0, v3, v8, v13}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "syntax error"

    if-ne v9, v10, :cond_2e

    .line 117
    :try_start_1
    iget v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v6, v15, :cond_2d

    goto :goto_19

    .line 118
    :cond_2d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    if-ne v9, v7, :cond_30

    .line 119
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v7, v6, :cond_2f

    goto :goto_19

    .line 120
    :cond_2f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_30
    :goto_19
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 121
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 122
    :cond_31
    iget-char v0, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v7, :cond_33

    .line 123
    iget v0, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 124
    iget v4, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v4, :cond_32

    const/16 v8, 0x1a

    goto :goto_1a

    :cond_32
    iget-object v4, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 125
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_1a
    iput-char v8, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 126
    iput v6, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1b

    .line 127
    :cond_33
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_1b
    return-object v3
.end method

.method private parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 1
    iget-object v12, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 2
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v2

    const/4 v13, 0x0

    if-nez v2, :cond_7

    .line 3
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v3

    .line 4
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    if-nez v5, :cond_1

    .line 5
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v5, v5

    new-array v5, v5, [J

    const/4 v6, 0x0

    .line 6
    :goto_0
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v8, v7

    if-ge v6, v8, :cond_0

    .line 7
    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v5}, Ljava/util/Arrays;->sort([J)V

    .line 9
    iput-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    .line 10
    :cond_1
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v5, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    if-gez v3, :cond_2

    const-string v4, "is"

    .line 11
    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x2

    .line 12
    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v5

    .line 13
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    invoke-static {v3, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_1
    if-ltz v3, :cond_7

    .line 14
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArrayMapping:[I

    const/4 v6, -0x1

    if-nez v5, :cond_6

    .line 15
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    array-length v5, v5

    new-array v5, v5, [I

    .line 16
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    const/4 v7, 0x0

    .line 17
    :goto_2
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v9, v8

    if-ge v7, v9, :cond_5

    .line 18
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 19
    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v14

    .line 20
    invoke-static {v9, v14, v15}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v8

    if-ltz v8, :cond_4

    .line 21
    aput v7, v5, v8

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 22
    :cond_5
    iput-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArrayMapping:[I

    .line 23
    :cond_6
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArrayMapping:[I

    aget v3, v5, v3

    if-eq v3, v6, :cond_7

    .line 24
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v2, v2, v3

    .line 25
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-eqz v4, :cond_7

    .line 26
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_7

    const-class v4, Ljava/lang/Boolean;

    if-eq v3, v4, :cond_7

    const/4 v2, 0x0

    .line 27
    :cond_7
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    const/4 v14, 0x1

    if-nez v2, :cond_10

    .line 28
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    and-int/2addr v4, v3

    if-nez v4, :cond_8

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_10

    .line 29
    :cond_8
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    if-nez v3, :cond_e

    .line 30
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v3, v14, v4, v14}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 31
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    :goto_3
    if-eqz v4, :cond_d

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_d

    .line 32
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 33
    array-length v6, v5

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_c

    aget-object v8, v5, v7

    .line 34
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    .line 35
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v15

    if-eqz v15, :cond_9

    goto :goto_5

    .line 36
    :cond_9
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v15

    and-int/lit8 v16, v15, 0x10

    if-nez v16, :cond_b

    and-int/lit8 v15, v15, 0x8

    if-eqz v15, :cond_a

    goto :goto_5

    .line 37
    :cond_a
    invoke-virtual {v3, v9, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 38
    :cond_c
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_3

    .line 39
    :cond_d
    iput-object v3, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    .line 40
    :cond_e
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v10}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 41
    instance-of v2, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    if-eqz v2, :cond_f

    .line 42
    move-object v2, v3

    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    goto :goto_6

    .line 43
    :cond_f
    move-object v7, v3

    check-cast v7, Ljava/lang/reflect/Field;

    .line 44
    invoke-virtual {v7, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 45
    new-instance v15, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v15

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 46
    new-instance v2, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-direct {v2, v3, v4, v15}, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 47
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v10, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    :goto_6
    if-nez v2, :cond_11

    .line 48
    invoke-virtual {v0, v1, v11, v10}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->parseExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)V

    return v13

    :cond_11
    const/16 v3, 0x3a

    .line 49
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 50
    invoke-virtual {v2, v1, v11, v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    return v14
.end method


# virtual methods
.method protected createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    check-cast p2, Ljava/lang/Class;

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 5
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget p1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, v3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3, p1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    new-array p1, v1, [Ljava/lang/Class;

    aput-object p2, p1, v2

    .line 7
    invoke-static {v0, p1, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v0, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-object v4, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_2

    return-object v3

    .line 9
    :cond_2
    iget-object v4, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_3

    iget v5, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-lez v5, :cond_3

    return-object v3

    .line 10
    :cond_3
    :try_start_0
    iget p2, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-nez p2, :cond_5

    if-eqz v0, :cond_4

    new-array p2, v2, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_4
    new-array p2, v2, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v4, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_5
    new-array p2, v1, [Ljava/lang/Object;

    .line 13
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    aput-object v1, p2, v2

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_1
    if-eqz p1, :cond_7

    .line 14
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget p1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    .line 15
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, p1

    :goto_2
    if-ge v2, v0, :cond_7

    aget-object v1, p1, v2

    .line 16
    iget-object v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_6

    const-string v3, ""

    .line 17
    invoke-virtual {v1, p2, v3}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return-object p2

    :catch_0
    move-exception p1

    .line 18
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create instance error, class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

.method public createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_4

    .line 20
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {p0, v3, v0}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 24
    iget-object v4, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v4, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_1

    .line 25
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v2

    .line 26
    invoke-static {v1, v4, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    .line 27
    invoke-virtual {v5, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 28
    :cond_1
    iget-object v5, v4, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 29
    iget-object v6, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 30
    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 31
    const-class v7, Ljava/util/Date;

    if-ne v6, v7, :cond_2

    instance-of v7, v1, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 32
    :try_start_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-direct {v6, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v1, v3

    goto :goto_1

    .line 33
    :cond_2
    invoke-static {v1, v6, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v1

    .line 34
    :goto_1
    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-object v0

    .line 35
    :cond_4
    iget-object p2, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 36
    array-length v0, p2

    .line 37
    new-array v1, v0, [Ljava/lang/Object;

    :goto_2
    if-ge v2, v0, :cond_6

    .line 38
    aget-object v4, p2, v2

    .line 39
    iget-object v5, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    .line 40
    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 41
    :cond_5
    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 42
    :cond_6
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object p1, p1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_7

    .line 43
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 44
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create instance error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 45
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_7
    :goto_3
    return-object v3
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
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-boolean v1, v1, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 3
    aget-object v1, v1, v2

    .line 4
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 5
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-gt v2, v1, :cond_6

    add-int v3, v2, v1

    ushr-int/lit8 v3, v3, 0x1

    .line 6
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 7
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_1

    :cond_4
    if-lez v4, :cond_5

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_1

    .line 8
    :cond_5
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object p1, p1, v3

    return-object p1

    .line 9
    :cond_6
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    if-eqz v1, :cond_7

    .line 10
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    return-object p1

    :cond_7
    return-object v0
.end method

.method protected getFieldDeserializerByHash(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v1, v1, v0

    .line 3
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-wide v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    .locals 6

    .line 1
    iget-object p2, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {p2}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    .line 3
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 4
    instance-of v4, v3, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    if-eqz v4, :cond_2

    .line 5
    check-cast v3, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    .line 6
    iget-object v4, v3, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    .line 7
    iget-object v5, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v3

    .line 8
    :cond_1
    invoke-virtual {p0, p1, v4, p3}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method parseExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 2
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    const/16 v1, 0x3a

    .line 3
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    const/4 v0, 0x0

    .line 4
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    .line 6
    invoke-interface {v0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;->getExtraType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    :goto_1
    instance-of v1, p2, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    if-eqz v1, :cond_2

    .line 10
    check-cast p2, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    .line 11
    invoke-interface {p2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;->processExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_2
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    .line 14
    invoke-interface {v1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;->processExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    return-void

    .line 15
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setter not found, class "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", property "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
