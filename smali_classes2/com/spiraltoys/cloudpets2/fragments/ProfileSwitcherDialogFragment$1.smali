.class Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$1;
.super Ljava/lang/Object;
.source "ProfileSwitcherDialogFragment.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$PasswordCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->onContinueToProfileClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPasswordChecked(Z)V
    .locals 2
    .param p1, "isCorrect"    # Z

    .prologue
    .line 163
    if-eqz p1, :cond_2

    .line 164
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;)Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$OnProfilePickerInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;)Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$OnProfilePickerInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$OnProfilePickerInteractionListener;->onProfileSelected(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->dismiss()V

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/spiraltoys/cloudpets2/BaseActivity;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/BaseActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->hideProgressDelayed()V

    .line 177
    :cond_1
    return-void

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;)V

    goto :goto_0
.end method
