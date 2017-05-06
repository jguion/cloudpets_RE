.class Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$2;
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

.field final synthetic val$interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;Lcom/google/android/gms/ads/InterstitialAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$2;->val$interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$2;->val$interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 249
    :cond_0
    return-void
.end method
