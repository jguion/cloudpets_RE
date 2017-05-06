.class Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChildDashboardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10;

    .prologue
    .line 849
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10$1;->this$1:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 860
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10$1;->this$1:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->access$000(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->visitingCloudpetOverlay:Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 861
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 853
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10$1;->this$1:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->access$000(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->visitingCloudpetOverlay:Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 854
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10$1;->this$1:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    # invokes: Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->checkIfiInitialChildHelpDisplayed()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->access$700(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)V

    .line 855
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10$1;->this$1:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    # invokes: Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->showBluetoothOffDialogIfNeeded()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->access$800(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)V

    .line 856
    return-void
.end method
