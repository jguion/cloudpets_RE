.class public Lcom/google/android/gms/ads/internal/request/zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zziy;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/request/zza$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Lcom/google/android/gms/internal/zzau;Lcom/google/android/gms/ads/internal/request/zza$zza;)Lcom/google/android/gms/internal/zzkm;
    .locals 2

    iget-object v0, p2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;->zzcfu:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    const-string v1, "sdk_less_server_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzn;

    invoke-direct {v0, p1, p2, p4}, Lcom/google/android/gms/ads/internal/request/zzn;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Lcom/google/android/gms/ads/internal/request/zza$zza;)V

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzkm;->zzqw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v1

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzb;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/request/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$zza;Lcom/google/android/gms/internal/zzau;Lcom/google/android/gms/ads/internal/request/zza$zza;)V

    move-object v1, v0

    goto :goto_0
.end method
