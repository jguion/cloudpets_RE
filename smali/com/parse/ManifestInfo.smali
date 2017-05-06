.class Lcom/parse/ManifestInfo;
.super Ljava/lang/Object;
.source "ManifestInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ManifestInfo$ManifestCheckResult;
    }
.end annotation


# static fields
.field private static final NUMBER_OF_PUSH_INTENTS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "com.parse.ManifestInfo"

.field private static displayName:Ljava/lang/String;

.field private static iconId:I

.field private static lastModified:J

.field private static final lock:Ljava/lang/Object;

.field private static pushType:Lcom/parse/PushType;

.field static versionCode:I

.field static versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    .line 43
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/parse/ManifestInfo;->lastModified:J

    .line 44
    const/4 v0, -0x1

    sput v0, Lcom/parse/ManifestInfo;->versionCode:I

    .line 45
    sput-object v2, Lcom/parse/ManifestInfo;->versionName:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/parse/ManifestInfo;->iconId:I

    .line 47
    sput-object v2, Lcom/parse/ManifestInfo;->displayName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkReceiver(Ljava/lang/Class;Ljava/lang/String;[Landroid/content/Intent;)Z
    .locals 7
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "intents"    # [Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/content/BroadcastReceiver;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/content/BroadcastReceiver;>;"
    const/4 v3, 0x0

    .line 430
    invoke-static {p0}, Lcom/parse/ManifestInfo;->getReceiverInfo(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 432
    .local v1, "receiver":Landroid/content/pm/ActivityInfo;
    if-nez v1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v3

    .line 436
    :cond_1
    if-eqz p1, :cond_2

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 440
    :cond_2
    array-length v5, p2

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v0, p2, v4

    .line 441
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 442
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 446
    invoke-static {p0, v2}, Lcom/parse/ManifestInfo;->checkResolveInfo(Ljava/lang/Class;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 440
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 451
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static checkResolveInfo(Ljava/lang/Class;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/content/BroadcastReceiver;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/content/BroadcastReceiver;>;"
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 421
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    const/4 v1, 0x1

    .line 426
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static gcmSupportLevel()Lcom/parse/ManifestInfo$ManifestCheckResult;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 470
    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 471
    .local v0, "context":Landroid/content/Context;
    const-class v6, Lcom/parse/PushService;

    invoke-static {v6}, Lcom/parse/ManifestInfo;->getServiceInfo(Ljava/lang/Class;)Landroid/content/pm/ServiceInfo;

    move-result-object v6

    if-nez v6, :cond_0

    .line 472
    sget-object v6, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    .line 510
    :goto_0
    return-object v6

    .line 475
    :cond_0
    const/4 v6, 0x5

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "android.permission.INTERNET"

    aput-object v6, v5, v9

    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v6, v5, v10

    const-string v6, "android.permission.WAKE_LOCK"

    aput-object v6, v5, v11

    const/4 v6, 0x3

    const-string v7, "com.google.android.c2dm.permission.RECEIVE"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".permission.C2D_MESSAGE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 483
    .local v5, "requiredPermissions":[Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/parse/ManifestInfo;->hasRequestedPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 484
    sget-object v6, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    goto :goto_0

    .line 487
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "com.google.android.c2dm.permission.SEND"

    .line 489
    .local v4, "rcvrPermission":Ljava/lang/String;
    new-array v1, v11, [Landroid/content/Intent;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 492
    invoke-virtual {v6, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    aput-object v6, v1, v9

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 495
    invoke-virtual {v6, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    aput-object v6, v1, v10

    .line 498
    .local v1, "intents":[Landroid/content/Intent;
    const-class v6, Lcom/parse/GcmBroadcastReceiver;

    invoke-static {v6, v4, v1}, Lcom/parse/ManifestInfo;->checkReceiver(Ljava/lang/Class;Ljava/lang/String;[Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 499
    sget-object v6, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    goto :goto_0

    .line 502
    :cond_2
    new-array v2, v10, [Ljava/lang/String;

    const-string v6, "android.permission.VIBRATE"

    aput-object v6, v2, v9

    .line 506
    .local v2, "optionalPermissions":[Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/parse/ManifestInfo;->hasGrantedPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 507
    sget-object v6, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    goto :goto_0

    .line 510
    :cond_3
    sget-object v6, Lcom/parse/ManifestInfo$ManifestCheckResult;->HAS_ALL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    goto :goto_0
.end method

.method private static getApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # I

    .prologue
    .line 327
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 329
    :goto_0
    return-object v1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getApplicationMetadata(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 337
    const/16 v1, 0x80

    invoke-static {p0, v1}, Lcom/parse/ManifestInfo;->getApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 338
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 339
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 341
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 318
    invoke-static {}, Lcom/parse/Parse;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    sget-object v2, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 107
    :try_start_0
    sget-object v1, Lcom/parse/ManifestInfo;->displayName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 109
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/parse/ManifestInfo;->displayName:Ljava/lang/String;

    .line 111
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    sget-object v1, Lcom/parse/ManifestInfo;->displayName:Ljava/lang/String;

    return-object v1

    .line 111
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getGcmManifestMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 549
    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".permission.C2D_MESSAGE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "gcmPackagePermission":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "make sure that these permissions are declared as children of the root <manifest> element:\n\n<uses-permission android:name=\"android.permission.INTERNET\" />\n<uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />\n<uses-permission android:name=\"android.permission.VIBRATE\" />\n<uses-permission android:name=\"android.permission.WAKE_LOCK\" />\n<uses-permission android:name=\"android.permission.GET_ACCOUNTS\" />\n<uses-permission android:name=\"com.google.android.c2dm.permission.RECEIVE\" />\n<permission android:name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" android:protectionLevel=\"signature\" />\n<uses-permission android:name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" />\n\nAlso, please make sure that these services and broadcast receivers are declared as children of the <application> element:\n\n<service android:name=\"com.parse.PushService\" />\n<receiver android:name=\"com.parse.GcmBroadcastReceiver\" android:permission=\"com.google.android.c2dm.permission.SEND\">\n  <intent-filter>\n    <action android:name=\"com.google.android.c2dm.intent.RECEIVE\" />\n    <action android:name=\"com.google.android.c2dm.intent.REGISTRATION\" />\n    <category android:name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" />\n  </intent-filter>\n</receiver>\n<receiver android:name=\"com.parse.ParsePushBroadcastReceiver\" android:exported=false>\n  <intent-filter>\n    <action android:name=\"com.parse.push.intent.RECEIVE\" />\n    <action android:name=\"com.parse.push.intent.OPEN\" />\n    <action android:name=\"com.parse.push.intent.DELETE\" />\n  </intent-filter>\n</receiver>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getIconId()I
    .locals 2

    .prologue
    .line 121
    sget-object v1, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    sget v0, Lcom/parse/ManifestInfo;->iconId:I

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    sput v0, Lcom/parse/ManifestInfo;->iconId:I

    .line 125
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    sget v0, Lcom/parse/ManifestInfo;->iconId:I

    return v0

    .line 125
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static varargs getIntentReceivers([Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "actions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 143
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, "packageName":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    array-length v7, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v0, p0, v6

    .line 148
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x20

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 147
    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 154
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 155
    .local v5, "receiverPackageName":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 156
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 153
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 159
    .end local v5    # "receiverPackageName":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public static getLastModified()J
    .locals 8

    .prologue
    .line 55
    sget-object v2, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 56
    :try_start_0
    sget-wide v4, Lcom/parse/ManifestInfo;->lastModified:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 57
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "apkPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sput-wide v4, Lcom/parse/ManifestInfo;->lastModified:J

    .line 60
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    sget-wide v2, Lcom/parse/ManifestInfo;->lastModified:J

    return-wide v2

    .line 60
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getNonePushTypeLogMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Push is not configured for this app because the app manifest is missing required declarations. Please add the following declarations to your app manifest to use GCM for push: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 296
    invoke-static {}, Lcom/parse/ManifestInfo;->getGcmManifestMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    return-object v0
.end method

.method private static getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 348
    .local v0, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 353
    :goto_0
    return-object v0

    .line 349
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 322
    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method private static getPpnsManifestMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    const-string v0, "make sure that these permissions are declared as children of the root <manifest> element:\n\n<uses-permission android:name=\"android.permission.INTERNET\" />\n<uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />\n<uses-permission android:name=\"android.permission.RECEIVE_BOOT_COMPLETED\" />\n<uses-permission android:name=\"android.permission.VIBRATE\" />\n<uses-permission android:name=\"android.permission.WAKE_LOCK\" />\n\nAlso, please make sure that these services and broadcast receivers are declared as children of the <application> element:\n\n<service android:name=\"com.parse.PushService\" />\n<receiver android:name=\"com.parse.ParseBroadcastReceiver\">\n  <intent-filter>\n    <action android:name=\"android.intent.action.BOOT_COMPLETED\" />\n    <action android:name=\"android.intent.action.USER_PRESENT\" />\n  </intent-filter>\n</receiver>\n<receiver android:name=\"com.parse.ParsePushBroadcastReceiver\" android:exported=false>\n  <intent-filter>\n    <action android:name=\"com.parse.push.intent.RECEIVE\" />\n    <action android:name=\"com.parse.push.intent.OPEN\" />\n    <action android:name=\"com.parse.push.intent.DELETE\" />\n  </intent-filter>\n</receiver>"

    return-object v0
.end method

.method public static getPushType()Lcom/parse/PushType;
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 198
    sget-object v9, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 199
    :try_start_0
    sget-object v10, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    if-nez v10, :cond_1

    .line 200
    invoke-static {}, Lcom/parse/ManifestInfo;->isGooglePlayServicesAvailable()Z

    move-result v5

    .line 201
    .local v5, "isGooglePlayServicesAvailable":Z
    invoke-static {}, Lcom/parse/PPNSUtil;->isPPNSAvailable()Z

    move-result v6

    .line 202
    .local v6, "isPPNSAvailable":Z
    invoke-static {}, Lcom/parse/ManifestInfo;->hasAnyGcmSpecificDeclaration()Z

    move-result v1

    .line 203
    .local v1, "hasAnyGcmSpecificDeclaration":Z
    invoke-static {}, Lcom/parse/ManifestInfo;->gcmSupportLevel()Lcom/parse/ManifestInfo$ManifestCheckResult;

    move-result-object v0

    .line 204
    .local v0, "gcmSupportLevel":Lcom/parse/ManifestInfo$ManifestCheckResult;
    invoke-static {}, Lcom/parse/ManifestInfo;->ppnsSupportLevel()Lcom/parse/ManifestInfo$ManifestCheckResult;

    move-result-object v7

    .line 206
    .local v7, "ppnsSupportLevel":Lcom/parse/ManifestInfo$ManifestCheckResult;
    invoke-static {}, Lcom/parse/ManifestInfo;->usesPushBroadcastReceivers()Z

    move-result v2

    .line 207
    .local v2, "hasPushBroadcastReceiver":Z
    sget-object v10, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    if-eq v0, v10, :cond_2

    move v3, v4

    .line 209
    .local v3, "hasRequiredGcmDeclarations":Z
    :goto_0
    sget-object v10, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    if-eq v7, v10, :cond_3

    .line 212
    .local v4, "hasRequiredPpnsDeclarations":Z
    :goto_1
    if-eqz v2, :cond_4

    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    .line 215
    sget-object v8, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    sput-object v8, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    .line 266
    :cond_0
    :goto_2
    const-string v8, "com.parse.ManifestInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Using "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for push."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/parse/PLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v8

    const/4 v10, 0x5

    if-gt v8, v10, :cond_1

    .line 273
    sget-object v8, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    sget-object v10, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    if-ne v8, v10, :cond_9

    sget-object v8, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    if-ne v0, v8, :cond_9

    .line 274
    const-string v8, "com.parse.ManifestInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Using GCM for Parse Push, but the app manifest is missing some optional declarations that should be added for maximum reliability. Please "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 276
    invoke-static {}, Lcom/parse/ManifestInfo;->getGcmManifestMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 274
    invoke-static {v8, v10}, Lcom/parse/PLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_1
    :goto_3
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    sget-object v8, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    return-object v8

    .end local v3    # "hasRequiredGcmDeclarations":Z
    .end local v4    # "hasRequiredPpnsDeclarations":Z
    :cond_2
    move v3, v8

    .line 207
    goto :goto_0

    .restart local v3    # "hasRequiredGcmDeclarations":Z
    :cond_3
    move v4, v8

    .line 209
    goto :goto_1

    .line 216
    .restart local v4    # "hasRequiredPpnsDeclarations":Z
    :cond_4
    if-eqz v2, :cond_6

    if-eqz v6, :cond_6

    if-eqz v4, :cond_6

    if-eqz v1, :cond_5

    if-nez v5, :cond_6

    .line 220
    :cond_5
    :try_start_1
    sget-object v8, Lcom/parse/PushType;->PPNS:Lcom/parse/PushType;

    sput-object v8, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    .line 222
    if-eqz v5, :cond_0

    .line 223
    const-string v8, "com.parse.ManifestInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Using PPNS for push even though Google Play Services is available. Please "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 224
    invoke-static {}, Lcom/parse/ManifestInfo;->getGcmManifestMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 223
    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 284
    .end local v0    # "gcmSupportLevel":Lcom/parse/ManifestInfo$ManifestCheckResult;
    .end local v1    # "hasAnyGcmSpecificDeclaration":Z
    .end local v2    # "hasPushBroadcastReceiver":Z
    .end local v3    # "hasRequiredGcmDeclarations":Z
    .end local v4    # "hasRequiredPpnsDeclarations":Z
    .end local v6    # "isPPNSAvailable":Z
    .end local v7    # "ppnsSupportLevel":Lcom/parse/ManifestInfo$ManifestCheckResult;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 227
    .restart local v0    # "gcmSupportLevel":Lcom/parse/ManifestInfo$ManifestCheckResult;
    .restart local v1    # "hasAnyGcmSpecificDeclaration":Z
    .restart local v2    # "hasPushBroadcastReceiver":Z
    .restart local v3    # "hasRequiredGcmDeclarations":Z
    .restart local v4    # "hasRequiredPpnsDeclarations":Z
    .restart local v6    # "isPPNSAvailable":Z
    .restart local v7    # "ppnsSupportLevel":Lcom/parse/ManifestInfo$ManifestCheckResult;
    :cond_6
    :try_start_2
    sget-object v8, Lcom/parse/PushType;->NONE:Lcom/parse/PushType;

    sput-object v8, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    .line 229
    if-eqz v1, :cond_0

    .line 230
    if-nez v2, :cond_7

    .line 233
    const-string v8, "com.parse.ManifestInfo"

    const-string v10, "Push is currently disabled. This is probably because you migrated from an older version of Parse. This version of Parse requires your app to have a BroadcastReceiver that handles com.parse.push.intent.RECEIVE, com.parse.push.intent.OPEN, and com.parse.push.intent.DELETE. You can do this by adding these lines to your AndroidManifest.xml:\n\n <receiver android:name=\"com.parse.ParsePushBroadcastReceiver\"\n   android:exported=false>\n  <intent-filter>\n     <action android:name=\"com.parse.push.intent.RECEIVE\" />\n     <action android:name=\"com.parse.push.intent.OPEN\" />\n     <action android:name=\"com.parse.push.intent.DELETE\" />\n   </intent-filter>\n </receiver>"

    invoke-static {v8, v10}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_7
    if-nez v5, :cond_8

    .line 250
    const-string v8, "com.parse.ManifestInfo"

    const-string v10, "Cannot use GCM for push on this device because Google Play Services is not available. Install Google Play Services from the Play Store."

    invoke-static {v8, v10}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_8
    if-nez v3, :cond_0

    .line 260
    const-string v8, "com.parse.ManifestInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot use GCM for push because the app manifest is missing some required declarations. Please "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 261
    invoke-static {}, Lcom/parse/ManifestInfo;->getGcmManifestMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 260
    invoke-static {v8, v10}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 277
    :cond_9
    sget-object v8, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    sget-object v10, Lcom/parse/PushType;->PPNS:Lcom/parse/PushType;

    if-ne v8, v10, :cond_1

    sget-object v8, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    if-ne v7, v8, :cond_1

    .line 278
    const-string v8, "com.parse.ManifestInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Using PPNS for push, but the app manifest is missing some optional declarations that should be added for maximum reliability. Please "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 280
    invoke-static {}, Lcom/parse/ManifestInfo;->getPpnsManifestMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 278
    invoke-static {v8, v10}, Lcom/parse/PLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method private static getReceiverInfo(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/content/BroadcastReceiver;",
            ">;)",
            "Landroid/content/pm/ActivityInfo;"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/content/BroadcastReceiver;>;"
    const/4 v0, 0x0

    .line 372
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    :try_start_0
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    .line 373
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getServiceInfo(Ljava/lang/Class;)Landroid/content/pm/ServiceInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)",
            "Landroid/content/pm/ServiceInfo;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    const/4 v0, 0x0

    .line 360
    .local v0, "info":Landroid/content/pm/ServiceInfo;
    :try_start_0
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 365
    :goto_0
    return-object v0

    .line 361
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getVersionCode()I
    .locals 5

    .prologue
    .line 70
    sget-object v2, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 71
    :try_start_0
    sget v1, Lcom/parse/ManifestInfo;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 73
    :try_start_1
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcom/parse/ManifestInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    sget v1, Lcom/parse/ManifestInfo;->versionCode:I

    return v1

    .line 74
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_0
    move-exception v0

    .line 75
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v1, "com.parse.ManifestInfo"

    const-string v3, "Couldn\'t find info about own package"

    invoke-static {v1, v3, v0}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 88
    sget-object v2, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 89
    :try_start_0
    sget-object v1, Lcom/parse/ManifestInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 91
    :try_start_1
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/parse/ManifestInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    sget-object v1, Lcom/parse/ManifestInfo;->versionName:Ljava/lang/String;

    return-object v1

    .line 92
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_0
    move-exception v0

    .line 93
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v1, "com.parse.ManifestInfo"

    const-string v3, "Couldn\'t find info about own package"

    invoke-static {v1, v3, v0}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private static hasAnyGcmSpecificDeclaration()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 455
    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 456
    .local v0, "context":Landroid/content/Context;
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "com.google.android.c2dm.permission.RECEIVE"

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/parse/ManifestInfo;->hasRequestedPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".permission.C2D_MESSAGE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/parse/ManifestInfo;->hasRequestedPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Lcom/parse/GcmBroadcastReceiver;

    .line 458
    invoke-static {v3}, Lcom/parse/ManifestInfo;->getReceiverInfo(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 462
    :cond_1
    return v1
.end method

.method private static varargs hasGrantedPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 408
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 410
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    array-length v5, p1

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, p1, v4

    .line 411
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 416
    .end local v2    # "permission":Ljava/lang/String;
    :goto_1
    return v3

    .line 410
    .restart local v2    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 416
    .end local v2    # "permission":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method static hasIntentReceiver(Ljava/lang/String;)Z
    .locals 3
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 134
    new-array v2, v0, [Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-static {v2}, Lcom/parse/ManifestInfo;->getIntentReceivers([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static varargs hasRequestedPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 387
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 391
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v4, :cond_0

    .line 397
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 394
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 395
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "com.parse.ManifestInfo"

    const-string v5, "Couldn\'t find info about own package"

    invoke-static {v4, v5, v0}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static isGooglePlayServicesAvailable()Z
    .locals 2

    .prologue
    .line 466
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const-string v0, "com.google.android.gsf"

    invoke-static {v0}, Lcom/parse/ManifestInfo;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static ppnsSupportLevel()Lcom/parse/ManifestInfo$ManifestCheckResult;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 514
    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 519
    .local v0, "context":Landroid/content/Context;
    const-class v4, Lcom/parse/PushService;

    invoke-static {v4}, Lcom/parse/ManifestInfo;->getServiceInfo(Ljava/lang/Class;)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    if-nez v4, :cond_0

    .line 520
    sget-object v4, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    .line 545
    :goto_0
    return-object v4

    .line 523
    :cond_0
    const/4 v4, 0x5

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "android.permission.INTERNET"

    aput-object v4, v2, v6

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v4, v2, v7

    const-string v4, "android.permission.VIBRATE"

    aput-object v4, v2, v8

    const/4 v4, 0x3

    const-string v5, "android.permission.WAKE_LOCK"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "android.permission.RECEIVE_BOOT_COMPLETED"

    aput-object v5, v2, v4

    .line 531
    .local v2, "optionalPermissions":[Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/parse/ManifestInfo;->hasGrantedPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 532
    sget-object v4, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    goto :goto_0

    .line 535
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 536
    .local v3, "packageName":Ljava/lang/String;
    new-array v1, v8, [Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v1, v6

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.USER_PRESENT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v1, v7

    .line 541
    .local v1, "intents":[Landroid/content/Intent;
    const-class v4, Lcom/parse/ParseBroadcastReceiver;

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Lcom/parse/ManifestInfo;->checkReceiver(Ljava/lang/Class;Ljava/lang/String;[Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 542
    sget-object v4, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    goto :goto_0

    .line 545
    :cond_2
    sget-object v4, Lcom/parse/ManifestInfo$ManifestCheckResult;->HAS_ALL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    goto :goto_0
.end method

.method static setPushType(Lcom/parse/PushType;)V
    .locals 2
    .param p0, "newPushType"    # Lcom/parse/PushType;

    .prologue
    .line 188
    sget-object v1, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    sput-object p0, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    .line 190
    monitor-exit v1

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static usesPushBroadcastReceivers()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "intentsRegistered":I
    const-string v1, "com.parse.push.intent.RECEIVE"

    invoke-static {v1}, Lcom/parse/ManifestInfo;->hasIntentReceiver(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    add-int/lit8 v0, v0, 0x1

    .line 168
    :cond_0
    const-string v1, "com.parse.push.intent.OPEN"

    invoke-static {v1}, Lcom/parse/ManifestInfo;->hasIntentReceiver(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    add-int/lit8 v0, v0, 0x1

    .line 172
    :cond_1
    const-string v1, "com.parse.push.intent.DELETE"

    invoke-static {v1}, Lcom/parse/ManifestInfo;->hasIntentReceiver(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    add-int/lit8 v0, v0, 0x1

    .line 176
    :cond_2
    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_3

    .line 177
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "The Parse Push BroadcastReceiver must implement a filter for all of com.parse.push.intent.RECEIVE, com.parse.push.intent.OPEN, and com.parse.push.intent.DELETE"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_3
    if-ne v0, v2, :cond_4

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method
