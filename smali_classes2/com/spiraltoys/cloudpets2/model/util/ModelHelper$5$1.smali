.class Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5$1;
.super Ljava/lang/Object;
.source "ModelHelper.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5;->done(Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5;->val$callback:Lcom/parse/SaveCallback;

    invoke-interface {v0, p1}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V

    .line 182
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/FriendRecordSavedToLocalDatastoreEvent;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/events/FriendRecordSavedToLocalDatastoreEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5;->val$callback:Lcom/parse/SaveCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 173
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5$1;->done(Lcom/parse/ParseException;)V

    return-void
.end method
