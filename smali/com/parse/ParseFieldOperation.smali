.class interface abstract Lcom/parse/ParseFieldOperation;
.super Ljava/lang/Object;
.source "ParseFieldOperation.java"


# virtual methods
.method public abstract apply(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract encode(Lcom/parse/ParseEncoder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;
.end method
