.class public final Lcom/google/android/gms/internal/zzjb;
.super Lcom/google/android/gms/ads/internal/request/zzk$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zziy;
.end annotation


# static fields
.field private static final zzaok:Ljava/lang/Object;

.field private static zzcjk:Lcom/google/android/gms/internal/zzjb;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzcjl:Lcom/google/android/gms/internal/zzja;

.field private final zzcjm:Lcom/google/android/gms/internal/zzdb;

.field private final zzcjn:Lcom/google/android/gms/internal/zzfy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzjb;->zzaok:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzdb;Lcom/google/android/gms/internal/zzja;)V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/request/zzk$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjb;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjb;->zzcjl:Lcom/google/android/gms/internal/zzja;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjb;->zzcjm:Lcom/google/android/gms/internal/zzdb;

    new-instance v0, Lcom/google/android/gms/internal/zzfy;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzvg()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzdb;->zzkp()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzjb$4;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzjb$4;-><init>(Lcom/google/android/gms/internal/zzjb;)V

    new-instance v5, Lcom/google/android/gms/internal/zzfy$zzb;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzfy$zzb;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzfy;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzkw;Lcom/google/android/gms/internal/zzkw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjb;->zzcjn:Lcom/google/android/gms/internal/zzfy;

    return-void

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method private static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzfy;Lcom/google/android/gms/internal/zzdb;Lcom/google/android/gms/internal/zzja;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .locals 20

    const-string v4, "Starting ad request from service using: AFMA_getAd"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkn;->zzdd(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/zzdi;->initialize(Landroid/content/Context;)V

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzja;->zzcji:Lcom/google/android/gms/internal/zzhs;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzhs;->zzqi()Lcom/google/android/gms/internal/zzlj;

    move-result-object v11

    new-instance v7, Lcom/google/android/gms/internal/zzdq;

    sget-object v4, Lcom/google/android/gms/internal/zzdi;->zzbca:Lcom/google/android/gms/internal/zzde;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzde;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "load_ad"

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaqz:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaxi:Ljava/lang/String;

    invoke-direct {v7, v4, v5, v6}, Lcom/google/android/gms/internal/zzdq;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_0

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcgm:J

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcgm:J

    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/zzdq;->zzc(J)Lcom/google/android/gms/internal/zzdo;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "cts"

    aput-object v8, v5, v6

    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/zzdq;->zza(Lcom/google/android/gms/internal/zzdo;[Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzdq;->zzla()Lcom/google/android/gms/internal/zzdo;

    move-result-object v16

    const/4 v4, 0x0

    move-object/from16 v0, p4

    iget v5, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_12

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcgb:Landroid/os/Bundle;

    if-eqz v5, :cond_12

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcgb:Landroid/os/Bundle;

    move-object v5, v4

    :goto_0
    const/4 v6, 0x0

    sget-object v4, Lcom/google/android/gms/internal/zzdi;->zzbcj:Lcom/google/android/gms/internal/zzde;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzde;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzja;->zzcja:Lcom/google/android/gms/internal/zzjf;

    if-eqz v4, :cond_11

    if-nez v5, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/zzdi;->zzbck:Lcom/google/android/gms/internal/zzde;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzde;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "contentInfo is not present, but we\'ll still launch the app index task"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkn;->v(Ljava/lang/String;)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_1
    if-eqz v5, :cond_10

    new-instance v4, Lcom/google/android/gms/internal/zzjb$1;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/google/android/gms/internal/zzjb$1;-><init>(Lcom/google/android/gms/internal/zzja;Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/os/Bundle;)V

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkq;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzlj;

    move-result-object v4

    move-object v8, v5

    move-object v5, v4

    :goto_1
    new-instance v6, Lcom/google/android/gms/internal/zzlh;

    const/4 v4, 0x0

    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/zzlh;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcfu:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_2

    const-string v9, "_ad"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p4

    iget-boolean v9, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcgt:Z

    if-eqz v9, :cond_f

    if-nez v4, :cond_f

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzja;->zzcjf:Lcom/google/android/gms/internal/zzgd;

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v4, v6}, Lcom/google/android/gms/internal/zzgd;->zza(Landroid/content/pm/ApplicationInfo;)Lcom/google/android/gms/internal/zzlj;

    move-result-object v4

    move-object v9, v4

    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgi()Lcom/google/android/gms/internal/zzji;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zzji;->zzy(Landroid/content/Context;)Lcom/google/android/gms/internal/zzjh;

    move-result-object v13

    iget v4, v13, Lcom/google/android/gms/internal/zzjh;->zzcmd:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_3

    const-string v4, "Device is offline."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkn;->zzdd(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    :goto_4
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v6, 0x7

    if-lt v4, v6, :cond_4

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcgj:Ljava/lang/String;

    move-object v10, v4

    :goto_5
    new-instance v6, Lcom/google/android/gms/internal/zzjd;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, v10, v4}, Lcom/google/android/gms/internal/zzjd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcfu:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_5

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcfu:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    const-string v12, "_ad"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/zzjc;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v4

    goto :goto_4

    :cond_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    goto :goto_5

    :cond_5
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzja;->zzcjd:Lcom/google/android/gms/internal/zzdd;

    move-object/from16 v0, p4

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzdd;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzja;->zzcjj:Lcom/google/android/gms/internal/zzkd;

    move-object/from16 v0, p4

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzkd;->zzg(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzja;->zzcjh:Lcom/google/android/gms/internal/zzjl;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzjl;->zzz(Landroid/content/Context;)Lcom/google/android/gms/internal/zzjl$zza;

    move-result-object v17

    if-eqz v5, :cond_6

    :try_start_0
    const-string v4, "Waiting for app index fetching task."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkn;->v(Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/gms/internal/zzdi;->zzbcl:Lcom/google/android/gms/internal/zzde;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzde;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v18

    invoke-interface {v5, v0, v1, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    const-string v4, "App index fetching task completed."

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkn;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_6
    :goto_6
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzja;->zzcjc:Lcom/google/android/gms/internal/zzka;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcfv:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/zzka;->zzcr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11}, Lcom/google/android/gms/internal/zzjb;->zzd(Lcom/google/android/gms/internal/zzlj;)Landroid/os/Bundle;

    new-instance v4, Lcom/google/android/gms/internal/zziz;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zziz;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zziz;->zzf(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/internal/zziz;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/google/android/gms/internal/zziz;->zza(Lcom/google/android/gms/internal/zzjh;)Lcom/google/android/gms/internal/zziz;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zziz;->zza(Lcom/google/android/gms/internal/zzjl$zza;)Lcom/google/android/gms/internal/zziz;

    move-result-object v4

    invoke-static {v9}, Lcom/google/android/gms/internal/zzjb;->zzc(Lcom/google/android/gms/internal/zzlj;)Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zziz;->zzc(Landroid/location/Location;)Lcom/google/android/gms/internal/zziz;

    move-result-object v4

    invoke-static {v11}, Lcom/google/android/gms/internal/zzjb;->zzd(Lcom/google/android/gms/internal/zzlj;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zziz;->zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zziz;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/google/android/gms/internal/zziz;->zzci(Ljava/lang/String;)Lcom/google/android/gms/internal/zziz;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/zziz;->zzk(Ljava/util/List;)Lcom/google/android/gms/internal/zziz;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/zziz;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zziz;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/google/android/gms/internal/zziz;->zzcj(Ljava/lang/String;)Lcom/google/android/gms/internal/zziz;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/google/android/gms/internal/zzja;->zzcjb:Lcom/google/android/gms/ads/internal/cache/zze;

    move-object/from16 v0, p0

    invoke-interface {v5, v0}, Lcom/google/android/gms/ads/internal/cache/zze;->zzj(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zziz;->zzj(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zziz;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zzjc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zziz;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_7

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto/16 :goto_4

    :catch_0
    move-exception v4

    :goto_7
    const-string v5, "Failed to fetch app index signal"

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/zzkn;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_1
    move-exception v4

    const-string v4, "Timed out waiting for app index fetching task"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzkn;->zzdd(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    move-object/from16 v0, p4

    iget v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->versionCode:I

    const/4 v8, 0x7

    if-ge v4, v8, :cond_8

    :try_start_1
    const-string v4, "request_id"

    invoke-virtual {v5, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_8
    :goto_8
    :try_start_2
    const-string v4, "prefetch_mode"

    const-string v8, "url"

    invoke-virtual {v5, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_9
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "arc"

    aput-object v8, v4, v5

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v4}, Lcom/google/android/gms/internal/zzdq;->zza(Lcom/google/android/gms/internal/zzdo;[Ljava/lang/String;)Z

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzdq;->zzla()Lcom/google/android/gms/internal/zzdo;

    move-result-object v8

    sget-object v10, Lcom/google/android/gms/internal/zzkr;->zzcrf:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/zzjb$2;

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/zzjb$2;-><init>(Lcom/google/android/gms/internal/zzfy;Lcom/google/android/gms/internal/zzjd;Lcom/google/android/gms/internal/zzdq;Lcom/google/android/gms/internal/zzdo;Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzjd;->zzse()Ljava/util/concurrent/Future;

    move-result-object v4

    const-wide/16 v8, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v8, v9, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/zzjg;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v13, :cond_9

    :try_start_4
    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-object v5, Lcom/google/android/gms/internal/zzkr;->zzcrf:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/zzjb$3;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/gms/internal/zzjb$3;-><init>(Lcom/google/android/gms/internal/zzja;Landroid/content/Context;Lcom/google/android/gms/internal/zzjd;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :catch_2
    move-exception v4

    const-string v8, "Failed putting prefetch parameters to ad request."

    invoke-static {v8, v4}, Lcom/google/android/gms/internal/zzkn;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_3
    move-exception v4

    :try_start_5
    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sget-object v5, Lcom/google/android/gms/internal/zzkr;->zzcrf:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/zzjb$3;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/gms/internal/zzjb$3;-><init>(Lcom/google/android/gms/internal/zzja;Landroid/content/Context;Lcom/google/android/gms/internal/zzjd;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :cond_9
    :try_start_6
    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzjg;->getErrorCode()I

    move-result v4

    const/4 v5, -0x2

    if-eq v4, v5, :cond_a

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzjg;->getErrorCode()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sget-object v5, Lcom/google/android/gms/internal/zzkr;->zzcrf:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/zzjb$3;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/gms/internal/zzjb$3;-><init>(Lcom/google/android/gms/internal/zzja;Landroid/content/Context;Lcom/google/android/gms/internal/zzjd;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :cond_a
    :try_start_7
    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzdq;->zzld()Lcom/google/android/gms/internal/zzdo;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzdq;->zzld()Lcom/google/android/gms/internal/zzdo;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "rur"

    aput-object v9, v5, v8

    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/zzdq;->zza(Lcom/google/android/gms/internal/zzdo;[Ljava/lang/String;)Z

    :cond_b
    const/4 v4, 0x0

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzjg;->zzsj()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzjg;->zzsj()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/zzjc;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v4

    :cond_c
    if-nez v4, :cond_d

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzjg;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaqv:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v10, v4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzjg;->getUrl()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v8, p4

    move-object/from16 v9, p0

    move-object v14, v7

    move-object/from16 v15, p3

    invoke-static/range {v8 .. v15}, Lcom/google/android/gms/internal/zzjb;->zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzjg;Lcom/google/android/gms/internal/zzdq;Lcom/google/android/gms/internal/zzja;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v4

    :cond_d
    if-nez v4, :cond_e

    new-instance v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    :cond_e
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "tts"

    aput-object v9, v5, v8

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v5}, Lcom/google/android/gms/internal/zzdq;->zza(Lcom/google/android/gms/internal/zzdo;[Ljava/lang/String;)Z

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzdq;->zzlc()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzchp:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sget-object v5, Lcom/google/android/gms/internal/zzkr;->zzcrf:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/zzjb$3;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/gms/internal/zzjb$3;-><init>(Lcom/google/android/gms/internal/zzja;Landroid/content/Context;Lcom/google/android/gms/internal/zzjd;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :catchall_0
    move-exception v4

    sget-object v5, Lcom/google/android/gms/internal/zzkr;->zzcrf:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/zzjb$3;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/android/gms/internal/zzjb$3;-><init>(Lcom/google/android/gms/internal/zzja;Landroid/content/Context;Lcom/google/android/gms/internal/zzjd;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v4

    :catch_4
    move-exception v4

    goto/16 :goto_8

    :catch_5
    move-exception v4

    goto/16 :goto_7

    :cond_f
    move-object v9, v6

    goto/16 :goto_3

    :cond_10
    move-object v8, v5

    move-object v5, v6

    goto/16 :goto_1

    :cond_11
    move-object v8, v5

    move-object v5, v6

    goto/16 :goto_1

    :cond_12
    move-object v5, v4

    goto/16 :goto_0
.end method

.method public static zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzjg;Lcom/google/android/gms/internal/zzdq;Lcom/google/android/gms/internal/zzja;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .locals 13

    if-eqz p6, :cond_6

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/zzdq;->zzla()Lcom/google/android/gms/internal/zzdo;

    move-result-object v2

    move-object v3, v2

    :goto_0
    :try_start_0
    new-instance v8, Lcom/google/android/gms/internal/zzje;

    invoke-direct {v8, p0}, Lcom/google/android/gms/internal/zzje;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    const-string v4, "AdRequestServiceImpl: Sending request: "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/internal/zzkn;->zzdd(Ljava/lang/String;)V

    new-instance v4, Ljava/net/URL;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgf()Lcom/google/android/gms/common/util/zze;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v10

    move v6, v2

    move-object v7, v4

    :goto_2
    if-eqz p7, :cond_0

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzja;->zzcjg:Lcom/google/android/gms/internal/zzjk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjk;->zzsl()V

    :cond_0
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzkr;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, p2, v5, v2}, Lcom/google/android/gms/internal/zzkr;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzjg;->zzsi()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "x-afma-drt-cookie"

    move-object/from16 v0, p4

    invoke-virtual {v2, v4, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcgu:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "Sending webview cookie in ad request header."

    invoke-static {v5}, Lcom/google/android/gms/internal/zzkn;->zzdd(Ljava/lang/String;)V

    const-string v5, "Cookie"

    invoke-virtual {v2, v5, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzjg;->zzsh()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzjg;->zzsh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v4, v9

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x0

    :try_start_2
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4, v9}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-static {v4}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    :cond_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v12

    const/16 v4, 0xc8

    if-lt v9, v4, :cond_9

    const/16 v4, 0x12c

    if-ge v9, v4, :cond_9

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    const/4 v5, 0x0

    :try_start_5
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfz()Lcom/google/android/gms/internal/zzkr;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/zzkr;->zza(Ljava/io/InputStreamReader;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v5

    :try_start_7
    invoke-static {v4}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    invoke-static {v6, v12, v5, v9}, Lcom/google/android/gms/internal/zzjb;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v8, v6, v12, v5}, Lcom/google/android/gms/internal/zzje;->zzb(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    if-eqz p6, :cond_4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ufe"

    aput-object v6, v4, v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzdq;->zza(Lcom/google/android/gms/internal/zzdo;[Ljava/lang/String;)Z

    :cond_4
    invoke-virtual {v8, v10, v11}, Lcom/google/android/gms/internal/zzje;->zzj(J)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v3

    :try_start_8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p7, :cond_5

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzja;->zzcjg:Lcom/google/android/gms/internal/zzjk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjk;->zzsm()V

    :cond_5
    move-object v2, v3

    :goto_3
    return-object v2

    :cond_6
    const/4 v2, 0x0

    move-object v3, v2

    goto/16 :goto_0

    :cond_7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Error while connecting to ad server: "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-static {v2}, Lcom/google/android/gms/internal/zzkn;->zzdf(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V

    goto :goto_3

    :catchall_0
    move-exception v3

    move-object v4, v5

    :goto_5
    :try_start_9
    invoke-static {v4}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p7, :cond_8

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzja;->zzcjg:Lcom/google/android/gms/internal/zzjk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjk;->zzsm()V

    :cond_8
    throw v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catchall_2
    move-exception v3

    move-object v4, v5

    :goto_6
    :try_start_b
    invoke-static {v4}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    throw v3

    :cond_9
    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v12, v5, v9}, Lcom/google/android/gms/internal/zzjb;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    const/16 v4, 0x12c

    if-lt v9, v4, :cond_d

    const/16 v4, 0x190

    if-ge v9, v4, :cond_d

    const-string v4, "Location"

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v3, "No location header to follow redirect."

    invoke-static {v3}, Lcom/google/android/gms/internal/zzkn;->zzdf(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p7, :cond_a

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzja;->zzcjg:Lcom/google/android/gms/internal/zzjk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjk;->zzsm()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :cond_a
    move-object v2, v3

    goto :goto_3

    :cond_b
    :try_start_d
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v6, 0x1

    const/4 v6, 0x5

    if-le v4, v6, :cond_f

    const-string v3, "Too many redirects."

    invoke-static {v3}, Lcom/google/android/gms/internal/zzkn;->zzdf(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p7, :cond_c

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzja;->zzcjg:Lcom/google/android/gms/internal/zzjk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjk;->zzsm()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :cond_c
    move-object v2, v3

    goto/16 :goto_3

    :cond_d
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Received error HTTP response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzkn;->zzdf(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p7, :cond_e

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzja;->zzcjg:Lcom/google/android/gms/internal/zzjk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjk;->zzsm()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    :cond_e
    move-object v2, v3

    goto/16 :goto_3

    :cond_f
    :try_start_11
    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/zzje;->zzj(Ljava/util/Map;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz p7, :cond_10

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzja;->zzcjg:Lcom/google/android/gms/internal/zzjk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjk;->zzsm()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    :cond_10
    move v6, v4

    move-object v7, v5

    goto/16 :goto_2

    :cond_11
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :catchall_3
    move-exception v3

    goto/16 :goto_6

    :catchall_4
    move-exception v3

    goto/16 :goto_5
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzdb;Lcom/google/android/gms/internal/zzja;)Lcom/google/android/gms/internal/zzjb;
    .locals 3

    sget-object v1, Lcom/google/android/gms/internal/zzjb;->zzaok:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzjb;->zzcjk:Lcom/google/android/gms/internal/zzjb;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzjb;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzjb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzdb;Lcom/google/android/gms/internal/zzja;)V

    sput-object v0, Lcom/google/android/gms/internal/zzjb;->zzcjk:Lcom/google/android/gms/internal/zzjb;

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzjb;->zzcjk:Lcom/google/android/gms/internal/zzjb;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkn;->zzbf(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Http Response: {\n  URL:\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  Headers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkn;->v(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkn;->v(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "      "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkn;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "  Body:"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkn;->v(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x186a0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v2, v0, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkn;->v(Ljava/lang/String;)V

    add-int/lit16 v0, v0, 0x3e8

    goto :goto_2

    :cond_3
    const-string v0, "    null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkn;->v(Ljava/lang/String;)V

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "  Response Code:\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkn;->v(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static zzc(Lcom/google/android/gms/internal/zzlj;)Landroid/location/Location;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlj",
            "<",
            "Landroid/location/Location;",
            ">;)",
            "Landroid/location/Location;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzdi;->zzbgm:Lcom/google/android/gms/internal/zzde;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzde;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzlj;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Exception caught while getting location"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkn;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzd(Lcom/google/android/gms/internal/zzlj;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlj",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzdi;->zzbhd:Lcom/google/android/gms/internal/zzde;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzde;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, v0}, Lcom/google/android/gms/internal/zzlj;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "Exception caught while getting parental controls."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkn;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzl;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgd()Lcom/google/android/gms/internal/zzkh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjb;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaqv:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzkh;->zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    new-instance v0, Lcom/google/android/gms/internal/zzjb$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzjb$5;-><init>(Lcom/google/android/gms/internal/zzjb;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/zzl;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkq;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzlj;

    return-void
.end method

.method public zzd(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjb;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjb;->zzcjn:Lcom/google/android/gms/internal/zzfy;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjb;->zzcjm:Lcom/google/android/gms/internal/zzdb;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjb;->zzcjl:Lcom/google/android/gms/internal/zzja;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzjb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzfy;Lcom/google/android/gms/internal/zzdb;Lcom/google/android/gms/internal/zzja;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-result-object v0

    return-object v0
.end method
