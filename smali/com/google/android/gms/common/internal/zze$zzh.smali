.class public final Lcom/google/android/gms/common/internal/zze$zzh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "zzh"
.end annotation


# instance fields
.field final synthetic Bu:Lcom/google/android/gms/common/internal/zze;

.field private final Bx:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zze;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze$zzh;->Bu:Lcom/google/android/gms/common/internal/zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/internal/zze$zzh;->Bx:I

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "Expecting a valid IBinder"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzh;->Bu:Lcom/google/android/gms/common/internal/zze;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zze;->zza(Lcom/google/android/gms/common/internal/zze;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzh;->Bu:Lcom/google/android/gms/common/internal/zze;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzv$zza;->zzdv(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzv;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zze;->zza(Lcom/google/android/gms/common/internal/zze;Lcom/google/android/gms/common/internal/zzv;)Lcom/google/android/gms/common/internal/zzv;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzh;->Bu:Lcom/google/android/gms/common/internal/zze;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/common/internal/zze$zzh;->Bx:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/internal/zze;->zza(ILandroid/os/Bundle;I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzh;->Bu:Lcom/google/android/gms/common/internal/zze;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zze;->zza(Lcom/google/android/gms/common/internal/zze;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzh;->Bu:Lcom/google/android/gms/common/internal/zze;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zze;->zza(Lcom/google/android/gms/common/internal/zze;Lcom/google/android/gms/common/internal/zzv;)Lcom/google/android/gms/common/internal/zzv;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze$zzh;->Bu:Lcom/google/android/gms/common/internal/zze;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze$zzh;->Bu:Lcom/google/android/gms/common/internal/zze;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/gms/common/internal/zze$zzh;->Bx:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
