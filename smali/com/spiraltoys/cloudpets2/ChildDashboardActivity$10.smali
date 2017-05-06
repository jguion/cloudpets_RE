.class Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10;
.super Ljava/lang/Object;
.source "ChildDashboardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    .prologue
    .line 846
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 849
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->access$000(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->visitingCloudpetOverlay:Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10$1;-><init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$10;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 864
    return-void
.end method
