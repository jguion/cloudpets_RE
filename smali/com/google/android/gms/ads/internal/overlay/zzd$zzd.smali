.class Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;
.super Lcom/google/android/gms/internal/zzkm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zziy;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/overlay/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzd"
.end annotation


# instance fields
.field final synthetic zzbxy:Lcom/google/android/gms/ads/internal/overlay/zzd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;->zzbxy:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkm;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzd;Lcom/google/android/gms/ads/internal/overlay/zzd$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 0

    return-void
.end method

.method public zzfc()V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgu()Lcom/google/android/gms/internal/zzla;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;->zzbxy:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxf:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyq:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->zzaoc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzla;->zza(Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgb()Lcom/google/android/gms/internal/zzks;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;->zzbxy:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;->zzbxy:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxf:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyq:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->zzaoa:Z

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;->zzbxy:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbxf:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyq:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget v4, v4, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->zzaob:F

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/zzks;->zza(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzkr;->zzcrf:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd$1;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
