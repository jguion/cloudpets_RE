.class abstract Lcom/parse/ParseEncoder;
.super Ljava/lang/Object;
.source "ParseEncoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isValidType(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 31
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Date;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_0

    instance-of v0, p0, [B

    if-nez v0, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseObject;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseACL;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseFile;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseGeoPoint;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseRelation;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 48
    :try_start_0
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/parse/ParseObject;

    if-eqz v13, :cond_1

    .line 49
    check-cast p1, Lcom/parse/ParseObject;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p1}, Lcom/parse/ParseEncoder;->encodeRelatedObject(Lcom/parse/ParseObject;)Lorg/json/JSONObject;

    move-result-object v7

    .line 133
    :cond_0
    :goto_0
    return-object v7

    .line 53
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/parse/ParseQuery$State$Builder;

    if-eqz v13, :cond_2

    .line 54
    move-object/from16 v0, p1

    check-cast v0, Lcom/parse/ParseQuery$State$Builder;

    move-object v4, v0

    .line 55
    .local v4, "builder":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<*>;"
    invoke-virtual {v4}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 58
    .end local v4    # "builder":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<*>;"
    :cond_2
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/parse/ParseQuery$State;

    if-eqz v13, :cond_3

    .line 59
    move-object/from16 v0, p1

    check-cast v0, Lcom/parse/ParseQuery$State;

    move-object v12, v0

    .line 60
    .local v12, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<*>;"
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/parse/ParseQuery$State;->toJSON(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v7

    goto :goto_0

    .line 63
    .end local v12    # "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<*>;"
    :cond_3
    move-object/from16 v0, p1

    instance-of v13, v0, Ljava/util/Date;

    if-eqz v13, :cond_4

    .line 64
    check-cast p1, Ljava/util/Date;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p1}, Lcom/parse/ParseEncoder;->encodeDate(Ljava/util/Date;)Lorg/json/JSONObject;

    move-result-object v7

    goto :goto_0

    .line 67
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p1

    instance-of v13, v0, [B

    if-eqz v13, :cond_5

    .line 68
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 69
    .local v7, "json":Lorg/json/JSONObject;
    const-string v13, "__type"

    const-string v14, "Bytes"

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v13, "base64"

    check-cast p1, [B

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [B

    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v7    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 128
    .local v5, "e":Lorg/json/JSONException;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 74
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_5
    :try_start_1
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/parse/ParseFile;

    if-eqz v13, :cond_6

    .line 75
    check-cast p1, Lcom/parse/ParseFile;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseFile;->encode()Lorg/json/JSONObject;

    move-result-object v7

    goto :goto_0

    .line 78
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/parse/ParseGeoPoint;

    if-eqz v13, :cond_7

    .line 79
    move-object/from16 v0, p1

    check-cast v0, Lcom/parse/ParseGeoPoint;

    move-object v10, v0

    .line 80
    .local v10, "point":Lcom/parse/ParseGeoPoint;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .restart local v7    # "json":Lorg/json/JSONObject;
    const-string v13, "__type"

    const-string v14, "GeoPoint"

    invoke-virtual {v7, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v13, "latitude"

    invoke-virtual {v10}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v14

    invoke-virtual {v7, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 83
    const-string v13, "longitude"

    invoke-virtual {v10}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v14

    invoke-virtual {v7, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 87
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v10    # "point":Lcom/parse/ParseGeoPoint;
    :cond_7
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/parse/ParseACL;

    if-eqz v13, :cond_8

    .line 88
    move-object/from16 v0, p1

    check-cast v0, Lcom/parse/ParseACL;

    move-object v2, v0

    .line 89
    .local v2, "acl":Lcom/parse/ParseACL;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/parse/ParseACL;->toJSONObject(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v7

    goto/16 :goto_0

    .line 92
    .end local v2    # "acl":Lcom/parse/ParseACL;
    :cond_8
    move-object/from16 v0, p1

    instance-of v13, v0, Ljava/util/Map;

    if-eqz v13, :cond_9

    .line 94
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v8, v0

    .line 95
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 96
    .restart local v7    # "json":Lorg/json/JSONObject;
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 97
    .local v9, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v7, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 102
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_9
    move-object/from16 v0, p1

    instance-of v13, v0, Ljava/util/Collection;

    if-eqz v13, :cond_b

    .line 103
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 104
    .local v3, "array":Lorg/json/JSONArray;
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 105
    .local v6, "item":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v3, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .end local v6    # "item":Ljava/lang/Object;
    :cond_a
    move-object v7, v3

    .line 107
    goto/16 :goto_0

    .line 110
    .end local v3    # "array":Lorg/json/JSONArray;
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_b
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/parse/ParseRelation;

    if-eqz v13, :cond_c

    .line 111
    move-object/from16 v0, p1

    check-cast v0, Lcom/parse/ParseRelation;

    move-object v11, v0

    .line 112
    .local v11, "relation":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<*>;"
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/parse/ParseRelation;->encodeToJSON(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v7

    goto/16 :goto_0

    .line 115
    .end local v11    # "relation":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<*>;"
    :cond_c
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/parse/ParseFieldOperation;

    if-eqz v13, :cond_d

    .line 116
    check-cast p1, Lcom/parse/ParseFieldOperation;

    .end local p1    # "object":Ljava/lang/Object;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/parse/ParseFieldOperation;->encode(Lcom/parse/ParseEncoder;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_0

    .line 119
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_d
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/parse/ParseQuery$RelationConstraint;

    if-eqz v13, :cond_e

    .line 120
    check-cast p1, Lcom/parse/ParseQuery$RelationConstraint;

    .end local p1    # "object":Ljava/lang/Object;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery$RelationConstraint;->encode(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v7

    goto/16 :goto_0

    .line 123
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_e
    if-nez p1, :cond_f

    .line 124
    sget-object v7, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 132
    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/parse/ParseEncoder;->isValidType(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    move-object/from16 v7, p1

    .line 133
    goto/16 :goto_0

    .line 136
    :cond_10
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "invalid type for ParseObject: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 137
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method protected encodeDate(Ljava/util/Date;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 143
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 144
    .local v2, "object":Lorg/json/JSONObject;
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/parse/ParseDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "iso":Ljava/lang/String;
    :try_start_0
    const-string v3, "__type"

    const-string v4, "Date"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v3, "iso"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    return-object v2

    .line 148
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected abstract encodeRelatedObject(Lcom/parse/ParseObject;)Lorg/json/JSONObject;
.end method
