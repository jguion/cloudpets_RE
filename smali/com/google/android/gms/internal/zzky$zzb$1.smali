.class Lcom/google/android/gms/internal/zzky$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzky$zzb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzky$zza;Lcom/google/android/gms/internal/zzm$zzb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcss:Lcom/google/android/gms/internal/zzm$zzb;

.field final synthetic zzcst:Lcom/google/android/gms/internal/zzky$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzm$zzb;Lcom/google/android/gms/internal/zzky$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzky$zzb$1;->zzcss:Lcom/google/android/gms/internal/zzm$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzky$zzb$1;->zzcst:Lcom/google/android/gms/internal/zzky$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zze(Lcom/google/android/gms/internal/zzr;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzky$zzb$1;->zzcss:Lcom/google/android/gms/internal/zzm$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzky$zzb$1;->zzcst:Lcom/google/android/gms/internal/zzky$zza;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzky$zza;->zzrs()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzm$zzb;->zzb(Ljava/lang/Object;)V

    return-void
.end method
