.class Lcom/parse/ParseDecoder;
.super Ljava/lang/Object;
.source "ParseDecoder.java"


# static fields
.field private static final INSTANCE:Lcom/parse/ParseDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/parse/ParseDecoder;

    invoke-direct {v0}, Lcom/parse/ParseDecoder;-><init>()V

    sput-object v0, Lcom/parse/ParseDecoder;->INSTANCE:Lcom/parse/ParseDecoder;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static get()Lcom/parse/ParseDecoder;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/parse/ParseDecoder;->INSTANCE:Lcom/parse/ParseDecoder;

    return-object v0
.end method


# virtual methods
.method convertJSONArrayToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 45
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-object v1
.end method

.method convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v2, "outputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 53
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 56
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 70
    instance-of v11, p1, Lorg/json/JSONArray;

    if-eqz v11, :cond_1

    .line 71
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/parse/ParseDecoder;->convertJSONArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 136
    :cond_0
    :goto_0
    return-object p1

    .line 74
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v11, p1, Lorg/json/JSONObject;

    if-eqz v11, :cond_0

    move-object v3, p1

    .line 78
    check-cast v3, Lorg/json/JSONObject;

    .line 80
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v11, "__op"

    invoke-virtual {v3, v11, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, "opString":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 83
    :try_start_0
    invoke-static {v3, p0}, Lcom/parse/ParseFieldOperations;->decode(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseFieldOperation;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Lorg/json/JSONException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 89
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    const-string v11, "__type"

    invoke-virtual {v3, v11, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 90
    .local v9, "typeString":Ljava/lang/String;
    if-nez v9, :cond_3

    .line 91
    invoke-virtual {p0, v3}, Lcom/parse/ParseDecoder;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 94
    :cond_3
    const-string v11, "Date"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 95
    const-string v10, "iso"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "iso":Ljava/lang/String;
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    .line 99
    .end local v2    # "iso":Ljava/lang/String;
    :cond_4
    const-string v11, "Bytes"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 100
    const-string v10, "base64"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "base64":Ljava/lang/String;
    const/4 v10, 0x2

    invoke-static {v0, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    goto :goto_0

    .line 104
    .end local v0    # "base64":Ljava/lang/String;
    :cond_5
    const-string v11, "Pointer"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 105
    const-string v10, "className"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "objectId"

    .line 106
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 105
    invoke-virtual {p0, v10, v11}, Lcom/parse/ParseDecoder;->decodePointer(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object p1

    goto :goto_0

    .line 109
    :cond_6
    const-string v11, "File"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 110
    new-instance p1, Lcom/parse/ParseFile;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct {p1, v3, p0}, Lcom/parse/ParseFile;-><init>(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V

    goto :goto_0

    .line 113
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_7
    const-string v11, "GeoPoint"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 116
    :try_start_1
    const-string v10, "latitude"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 117
    .local v4, "latitude":D
    const-string v10, "longitude"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    .line 121
    .local v6, "longitude":D
    new-instance p1, Lcom/parse/ParseGeoPoint;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct {p1, v4, v5, v6, v7}, Lcom/parse/ParseGeoPoint;-><init>(DD)V

    goto/16 :goto_0

    .line 118
    .end local v4    # "latitude":D
    .end local v6    # "longitude":D
    .restart local p1    # "object":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 119
    .restart local v1    # "e":Lorg/json/JSONException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 124
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_8
    const-string v11, "Object"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 125
    const/4 v11, 0x1

    invoke-static {v3, v10, v11, p0}, Lcom/parse/ParseObject;->fromJSON(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/parse/ParseDecoder;)Lcom/parse/ParseObject;

    move-result-object p1

    goto/16 :goto_0

    .line 128
    :cond_9
    const-string v11, "Relation"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 129
    new-instance p1, Lcom/parse/ParseRelation;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct {p1, v3, p0}, Lcom/parse/ParseRelation;-><init>(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V

    goto/16 :goto_0

    .line 132
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_a
    const-string v11, "OfflineObject"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 133
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "An unexpected offline pointer was encountered."

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_b
    move-object p1, v10

    .line 136
    goto/16 :goto_0
.end method

.method protected decodePointer(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "objectId"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p1, p2}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method
