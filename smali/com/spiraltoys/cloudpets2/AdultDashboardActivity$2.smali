.class Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$2;
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

.field final synthetic val$interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;Lcom/google/android/gms/ads/InterstitialAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$2;->val$interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$2;->val$interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 123
    :cond_0
    return-void
.end method
