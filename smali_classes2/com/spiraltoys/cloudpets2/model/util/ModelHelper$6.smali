.class final Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$6;
.super Ljava/lang/Object;
.source "ModelHelper.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->addFriends(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/FriendRelationship;Lcom/parse/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/parse/SaveCallback;


# direct methods
.method constructor <init>(Lcom/parse/SaveCallback;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$6;->val$callback:Lcom/parse/SaveCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 1
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 222
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$6$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$6$1;-><init>(Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$6;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllFriendsToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$6;->val$callback:Lcom/parse/SaveCallback;

    invoke-interface {v0, p1}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 218
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$6;->done(Lcom/parse/ParseException;)V

    return-void
.end method
