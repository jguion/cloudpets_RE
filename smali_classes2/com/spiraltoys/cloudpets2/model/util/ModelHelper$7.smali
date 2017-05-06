.class final Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$7;
.super Ljava/lang/Object;
.source "ModelHelper.java"

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->clearAllFriendRequestAcceptanceNotifications(Lcom/parse/DeleteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/FindCallback",
        "<",
        "Lcom/spiraltoys/cloudpets2/model/FriendAcceptanceNotification;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/parse/DeleteCallback;


# direct methods
.method constructor <init>(Lcom/parse/DeleteCallback;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$7;->val$callback:Lcom/parse/DeleteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 355
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$7;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 1
    .param p2, "e"    # Lcom/parse/ParseException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/FriendAcceptanceNotification;",
            ">;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, "friendAcceptanceNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/FriendAcceptanceNotification;>;"
    if-eqz p2, :cond_1

    .line 359
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$7;->val$callback:Lcom/parse/DeleteCallback;

    invoke-interface {v0, p2}, Lcom/parse/DeleteCallback;->done(Lcom/parse/ParseException;)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$7;->val$callback:Lcom/parse/DeleteCallback;

    invoke-static {p1, v0}, Lcom/parse/ParseObject;->deleteAllInBackground(Ljava/util/List;Lcom/parse/DeleteCallback;)V

    goto :goto_0
.end method
