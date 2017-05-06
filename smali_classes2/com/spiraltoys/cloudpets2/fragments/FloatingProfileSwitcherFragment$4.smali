.class Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingProfileSwitcherFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->showProfilePicker()V
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
    .line 318
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$4;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 321
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$4;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$4;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 323
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$4;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->floatingMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$4;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->floatingMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 325
    return-void
.end method
