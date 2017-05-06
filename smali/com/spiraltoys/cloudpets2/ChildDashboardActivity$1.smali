.class Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "ChildDashboardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->setupAds()V
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
    .line 215
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 220
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->access$000(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->connectionIndicator:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 221
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->access$000(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdView;->getHeight()I

    move-result v1

    .line 222
    .local v1, "offset":I
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 223
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->access$000(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->connectionIndicator:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;

    invoke-virtual {v2, v0}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->access$000(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->childDashboardHelp:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 226
    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 227
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->access$000(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->childDashboardHelp:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->access$000(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->profilePickerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 230
    return-void
.end method
