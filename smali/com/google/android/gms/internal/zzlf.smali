.class public final Lcom/google/android/gms/internal/zzlf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zziy;
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field private zzctd:Landroid/app/Activity;

.field private zzcte:Z

.field private zzctf:Z

.field private zzctg:Z

.field private zzcth:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private zzcti:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlf;->zzctd:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlf;->mView:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlf;->zzcth:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzlf;->zzcti:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method private zzvc()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlf;->zzcte:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzcth:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzctd:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzkr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlf;->zzctd:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlf;->zzcth:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzkr;->zza(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgx()Lcom/google/android/gms/internal/zzlo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlf;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlf;->zzcth:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzcti:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzctd:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzkr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlf;->zzctd:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlf;->zzcti:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzkr;->zza(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgx()Lcom/google/android/gms/internal/zzlo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlf;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlf;->zzcti:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlf;->zzcte:Z

    :cond_4
    return-void
.end method

.method private zzvd()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzctd:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlf;->zzcte:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzcth:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzctd:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgb()Lcom/google/android/gms/internal/zzks;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlf;->zzctd:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlf;->zzcth:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzks;->zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzcti:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlf;->zzctd:Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzkr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlf;->zzctd:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlf;->zzcti:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzkr;->zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlf;->zzcte:Z

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlf;->zzctf:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlf;->zzctg:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlf;->zzvc()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlf;->zzctf:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlf;->zzvd()V

    return-void
.end method

.method public zzl(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlf;->zzctd:Landroid/app/Activity;

    return-void
.end method

.method public zzva()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlf;->zzctg:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlf;->zzctf:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlf;->zzvc()V

    :cond_0
    return-void
.end method

.method public zzvb()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlf;->zzctg:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlf;->zzvd()V

    return-void
.end method
