.class Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$3;
.super Ljava/lang/Object;
.source "EditParentProfileActivity.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->saveProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->hideProgress()V

    .line 278
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    if-eqz p1, :cond_2

    .line 282
    invoke-virtual {p1}, Lcom/parse/ParseException;->printStackTrace()V

    .line 283
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/util/ErrorMessages;->getStringResourceIdForGenericParseExceiption(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 287
    :cond_2
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/ProfileUpdatedEvent;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/events/ProfileUpdatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->setResult(I)V

    .line 290
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 273
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$3;->done(Lcom/parse/ParseException;)V

    return-void
.end method
