.class Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "ChildVoiceMessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x190

    .line 102
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    # getter for: Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mVoiceMessageAdapter:Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    # getter for: Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mVoiceMessageAdapter:Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    # getter for: Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mVoiceMessageAdapter:Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    # getter for: Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mMaxMessageCountToShowBear:I
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    # getter for: Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;->childMessagesListCharacter:Lcom/spiraltoys/cloudpets2/views/ClippedCornerImageView;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/views/ClippedCornerImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 145
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    # invokes: Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->updateEmptyView()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->access$300(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;)V

    .line 146
    return-void

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    # getter for: Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;->childMessagesListCharacter:Lcom/spiraltoys/cloudpets2/views/ClippedCornerImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/views/ClippedCornerImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    # getter for: Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;->childMessagesListCharacter:Lcom/spiraltoys/cloudpets2/views/ClippedCornerImageView;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/views/ClippedCornerImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3$2;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3$2;-><init>(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method
