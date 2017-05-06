.class Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2$1;
.super Ljava/lang/Object;
.source "ModelHelper.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2;->done(Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2;->val$callback:Lcom/parse/SaveCallback;

    invoke-interface {v0, p1}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/VoiceMessageSavedToLocalDatastoreEvent;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/events/VoiceMessageSavedToLocalDatastoreEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2;->val$callback:Lcom/parse/SaveCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 91
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2$1;->done(Lcom/parse/ParseException;)V

    return-void
.end method
