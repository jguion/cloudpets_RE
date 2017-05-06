.class Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3$2;
.super Ljava/lang/Object;
.source "ChildVoiceMessagesFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3$2;->this$1:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 137
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3$2;->this$1:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    # getter for: Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;->childMessagesListCharacter:Lcom/spiraltoys/cloudpets2/views/ClippedCornerImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/views/ClippedCornerImageView;->setVisibility(I)V

    .line 133
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 141
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 128
    return-void
.end method
