.class public Lcom/google/android/gms/internal/zzem;
.super Lcom/google/android/gms/internal/zzeh$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zziy;
.end annotation


# instance fields
.field private final zzblw:Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzeh$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzem;->zzblw:Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzeb;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzem;->zzblw:Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzem;->zzb(Lcom/google/android/gms/internal/zzeb;)Lcom/google/android/gms/internal/zzec;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;->onAppInstallAdLoaded(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V

    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzeb;)Lcom/google/android/gms/internal/zzec;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzec;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzec;-><init>(Lcom/google/android/gms/internal/zzeb;)V

    return-object v0
.end method
