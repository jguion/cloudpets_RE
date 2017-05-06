.class final Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9;
.super Ljava/lang/Object;
.source "ModelHelper.java"

# interfaces
.implements Lcom/parse/FunctionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->resolvePendingFriendRequest(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/model/FriendRecord;ZLcom/parse/FunctionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/FunctionCallback",
        "<",
        "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/parse/FunctionCallback;


# direct methods
.method constructor <init>(Lcom/parse/FunctionCallback;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9;->val$callback:Lcom/parse/FunctionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/spiraltoys/cloudpets2/model/FriendRecord;Lcom/parse/ParseException;)V
    .locals 5
    .param p1, "friendRecord"    # Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    const/4 v4, 0x0

    .line 404
    if-eqz p2, :cond_0

    .line 405
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9;->val$callback:Lcom/parse/FunctionCallback;

    invoke-interface {v0, v4, p2}, Lcom/parse/FunctionCallback;->done(Ljava/lang/Object;Lcom/parse/ParseException;)V

    .line 420
    :goto_0
    return-void

    .line 409
    :cond_0
    if-nez p1, :cond_1

    .line 410
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9;->val$callback:Lcom/parse/FunctionCallback;

    new-instance v1, Lcom/parse/ParseException;

    const/4 v2, -0x1

    const-string v3, "An error occurred resolving friend request."

    invoke-direct {v1, v2, v3}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v4, v1}, Lcom/parse/FunctionCallback;->done(Ljava/lang/Object;Lcom/parse/ParseException;)V

    goto :goto_0

    .line 414
    :cond_1
    const-string v0, "friends"

    new-instance v1, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9$1;

    invoke-direct {v1, p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9$1;-><init>(Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9;Lcom/spiraltoys/cloudpets2/model/FriendRecord;)V

    invoke-virtual {p1, v0, v1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->pinInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Object;Lcom/parse/ParseException;)V
    .locals 0

    .prologue
    .line 401
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9;->done(Lcom/spiraltoys/cloudpets2/model/FriendRecord;Lcom/parse/ParseException;)V

    return-void
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 401
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9;->done(Lcom/spiraltoys/cloudpets2/model/FriendRecord;Lcom/parse/ParseException;)V

    return-void
.end method
