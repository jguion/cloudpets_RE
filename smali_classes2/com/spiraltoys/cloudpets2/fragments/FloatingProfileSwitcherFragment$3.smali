.class Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingProfileSwitcherFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->hideProfilePicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->floatingMenu:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->floatingMenu:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 296
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$OnFloatingProfileSwitcherFragmentInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$OnFloatingProfileSwitcherFragmentInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$OnFloatingProfileSwitcherFragmentInteractionListener;->onProfileFlyoutMenuDismissed()V

    .line 299
    :cond_0
    return-void
.end method
