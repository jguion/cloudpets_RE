.class Lcom/google/android/gms/internal/zzhd$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhd;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbuh:Lcom/google/android/gms/internal/zzhd;

.field final synthetic zzbui:Lcom/google/ads/AdRequest$ErrorCode;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhd;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhd$10;->zzbuh:Lcom/google/android/gms/internal/zzhd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhd$10;->zzbui:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhd$10;->zzbuh:Lcom/google/android/gms/internal/zzhd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhd;->zza(Lcom/google/android/gms/internal/zzhd;)Lcom/google/android/gms/internal/zzgs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhd$10;->zzbui:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzhe;->zza(Lcom/google/ads/AdRequest$ErrorCode;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgs;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
