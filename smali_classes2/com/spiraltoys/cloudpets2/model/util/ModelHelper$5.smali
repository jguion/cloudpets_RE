.class final Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5;
.super Ljava/lang/Object;
.source "ModelHelper.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->addFriend(Lcom/spiraltoys/cloudpets2/model/Profile;Ljava/lang/String;Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/FriendRelationship;Lcom/parse/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/parse/SaveCallback;

.field final synthetic val$friend:Lcom/spiraltoys/cloudpets2/model/FriendRecord;


# direct methods
.method constructor <init>(Lcom/parse/SaveCallback;Lcom/spiraltoys/cloudpets2/model/FriendRecord;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5;->val$callback:Lcom/parse/SaveCallback;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5;->val$friend:Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 3
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5;->val$callback:Lcom/parse/SaveCallback;

    invoke-interface {v0, p1}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V

    .line 185
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5;->val$friend:Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    const-string v1, "friends"

    new-instance v2, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5$1;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5$1;-><init>(Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->pinInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 167
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5;->done(Lcom/parse/ParseException;)V

    return-void
.end method
