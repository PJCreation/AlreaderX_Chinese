.class Lcom/alibaba/fastjson/parser/JavaBeanInfo;
.super Ljava/lang/Object;
.source "JavaBeanInfo.java"


# instance fields
.field final creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public final creatorConstructorParameters:[Ljava/lang/String;

.field final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field final defaultConstructorParameterSize:I

.field final factoryMethod:Ljava/lang/reflect/Method;

.field final fields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field final jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

.field ordered:Z

.field public final parserFeatures:I

.field final sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field final supportBeanToArray:Z

.field public final typeKey:Ljava/lang/String;

.field public final typeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "[",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    .line 3
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 4
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 5
    iput-object p4, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    .line 6
    iput-object p5, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 7
    iput-object p7, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 p3, 0x0

    if-eqz p8, :cond_0

    .line 8
    array-length v1, p8

    array-length v2, p5

    if-ne v1, v2, :cond_0

    .line 9
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_0
    iput-object p8, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    :goto_0
    if-eqz p7, :cond_3

    .line 11
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object p8

    .line 12
    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p8

    :goto_1
    iput-object p8, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 13
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p8

    if-lez p8, :cond_2

    move-object p3, p1

    :cond_2
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 15
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object p1

    array-length p3, p1

    const/4 p8, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge p8, p3, :cond_4

    aget-object v2, p1, p8

    .line 16
    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v1, v2

    add-int/lit8 p8, p8, 0x1

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKey:Ljava/lang/String;

    const/4 v1, 0x0

    .line 19
    :cond_4
    iput v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->parserFeatures:I

    if-eqz p7, :cond_6

    .line 20
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object p1

    array-length p3, p1

    const/4 p7, 0x0

    const/4 p8, 0x0

    :goto_3
    if-ge p7, p3, :cond_7

    aget-object v1, p1, p7

    .line 21
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    if-ne v1, v2, :cond_5

    const/4 p8, 0x1

    :cond_5
    add-int/lit8 p7, p7, 0x1

    goto :goto_3

    :cond_6
    const/4 p8, 0x0

    .line 22
    :cond_7
    iput-boolean p8, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->supportBeanToArray:Z

    .line 23
    invoke-direct {p0, p5, p6}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->computeSortedFields([Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object p1

    .line 24
    invoke-static {p5, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_4

    :cond_8
    move-object p5, p1

    :goto_4
    iput-object p5, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz p2, :cond_9

    .line 25
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    goto :goto_5

    :cond_9
    if-eqz p4, :cond_a

    .line 26
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    :cond_a
    :goto_5
    iput v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructorParameterSize:I

    return-void
.end method

.method static addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Z)Z"
        }
    .end annotation

    if-nez p2, :cond_2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 3
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    iget-boolean v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    return v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static build(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/reflect/Type;",
            "ZZZZ",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/parser/JavaBeanInfo;"
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v12, p1

    move/from16 v13, p3

    move-object/from16 v14, p7

    .line 1
    const-class v15, Ljava/lang/Object;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 4
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v1

    and-int/lit16 v2, v12, 0x400

    const/16 v16, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez v2, :cond_3

    .line 5
    array-length v3, v0

    if-eq v3, v8, :cond_0

    if-nez v1, :cond_3

    :cond_0
    :try_start_0
    new-array v3, v7, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object/from16 v3, v16

    :goto_0
    if-nez v3, :cond_2

    .line 7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v4

    if-eqz v4, :cond_2

    and-int/lit8 v4, v12, 0x8

    if-nez v4, :cond_2

    .line 8
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    .line 9
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    move-object/from16 v18, v3

    .line 10
    array-length v3, v7

    const/16 v17, 0x0

    if-ne v3, v8, :cond_1

    aget-object v3, v7, v17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v7, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v18

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v18, v3

    const/16 v17, 0x0

    move-object/from16 v7, v18

    goto :goto_2

    :cond_3
    const/16 v17, 0x0

    move-object/from16 v7, v16

    :goto_2
    const/16 v18, 0x0

    if-eqz v13, :cond_4

    move-object/from16 v20, v15

    move-object/from16 v8, v16

    move-object v15, v8

    goto/16 :goto_7

    .line 11
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v11

    move-object/from16 v5, v16

    :goto_3
    if-eqz v4, :cond_b

    if-eq v4, v15, :cond_b

    .line 12
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 13
    array-length v8, v6

    move-object/from16 v20, v15

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v8, :cond_a

    move/from16 v21, v8

    aget-object v8, v6, v15

    move-object/from16 v22, v6

    .line 14
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    and-int/lit8 v23, v6, 0x8

    if-eqz v23, :cond_6

    .line 15
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v8, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez v5, :cond_5

    move-object v5, v8

    goto :goto_6

    .line 16
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "multi-json creator"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    and-int/lit8 v23, v6, 0x2

    if-nez v23, :cond_8

    move-object/from16 v23, v5

    and-int/lit16 v5, v6, 0x100

    if-nez v5, :cond_9

    and-int/lit8 v5, v6, 0x4

    if-eqz v5, :cond_7

    goto :goto_5

    .line 17
    :cond_7
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    move-object/from16 v23, v5

    :cond_9
    :goto_5
    move-object/from16 v5, v23

    :goto_6
    add-int/lit8 v15, v15, 0x1

    move/from16 v8, v21

    move-object/from16 v6, v22

    goto :goto_4

    :cond_a
    move-object/from16 v23, v5

    .line 18
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v15, v20

    const/4 v8, 0x1

    goto :goto_3

    :cond_b
    move-object/from16 v20, v15

    .line 19
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/reflect/Method;

    .line 20
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v8, v4

    move-object v15, v5

    .line 21
    :goto_7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 22
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_d

    if-eqz v2, :cond_c

    goto :goto_8

    :cond_c
    const/4 v2, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v2, 0x1

    :goto_9
    if-eqz v7, :cond_f

    if-eqz v2, :cond_e

    goto :goto_a

    :cond_e
    move-object/from16 v26, v6

    move-object/from16 v29, v8

    move-object v14, v9

    move-object/from16 v22, v16

    const/4 v8, 0x0

    move-object v9, v7

    goto/16 :goto_22

    .line 23
    :cond_f
    :goto_a
    array-length v3, v0

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_11

    aget-object v5, v0, v4

    move/from16 v21, v3

    .line 24
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONCreator;

    if-eqz v3, :cond_10

    goto :goto_c

    :cond_10
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v21

    goto :goto_b

    :cond_11
    move-object/from16 v5, v16

    :goto_c
    const-string v4, "illegal json creator"

    if-eqz v5, :cond_1a

    .line 25
    invoke-static {v11, v5, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 26
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    if-eqz p6, :cond_12

    .line 27
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_d

    :cond_12
    move-object/from16 v18, v3

    .line 28
    :goto_d
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v21

    const/4 v2, 0x0

    .line 29
    :goto_e
    array-length v0, v3

    if-ge v2, v0, :cond_17

    .line 30
    aget-object v0, v21, v2

    .line 31
    array-length v1, v0

    move-object/from16 v22, v4

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v1, :cond_14

    move/from16 v23, v1

    aget-object v1, v0, v4

    move-object/from16 v24, v0

    .line 32
    instance-of v0, v1, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_13

    .line 33
    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_10

    :cond_13
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v23

    move-object/from16 v0, v24

    goto :goto_f

    :cond_14
    move-object/from16 v1, v16

    :goto_10
    if-eqz v1, :cond_16

    .line 34
    aget-object v4, v3, v2

    .line 35
    aget-object v23, v18, v2

    .line 36
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0, v6, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 37
    invoke-static {v11, v0, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 38
    :cond_15
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v24

    .line 39
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v25

    .line 40
    new-instance v14, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v26, v0

    move-object v0, v14

    move/from16 v27, v2

    move-object/from16 v2, p0

    move-object/from16 v28, v3

    move-object v3, v4

    move-object/from16 v29, v8

    move-object/from16 v8, v22

    move-object/from16 v4, v23

    move-object/from16 v22, v5

    move-object/from16 v5, v26

    move-object/from16 v23, v9

    move-object v9, v6

    move/from16 v6, v24

    move-object/from16 v30, v7

    move-object/from16 v24, v9

    const/4 v9, 0x0

    move/from16 v7, v25

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 41
    invoke-static {v10, v14, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    add-int/lit8 v2, v27, 0x1

    move-object/from16 v14, p7

    move-object v4, v8

    move-object/from16 v5, v22

    move-object/from16 v9, v23

    move-object/from16 v6, v24

    move-object/from16 v3, v28

    move-object/from16 v8, v29

    move-object/from16 v7, v30

    const/16 v17, 0x0

    goto :goto_e

    :cond_16
    move-object/from16 v8, v22

    .line 42
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move-object/from16 v22, v5

    move-object/from16 v24, v6

    move-object/from16 v30, v7

    move-object/from16 v29, v8

    move-object/from16 v23, v9

    const/4 v9, 0x0

    .line 43
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 44
    invoke-interface {v10, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 45
    new-array v2, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 46
    invoke-static {v1, v9, v2, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    if-eqz p4, :cond_18

    .line 48
    const-class v2, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v11, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 49
    :cond_18
    new-array v2, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v0, :cond_19

    .line 50
    aget-object v3, v1, v7

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aput-object v3, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_19
    move-object/from16 v18, v2

    move-object/from16 v14, v23

    move-object/from16 v26, v24

    move-object/from16 v9, v30

    const/4 v8, 0x0

    goto/16 :goto_22

    :cond_1a
    move-object/from16 v22, v5

    move-object/from16 v24, v6

    move-object/from16 v30, v7

    move-object/from16 v29, v8

    move-object/from16 v23, v9

    const/4 v9, 0x0

    move-object v8, v4

    if-eqz v15, :cond_23

    .line 51
    invoke-static {v11, v15, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 52
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    .line 53
    array-length v0, v14

    if-lez v0, :cond_22

    if-eqz p6, :cond_1b

    .line 54
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v12, v0

    goto :goto_12

    :cond_1b
    move-object v12, v14

    .line 55
    :goto_12
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v17

    const/4 v7, 0x0

    .line 56
    :goto_13
    array-length v0, v14

    if-ge v7, v0, :cond_1f

    .line 57
    aget-object v0, v17, v7

    .line 58
    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 59
    instance-of v4, v3, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v4, :cond_1c

    .line 60
    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_15

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_1d
    move-object/from16 v3, v16

    :goto_15
    if-eqz v3, :cond_1e

    .line 61
    aget-object v4, v14, v7

    .line 62
    aget-object v5, v12, v7

    .line 63
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v23

    move-object/from16 v2, v24

    invoke-static {v11, v0, v2, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v19

    .line 64
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v20

    .line 65
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v21

    .line 66
    new-instance v1, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    move-object v0, v1

    move-object v9, v1

    move-object v1, v3

    move-object v3, v2

    move-object/from16 v2, p0

    move-object/from16 v24, v14

    move-object v14, v3

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, v19

    move-object/from16 v25, v14

    move-object v14, v6

    move/from16 v6, v20

    move/from16 v19, v7

    move/from16 v7, v21

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 67
    invoke-static {v10, v9, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    add-int/lit8 v7, v19, 0x1

    move-object/from16 v23, v14

    move-object/from16 v14, v24

    move-object/from16 v24, v25

    const/4 v9, 0x0

    goto :goto_13

    .line 68
    :cond_1e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1f
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 70
    invoke-interface {v10, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    new-array v1, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v2, 0x0

    .line 72
    invoke-static {v5, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 74
    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move-object v6, v5

    goto :goto_16

    :cond_20
    move-object v6, v1

    :goto_16
    if-eqz p4, :cond_21

    .line 75
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v11, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object v7, v0

    goto :goto_17

    :cond_21
    move-object/from16 v7, v16

    .line 76
    :goto_17
    new-instance v9, Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v4, v15

    move-object/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;[Ljava/lang/String;)V

    return-object v9

    :cond_22
    move-object/from16 v14, v23

    move-object/from16 v26, v24

    goto/16 :goto_20

    :cond_23
    move-object/from16 v14, v23

    move-object/from16 v25, v24

    if-nez v2, :cond_31

    const-string v2, "default constructor not found. "

    if-eqz v1, :cond_30

    .line 77
    array-length v1, v0

    if-lez v1, :cond_30

    .line 78
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2f

    .line 79
    array-length v1, v0

    move-object/from16 v9, v22

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v1, :cond_26

    aget-object v2, v0, v7

    .line 80
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 81
    array-length v4, v3

    if-lez v4, :cond_24

    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v4, v3, v4

    .line 82
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "kotlin.jvm.internal.f"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_19

    :cond_24
    if-eqz v9, :cond_25

    .line 83
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    array-length v3, v3

    if-lt v4, v3, :cond_25

    goto :goto_19

    :cond_25
    move-object v9, v2

    :goto_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_26
    const/4 v2, 0x1

    .line 84
    invoke-virtual {v9, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 85
    invoke-static {v11, v9, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 86
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    if-eqz p6, :cond_27

    .line 87
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_1a

    :cond_27
    move-object/from16 v17, v7

    .line 88
    :goto_1a
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v18

    const/4 v6, 0x0

    .line 89
    :goto_1b
    array-length v0, v7

    if-ge v6, v0, :cond_2d

    .line 90
    aget-object v0, v8, v6

    .line 91
    aget-object v1, v18, v6

    .line 92
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_29

    aget-object v4, v1, v3

    .line 93
    instance-of v5, v4, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v5, :cond_28

    .line 94
    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_1d

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_29
    move-object/from16 v4, v16

    .line 95
    :goto_1d
    aget-object v3, v7, v6

    .line 96
    aget-object v5, v17, v6

    move-object/from16 v2, v25

    .line 97
    invoke-static {v11, v0, v2, v14}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_2a

    if-nez v4, :cond_2a

    .line 98
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/annotation/JSONField;

    :cond_2a
    if-eqz v4, :cond_2c

    .line 99
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v21

    .line 100
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v22

    .line 101
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_2b

    move-object v0, v4

    :cond_2b
    move-object v4, v0

    goto :goto_1e

    :cond_2c
    move-object v4, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 103
    :goto_1e
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v24, v0

    move-object/from16 v25, v1

    move-object v1, v4

    move-object/from16 v26, v2

    move-object/from16 v2, p0

    move-object v4, v5

    move-object/from16 v5, v25

    move/from16 v25, v6

    move/from16 v6, v21

    move-object/from16 v21, v7

    move/from16 v7, v22

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 104
    invoke-static {v10, v0, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    add-int/lit8 v6, v25, 0x1

    move-object/from16 v7, v21

    move-object/from16 v25, v26

    goto :goto_1b

    :cond_2d
    move-object/from16 v26, v25

    .line 105
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 106
    invoke-interface {v10, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 107
    new-array v2, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v8, 0x0

    .line 108
    invoke-static {v1, v8, v2, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 110
    new-array v2, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    :goto_1f
    if-ge v7, v0, :cond_2e

    .line 111
    aget-object v3, v1, v7

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aput-object v3, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_2e
    move-object/from16 v18, v2

    move-object/from16 v22, v9

    goto :goto_21

    .line 112
    :cond_2f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_30
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    move-object/from16 v26, v25

    :goto_20
    const/4 v8, 0x0

    :goto_21
    move-object/from16 v9, v30

    :goto_22
    if-eqz v9, :cond_32

    .line 114
    invoke-static {v11, v9, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    :cond_32
    const/4 v7, 0x3

    const/4 v6, 0x4

    if-nez v13, :cond_4a

    move-object/from16 v5, v29

    .line 115
    array-length v4, v5

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v4, :cond_49

    aget-object v2, v5, v3

    .line 116
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v6, :cond_34

    :cond_33
    :goto_24
    move/from16 v29, v3

    move/from16 v24, v4

    move-object/from16 v31, v5

    move-object/from16 v17, v9

    move-object/from16 v25, v15

    move-object/from16 v33, v26

    const/16 v27, 0x1

    move-object v15, v10

    move-object/from16 v26, v14

    goto/16 :goto_2d

    .line 118
    :cond_34
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 119
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v6, :cond_35

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v1, v6, :cond_33

    .line 120
    :cond_35
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    const/4 v6, 0x1

    if-eq v1, v6, :cond_36

    goto :goto_24

    :cond_36
    if-eqz p5, :cond_37

    .line 121
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_25

    :cond_37
    move-object/from16 v1, v16

    :goto_25
    if-nez v1, :cond_38

    if-eqz p5, :cond_38

    .line 122
    invoke-static {v11, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getSupperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v1

    :cond_38
    move-object/from16 v19, v1

    if-eqz v19, :cond_3b

    .line 123
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_24

    .line 124
    :cond_39
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v21

    .line 125
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v23

    .line 126
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3a

    .line 127
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 128
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v27, v0

    move-object/from16 v28, v2

    move/from16 v29, v3

    move-object/from16 v3, v24

    move/from16 v24, v4

    move-object/from16 v4, p0

    move-object/from16 v30, v5

    move-object/from16 v5, p2

    const/16 v17, 0x1

    move/from16 v6, v21

    move/from16 v7, v23

    move-object/from16 v31, v30

    const/16 v17, 0x0

    move-object/from16 v8, v19

    move-object/from16 v17, v9

    move-object/from16 v32, v26

    move-object/from16 v9, v25

    move-object/from16 v25, v15

    move-object v15, v10

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    invoke-static {v15, v0, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    move-object/from16 v10, v28

    .line 129
    invoke-static {v11, v10, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto :goto_27

    :cond_3a
    move/from16 v29, v3

    move/from16 v24, v4

    move-object/from16 v31, v5

    move-object/from16 v17, v9

    move-object/from16 v25, v15

    move-object/from16 v32, v26

    move-object v15, v10

    move-object v10, v2

    move/from16 v7, v21

    goto :goto_26

    :cond_3b
    move/from16 v29, v3

    move/from16 v24, v4

    move-object/from16 v31, v5

    move-object/from16 v17, v9

    move-object/from16 v25, v15

    move-object/from16 v32, v26

    move-object v15, v10

    move-object v10, v2

    const/4 v7, 0x0

    const/16 v23, 0x0

    :goto_26
    const-string v1, "set"

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    :cond_3c
    :goto_27
    move-object/from16 v26, v14

    move-object/from16 v33, v32

    const/16 v27, 0x1

    goto/16 :goto_2d

    :cond_3d
    const/4 v9, 0x3

    .line 131
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 132
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 133
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v1, :cond_3e

    .line 134
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v32

    const/4 v8, 0x4

    goto :goto_29

    .line 135
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_3f
    const/4 v8, 0x4

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_40

    .line 136
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_28
    move-object/from16 v6, v32

    goto :goto_29

    :cond_40
    const/16 v2, 0x66

    if-ne v1, v2, :cond_41

    .line 137
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 138
    :cond_41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_3c

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 139
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 140
    :goto_29
    invoke-static {v11, v0, v6, v14}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_43

    .line 141
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_42

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 143
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {v11, v1, v6, v14}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_2a

    :cond_42
    const/4 v4, 0x1

    goto :goto_2a

    :cond_43
    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_2a
    move-object v3, v1

    if-eqz v3, :cond_46

    if-eqz p5, :cond_44

    .line 145
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v21, v1

    goto :goto_2b

    :cond_44
    move-object/from16 v21, v16

    :goto_2b
    if-eqz v21, :cond_46

    .line 146
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v7

    .line 147
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v23

    .line 148
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_45

    .line 149
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 150
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object v0, v2

    move-object/from16 v26, v14

    move-object v14, v2

    move-object v2, v10

    const/16 v27, 0x1

    move-object/from16 v4, p0

    const/4 v10, 0x0

    move-object/from16 v5, p2

    move-object/from16 v33, v6

    move v6, v7

    move/from16 v7, v23

    move-object/from16 v8, v19

    move-object/from16 v9, v21

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    invoke-static {v15, v14, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    goto :goto_2d

    :cond_45
    move-object/from16 v33, v6

    move-object/from16 v26, v14

    const/16 v27, 0x1

    if-nez v19, :cond_47

    move-object/from16 v14, p7

    move v6, v7

    move-object/from16 v8, v21

    goto :goto_2c

    :cond_46
    move-object/from16 v33, v6

    move-object/from16 v26, v14

    const/16 v27, 0x1

    :cond_47
    move-object/from16 v14, p7

    move v6, v7

    move-object/from16 v8, v19

    :goto_2c
    move/from16 v7, v23

    if-eqz v14, :cond_48

    .line 151
    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_48
    move-object v1, v0

    .line 152
    new-instance v9, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v19, 0x0

    move-object v0, v9

    move-object v2, v10

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v34, v9

    move-object/from16 v9, v19

    move-object v14, v10

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v34

    invoke-static {v15, v0, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 153
    invoke-static {v11, v14, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    :goto_2d
    add-int/lit8 v3, v29, 0x1

    move-object v10, v15

    move-object/from16 v9, v17

    move/from16 v4, v24

    move-object/from16 v15, v25

    move-object/from16 v14, v26

    move-object/from16 v5, v31

    move-object/from16 v26, v33

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x0

    goto/16 :goto_23

    :cond_49
    move-object/from16 v31, v5

    move-object/from16 v17, v9

    move-object/from16 v25, v15

    move-object/from16 v33, v26

    goto :goto_2e

    :cond_4a
    move-object/from16 v17, v9

    move-object/from16 v25, v15

    move-object/from16 v33, v26

    move-object/from16 v31, v29

    :goto_2e
    const/16 v27, 0x1

    move-object v15, v10

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v1, v33

    array-length v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    array-length v2, v1

    const/4 v7, 0x0

    :goto_2f
    if-ge v7, v2, :cond_50

    aget-object v3, v1, v7

    .line 156
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v5, v4, 0x8

    if-eqz v5, :cond_4b

    goto :goto_32

    :cond_4b
    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_4e

    .line 157
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 158
    const-class v5, Ljava/util/Map;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_4d

    const-class v5, Ljava/util/Collection;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4c

    goto :goto_30

    :cond_4c
    const/4 v8, 0x0

    goto :goto_31

    :cond_4d
    :goto_30
    const/4 v8, 0x1

    :goto_31
    if-nez v8, :cond_4e

    goto :goto_32

    .line 159
    :cond_4e
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4f

    .line 160
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4f
    :goto_32
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    .line 161
    :cond_50
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    :goto_33
    if-eqz v1, :cond_57

    move-object/from16 v2, v20

    if-eq v1, v2, :cond_57

    .line 162
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v7, 0x0

    :goto_34
    if-ge v7, v4, :cond_56

    aget-object v5, v3, v7

    .line 163
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    and-int/lit8 v8, v6, 0x8

    if-eqz v8, :cond_51

    goto :goto_37

    :cond_51
    and-int/lit8 v8, v6, 0x10

    if-eqz v8, :cond_54

    .line 164
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 165
    const-class v9, Ljava/util/Map;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_53

    const-class v9, Ljava/util/Collection;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_52

    goto :goto_35

    :cond_52
    const/4 v8, 0x0

    goto :goto_36

    :cond_53
    :goto_35
    const/4 v8, 0x1

    :goto_36
    if-nez v8, :cond_54

    goto :goto_37

    :cond_54
    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_55

    .line 166
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_55
    :goto_37
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 167
    :cond_56
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move-object/from16 v20, v2

    goto :goto_33

    .line 168
    :cond_57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_38
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/reflect/Field;

    .line 169
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_39
    if-ge v7, v1, :cond_59

    .line 171
    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 172
    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    const/4 v8, 0x1

    :cond_58
    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    :cond_59
    if-eqz v8, :cond_5a

    goto :goto_38

    :cond_5a
    if-eqz p5, :cond_5b

    .line 173
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object v9, v1

    goto :goto_3a

    :cond_5b
    move-object/from16 v9, v16

    :goto_3a
    if-eqz v9, :cond_5d

    .line 174
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v1

    .line 175
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v2

    .line 176
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5c

    .line 177
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    :cond_5c
    move-object/from16 v10, p7

    move v6, v1

    move v7, v2

    goto :goto_3b

    :cond_5d
    move-object/from16 v10, p7

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3b
    if-eqz v10, :cond_5e

    .line 178
    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5e
    move-object v1, v0

    .line 179
    invoke-static {v11, v3, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 180
    new-instance v8, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v2, 0x0

    const/16 v19, 0x0

    move-object v0, v8

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v35, v8

    move-object/from16 v8, v19

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v35

    invoke-static {v15, v0, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    goto/16 :goto_38

    :cond_5f
    if-nez v13, :cond_66

    move-object/from16 v14, v31

    .line 181
    array-length v10, v14

    const/4 v9, 0x0

    :goto_3c
    if-ge v9, v10, :cond_66

    aget-object v8, v14, v9

    .line 182
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v7, 0x4

    if-ge v1, v7, :cond_60

    goto/16 :goto_3f

    :cond_60
    const-string v1, "get"

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 185
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_61

    goto/16 :goto_3f

    .line 186
    :cond_61
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 187
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_62

    const-class v2, Ljava/util/Map;

    .line 188
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_65

    :cond_62
    if-eqz p5, :cond_63

    .line 189
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v19, v1

    goto :goto_3d

    :cond_63
    move-object/from16 v19, v16

    :goto_3d
    if-eqz v19, :cond_64

    .line 190
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_64

    goto :goto_3e

    :cond_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 192
    :goto_3e
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object v0, v5

    move-object v2, v8

    move-object/from16 v4, p0

    move-object/from16 v36, v5

    move-object/from16 v5, p2

    const/16 v24, 0x3

    move/from16 v6, v20

    const/16 v20, 0x4

    move/from16 v7, v21

    move-object/from16 v37, v8

    move-object/from16 v8, v19

    move/from16 v19, v9

    move-object/from16 v9, v23

    move/from16 v21, v10

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v36

    invoke-static {v15, v0, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    move-object/from16 v0, v37

    .line 193
    invoke-static {v11, v0, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto :goto_40

    :cond_65
    :goto_3f
    move/from16 v19, v9

    move/from16 v21, v10

    const/16 v20, 0x4

    const/16 v24, 0x3

    :goto_40
    add-int/lit8 v9, v19, 0x1

    move/from16 v10, v21

    goto/16 :goto_3c

    .line 194
    :cond_66
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 195
    invoke-interface {v15, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 196
    new-array v6, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v1, 0x0

    .line 197
    invoke-static {v5, v1, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    if-eqz p4, :cond_67

    .line 199
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v11, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object v7, v0

    goto :goto_41

    :cond_67
    move-object/from16 v7, v16

    .line 200
    :goto_41
    new-instance v9, Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    move-object/from16 v4, v25

    move-object/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;[Ljava/lang/String;)V

    return-object v9
.end method

.method private computeSortedFields([Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)[Lcom/alibaba/fastjson/util/FieldInfo;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v0, :cond_0

    return-object p2

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3
    array-length v1, v0

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, v0

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    const/4 v3, 0x0

    .line 5
    :goto_1
    array-length v5, p2

    if-ge v3, v5, :cond_2

    .line 6
    aget-object v5, p2, v3

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_5

    return-object p2

    .line 7
    :cond_5
    array-length v2, v0

    array-length p1, p1

    if-ne v2, p1, :cond_c

    const/4 p1, 0x0

    .line 8
    :goto_4
    array-length v2, v0

    if-ge p1, v2, :cond_7

    .line 9
    aget-object v2, p2, p1

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 p1, 0x0

    goto :goto_5

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x1

    :goto_5
    if-eqz p1, :cond_8

    return-object p2

    .line 10
    :cond_8
    array-length p1, p2

    new-array p1, p1, [Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v2, 0x0

    .line 11
    :goto_6
    array-length v3, v0

    if-ge v2, v3, :cond_b

    const/4 v3, 0x0

    .line 12
    :goto_7
    array-length v5, p2

    if-ge v3, v5, :cond_a

    .line 13
    aget-object v5, p2, v3

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 14
    aget-object v3, p2, v3

    aput-object v3, p1, v2

    goto :goto_8

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 15
    :cond_b
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    return-object p1

    .line 16
    :cond_c
    array-length p1, p2

    new-array v2, p1, [Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    .line 17
    :goto_9
    array-length v5, v0

    if-ge v3, v5, :cond_f

    const/4 v5, 0x0

    .line 18
    :goto_a
    array-length v6, p2

    if-ge v5, v6, :cond_e

    .line 19
    aget-object v6, p2, v5

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 20
    aget-object v5, p2, v5

    aput-object v5, v2, v3

    goto :goto_b

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_e
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 21
    :cond_f
    array-length v0, v0

    const/4 v3, 0x0

    .line 22
    :goto_c
    array-length v5, p2

    if-ge v3, v5, :cond_13

    const/4 v5, 0x0

    :goto_d
    if-ge v5, p1, :cond_11

    if-ge v5, v0, :cond_11

    .line 23
    aget-object v6, v2, v3

    aget-object v7, p2, v5

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/util/FieldInfo;->equals(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v5, 0x1

    goto :goto_e

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_11
    const/4 v5, 0x0

    :goto_e
    if-nez v5, :cond_12

    .line 24
    aget-object v5, p2, v3

    aput-object v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 25
    :cond_13
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    :cond_14
    return-object p2
.end method
