.class public Lcom/alibaba/fastjson/util/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/alibaba/fastjson/util/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final alternateNames:[Ljava/lang/String;

.field public final declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final field:Ljava/lang/reflect/Field;

.field public final fieldAccess:Z

.field private final fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final fieldClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final fieldTransient:Z

.field public final fieldType:Ljava/lang/reflect/Type;

.field public final format:Ljava/lang/String;

.field public final getOnly:Z

.field public final isEnum:Z

.field public final method:Ljava/lang/reflect/Method;

.field private final methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final name:Ljava/lang/String;

.field public final nameHashCode:J

.field private ordinal:I

.field public final serialzeFeatures:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 3
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 5
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 6
    iput-object p4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 8
    iput-object p5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 9
    iput p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 10
    iput p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 11
    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result p4

    const/4 p6, 0x1

    if-eqz p4, :cond_0

    const-class p4, Lcom/alibaba/fastjson/JSONAware;

    invoke-virtual {p4, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 12
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 13
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz p5, :cond_1

    .line 14
    invoke-virtual {p5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p3

    and-int/lit8 p4, p3, 0x1

    .line 15
    iput-boolean p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 16
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    goto :goto_1

    .line 17
    :cond_1
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 18
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 19
    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    const-wide p3, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 p5, 0x0

    .line 20
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p6

    if-ge p5, p6, :cond_2

    .line 21
    invoke-virtual {p1, p5}, Ljava/lang/String;->charAt(I)C

    move-result p6

    int-to-long p6, p6

    xor-long/2addr p3, p6

    const-wide p6, 0x100000001b3L

    mul-long p3, p3, p6

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    .line 22
    :cond_2
    iput-wide p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    .line 23
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    new-array p1, v0, [Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "II",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 25
    const-class v6, Lcom/alibaba/fastjson/JSONAware;

    const-class v7, Ljava/lang/Object;

    const-class v8, Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    .line 26
    iput v9, v0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 27
    iput-object v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 28
    iput-object v2, v0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 29
    iput-object v3, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move/from16 v10, p6

    .line 30
    iput v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    move-object/from16 v10, p8

    .line 31
    iput-object v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v10, p9

    .line 32
    iput-object v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    move/from16 v10, p7

    .line 33
    iput v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    .line 35
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v12

    .line 36
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_0

    move-object v12, v11

    .line 37
    :cond_0
    invoke-interface {v10}, Lcom/alibaba/fastjson/annotation/JSONField;->alternateNames()[Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-array v10, v9, [Ljava/lang/String;

    .line 38
    iput-object v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    move-object v12, v11

    .line 39
    :goto_0
    iput-object v12, v0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 40
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    if-eqz v2, :cond_3

    and-int/lit8 v13, v12, 0x1

    if-eqz v13, :cond_2

    .line 41
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    if-ne v13, v14, :cond_2

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v13, 0x1

    :goto_2
    iput-boolean v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    .line 42
    :goto_3
    iput-boolean v12, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    goto :goto_4

    .line 43
    :cond_5
    iput-boolean v9, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 44
    iput-boolean v9, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    :goto_4
    const-wide v12, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v14, 0x0

    .line 45
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_6

    .line 46
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    int-to-long v9, v15

    xor-long/2addr v9, v12

    const-wide v12, 0x100000001b3L

    mul-long v12, v12, v9

    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x0

    goto :goto_5

    .line 47
    :cond_6
    iput-wide v12, v0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    if-eqz v2, :cond_c

    .line 48
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 49
    array-length v3, v1

    const/4 v9, 0x1

    if-ne v3, v9, :cond_9

    const/4 v9, 0x0

    .line 50
    aget-object v1, v1, v9

    .line 51
    const-class v3, Ljava/lang/Class;

    if-eq v1, v3, :cond_8

    if-eq v1, v8, :cond_8

    .line 52
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_6

    :cond_7
    if-eqz p10, :cond_8

    .line 53
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v9

    goto :goto_7

    :cond_8
    :goto_6
    move-object v3, v1

    .line 54
    :goto_7
    iput-boolean v9, v0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    const/4 v10, 0x1

    goto :goto_a

    :cond_9
    const/4 v9, 0x0

    .line 55
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 56
    const-class v3, Ljava/lang/Class;

    if-ne v1, v3, :cond_b

    :cond_a
    move-object v3, v1

    :goto_8
    const/4 v10, 0x1

    goto :goto_9

    :cond_b
    if-eqz p10, :cond_a

    .line 57
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_8

    .line 58
    :goto_9
    iput-boolean v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 59
    :goto_a
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    goto :goto_d

    :cond_c
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 60
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_e

    if-eq v1, v8, :cond_e

    .line 62
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_b

    :cond_d
    if-eqz p10, :cond_e

    .line 63
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_c

    :cond_e
    :goto_b
    move-object v2, v1

    .line 64
    :goto_c
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    iput-object v8, v0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 65
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    move-object v3, v2

    :goto_d
    if-eqz v4, :cond_15

    if-ne v1, v7, :cond_15

    .line 66
    instance-of v2, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_15

    .line 67
    move-object v2, v3

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    .line 68
    instance-of v8, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_f

    .line 69
    move-object v8, v5

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    .line 70
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v8

    goto :goto_e

    :cond_f
    move-object v8, v11

    :goto_e
    move-object v12, v4

    :goto_f
    if-eqz v12, :cond_11

    if-eq v12, v7, :cond_11

    .line 71
    iget-object v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    if-eq v12, v13, :cond_11

    .line 72
    invoke-virtual {v12}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v13

    .line 73
    instance-of v14, v13, Ljava/lang/reflect/ParameterizedType;

    if-eqz v14, :cond_10

    .line 74
    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 75
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v13

    .line 76
    invoke-virtual {v12}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v14

    invoke-static {v13, v14, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-object v8, v13

    .line 77
    :cond_10
    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    goto :goto_f

    :cond_11
    if-eqz v8, :cond_13

    .line 78
    iget-object v7, v0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v7

    const/4 v12, 0x0

    .line 79
    :goto_10
    array-length v13, v7

    if-ge v12, v13, :cond_13

    .line 80
    aget-object v13, v7, v12

    invoke-virtual {v2, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 81
    aget-object v11, v8, v12

    goto :goto_11

    :cond_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    :cond_13
    :goto_11
    if-eqz v11, :cond_15

    .line 82
    invoke-static {v11}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 83
    iput-object v11, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 84
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v9, 0x1

    :cond_14
    iput-boolean v9, v0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    return-void

    .line 85
    :cond_15
    instance-of v2, v3, Ljava/lang/Class;

    if-nez v2, :cond_19

    if-eqz v5, :cond_16

    goto :goto_12

    :cond_16
    move-object v5, v4

    .line 86
    :goto_12
    invoke-static {v4, v5, v3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    if-eq v2, v3, :cond_18

    .line 87
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_17

    .line 88
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_13

    .line 89
    :cond_17
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_18

    .line 90
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    :cond_18
    :goto_13
    move-object v3, v2

    .line 91
    :cond_19
    iput-object v3, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 92
    iput-object v1, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 93
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 94
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 95
    invoke-virtual {v6, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v9, 0x1

    :cond_1a
    iput-boolean v9, v0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    return-void
.end method

.method public static getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    if-eqz p0, :cond_c

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 1
    :cond_0
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 3
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 4
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    if-eq v0, p0, :cond_1

    .line 5
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p2

    .line 6
    :cond_2
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object p2

    .line 7
    :cond_3
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_5

    .line 8
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 9
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 10
    move-object v3, p2

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    const/4 v4, 0x0

    .line 11
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 12
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 13
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v4

    return-object p0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_5
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_c

    .line 15
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 16
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 17
    instance-of v3, p1, Ljava/lang/reflect/ParameterizedType;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 18
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    goto :goto_1

    .line 20
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_7

    .line 21
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 22
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    goto :goto_1

    :cond_7
    move-object p0, v4

    move-object p1, p0

    :goto_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 23
    :goto_2
    array-length v6, v2

    if-ge v3, v6, :cond_b

    if-eqz p1, :cond_b

    .line 24
    aget-object v6, v2, v3

    .line 25
    instance-of v7, v6, Ljava/lang/reflect/TypeVariable;

    if-eqz v7, :cond_a

    .line 26
    check-cast v6, Ljava/lang/reflect/TypeVariable;

    const/4 v7, 0x0

    .line 27
    :goto_3
    array-length v8, p0

    if-ge v7, v8, :cond_a

    .line 28
    aget-object v8, p0, v7

    invoke-interface {v8}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    if-nez v4, :cond_8

    .line 29
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 30
    :cond_8
    aget-object v5, v4, v7

    aput-object v5, v2, v3

    const/4 v5, 0x1

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    if-eqz v5, :cond_c

    .line 31
    new-instance p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 32
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-direct {p0, v2, p1, p2}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object p0

    :cond_c
    :goto_4
    return-object p2
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I
    .locals 2

    .line 2
    iget v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result p1

    return p1
.end method

.method public equals(Lcom/alibaba/fastjson/util/FieldInfo;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 2
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    return-object v0
.end method
