.class final Lcom/google/android/gms/internal/zzdi$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdi;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzamt:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdi$1;->zzamt:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdi$1;->zzdb()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public zzdb()Ljava/lang/Void;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgl()Lcom/google/android/gms/internal/zzdh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdi$1;->zzamt:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdh;->initialize(Landroid/content/Context;)V

    const/4 v0, 0x0

    return-object v0
.end method
