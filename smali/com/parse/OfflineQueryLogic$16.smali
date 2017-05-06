.class final Lcom/parse/OfflineQueryLogic$16;
.super Ljava/lang/Object;
.source "OfflineQueryLogic.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineQueryLogic;->sort(Ljava/util/List;Lcom/parse/ParseQuery$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$keys:Ljava/util/List;

.field final synthetic val$nearSphereKey:Ljava/lang/String;

.field final synthetic val$nearSphereValue:Lcom/parse/ParseGeoPoint;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/parse/ParseGeoPoint;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereValue:Lcom/parse/ParseGeoPoint;

    iput-object p3, p0, Lcom/parse/OfflineQueryLogic$16;->val$keys:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/parse/ParseObject;Lcom/parse/ParseObject;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 906
    .local p1, "lhs":Lcom/parse/ParseObject;, "TT;"
    .local p2, "rhs":Lcom/parse/ParseObject;, "TT;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereKey:Ljava/lang/String;

    if-eqz v14, :cond_1

    .line 910
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereKey:Ljava/lang/String;

    move-object/from16 v0, p1

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, v14}, Lcom/parse/OfflineQueryLogic;->access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseGeoPoint;

    .line 911
    .local v5, "lhsPoint":Lcom/parse/ParseGeoPoint;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereKey:Ljava/lang/String;

    move-object/from16 v0, p2

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, v14}, Lcom/parse/OfflineQueryLogic;->access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/parse/ParseGeoPoint;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    .local v12, "rhsPoint":Lcom/parse/ParseGeoPoint;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereValue:Lcom/parse/ParseGeoPoint;

    invoke-virtual {v5, v14}, Lcom/parse/ParseGeoPoint;->distanceInRadiansTo(Lcom/parse/ParseGeoPoint;)D

    move-result-wide v6

    .line 918
    .local v6, "lhsDistance":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereValue:Lcom/parse/ParseGeoPoint;

    invoke-virtual {v12, v14}, Lcom/parse/ParseGeoPoint;->distanceInRadiansTo(Lcom/parse/ParseGeoPoint;)D

    move-result-wide v10

    .line 919
    .local v10, "rhsDistance":D
    cmpl-double v14, v6, v10

    if-eqz v14, :cond_1

    .line 920
    sub-double v14, v6, v10

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_0

    const/4 v14, 0x1

    .line 950
    .end local v5    # "lhsPoint":Lcom/parse/ParseGeoPoint;
    .end local v6    # "lhsDistance":D
    .end local v10    # "rhsDistance":D
    .end local v12    # "rhsPoint":Lcom/parse/ParseGeoPoint;
    :goto_0
    return v14

    .line 912
    :catch_0
    move-exception v3

    .line 913
    .local v3, "e":Lcom/parse/ParseException;
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 920
    .end local v3    # "e":Lcom/parse/ParseException;
    .restart local v5    # "lhsPoint":Lcom/parse/ParseGeoPoint;
    .restart local v6    # "lhsDistance":D
    .restart local v10    # "rhsDistance":D
    .restart local v12    # "rhsPoint":Lcom/parse/ParseGeoPoint;
    :cond_0
    const/4 v14, -0x1

    goto :goto_0

    .line 924
    .end local v5    # "lhsPoint":Lcom/parse/ParseGeoPoint;
    .end local v6    # "lhsDistance":D
    .end local v10    # "rhsDistance":D
    .end local v12    # "rhsPoint":Lcom/parse/ParseGeoPoint;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/OfflineQueryLogic$16;->val$keys:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 925
    .local v4, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 926
    .local v2, "descending":Z
    const-string v15, "-"

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 927
    const/4 v2, 0x1

    .line 928
    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 934
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, v4}, Lcom/parse/OfflineQueryLogic;->access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 935
    .local v8, "lhsValue":Ljava/lang/Object;
    move-object/from16 v0, p2

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, v4}, Lcom/parse/OfflineQueryLogic;->access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/parse/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 942
    .local v13, "rhsValue":Ljava/lang/Object;
    :try_start_2
    # invokes: Lcom/parse/OfflineQueryLogic;->compareTo(Ljava/lang/Object;Ljava/lang/Object;)I
    invoke-static {v8, v13}, Lcom/parse/OfflineQueryLogic;->access$000(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v9

    .line 946
    .local v9, "result":I
    if-eqz v9, :cond_2

    .line 947
    if-eqz v2, :cond_4

    neg-int v9, v9

    .end local v9    # "result":I
    :cond_4
    move v14, v9

    goto :goto_0

    .line 936
    .end local v8    # "lhsValue":Ljava/lang/Object;
    .end local v13    # "rhsValue":Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 937
    .restart local v3    # "e":Lcom/parse/ParseException;
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 943
    .end local v3    # "e":Lcom/parse/ParseException;
    .restart local v8    # "lhsValue":Ljava/lang/Object;
    .restart local v13    # "rhsValue":Ljava/lang/Object;
    :catch_2
    move-exception v3

    .line 944
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Unable to sort by key %s."

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v4, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 950
    .end local v2    # "descending":Z
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "key":Ljava/lang/String;
    .end local v8    # "lhsValue":Ljava/lang/Object;
    .end local v13    # "rhsValue":Ljava/lang/Object;
    :cond_5
    const/4 v14, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 903
    check-cast p1, Lcom/parse/ParseObject;

    check-cast p2, Lcom/parse/ParseObject;

    invoke-virtual {p0, p1, p2}, Lcom/parse/OfflineQueryLogic$16;->compare(Lcom/parse/ParseObject;Lcom/parse/ParseObject;)I

    move-result v0

    return v0
.end method
