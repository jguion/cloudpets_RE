.class public Lcom/google/android/gms/internal/zzks$zza;
.super Lcom/google/android/gms/internal/zzks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzks;-><init>(Lcom/google/android/gms/internal/zzks$1;)V

    return-void
.end method


# virtual methods
.method public zza(Landroid/app/DownloadManager$Request;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    return v0
.end method

.method public zzum()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public zzun()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method
