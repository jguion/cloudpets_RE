.class Lcom/google/android/gms/internal/zzhg$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhg;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbuu:Lcom/google/android/gms/internal/zzhg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhg$2;->zzbuu:Lcom/google/android/gms/internal/zzhg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg$2;->zzbuu:Lcom/google/android/gms/internal/zzhg;

    const-string v1, "Operation denied by user."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhg;->zzbx(Ljava/lang/String;)V

    return-void
.end method
