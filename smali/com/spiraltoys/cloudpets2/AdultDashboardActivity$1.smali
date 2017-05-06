.class Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdultDashboardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->setupAds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->access$000(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->buyACloudpetButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->access$000(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->buyACloudpetButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    return-void
.end method
