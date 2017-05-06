.class public Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;
.super Ljava/lang/Object;
.source "BluetoothCrashResolver.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$DiscoveryCanceller;,
        Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$UpdateNotifier;
    }
.end annotation


# static fields
.field private static final BLUEDROID_MAX_BLUETOOTH_MAC_COUNT:I = 0x7c6

.field private static final BLUEDROID_POST_DISCOVERY_ESTIMATED_BLUETOOTH_MAC_COUNT:I = 0x190

.field private static final DISTINCT_BLUETOOTH_ADDRESSES_FILE:Ljava/lang/String; = "BluetoothCrashResolverState.txt"

.field private static final MIN_TIME_BETWEEN_STATE_SAVES_MILLIS:J = 0xea60L

.field private static final PREEMPTIVE_ACTION_ENABLED:Z = true

.field private static final SUSPICIOUSLY_SHORT_BLUETOOTH_OFF_INTERVAL_MILLIS:J = 0x258L

.field private static final TAG:Ljava/lang/String; = "BluetoothCrashResolver"

.field private static final TIME_TO_LET_DISCOVERY_RUN_MILLIS:I = 0x1388


# instance fields
.field private context:Landroid/content/Context;

.field private debugEnabled:Z

.field private detectedCrashCount:I

.field private discoveryCanceller:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$DiscoveryCanceller;

.field private discoveryStartConfirmed:Z

.field private distinctBluetoothAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastBluetoothCrashDetectionTime:J

.field private lastBluetoothOffTime:J

.field private lastBluetoothTurningOnTime:J

.field private lastRecoverySucceeded:Z

.field private lastStateSaveTime:J

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private recoveryAttemptCount:I

.field private recoveryInProgress:Z

.field private updateNotifier:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$UpdateNotifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->debugEnabled:Z

    .line 51
    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->recoveryInProgress:Z

    .line 52
    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->discoveryStartConfirmed:Z

    .line 54
    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->lastBluetoothOffTime:J

    .line 55
    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->lastBluetoothTurningOnTime:J

    .line 56
    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    .line 57
    iput v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->detectedCrashCount:I

    .line 58
    iput v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->recoveryAttemptCount:I

    .line 59
    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    .line 60
    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->lastStateSaveTime:J

    .line 63
    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->context:Landroid/content/Context;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    .line 66
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$DiscoveryCanceller;

    invoke-direct {v0, p0, v1}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$DiscoveryCanceller;-><init>(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->discoveryCanceller:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$DiscoveryCanceller;

    .line 304
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;-><init>(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->receiver:Landroid/content/BroadcastReceiver;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->context:Landroid/content/Context;

    .line 107
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothCrashResolver"

    const-string v1, "constructed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->loadState()V

    .line 109
    return-void
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->recoveryInProgress:Z

    return v0
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->finishRecovery()V

    return-void
.end method

.method static synthetic access$400(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->discoveryStartConfirmed:Z

    return v0
.end method

.method static synthetic access$402(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->discoveryStartConfirmed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)J
    .locals 2
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->lastBluetoothOffTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;J)J
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;
    .param p1, "x1"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->lastBluetoothOffTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)J
    .locals 2
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->lastBluetoothTurningOnTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;J)J
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;
    .param p1, "x1"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->lastBluetoothTurningOnTime:J

    return-wide p1
.end method

.method private finishRecovery()V
    .locals 2

    .prologue
    .line 299
    const-string v0, "BluetoothCrashResolver"

    const-string v1, "Recovery attempt finished"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->recoveryInProgress:Z

    .line 302
    return-void
.end method

.method private getCrashRiskDeviceCount()I
    .locals 1

    .prologue
    .line 254
    const/16 v0, 0x636

    return v0
.end method

.method private isDebugEnabled()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->debugEnabled:Z

    return v0
.end method

.method private loadState()V
    .locals 9

    .prologue
    .line 391
    const/4 v1, 0x0

    .line 392
    .local v1, "inputStream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 395
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->context:Landroid/content/Context;

    const-string v7, "BluetoothCrashResolverState.txt"

    invoke-virtual {v6, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 396
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 400
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    .line 402
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 403
    if-eqz v2, :cond_1

    .line 404
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->detectedCrashCount:I

    .line 406
    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 407
    if-eqz v2, :cond_2

    .line 408
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->recoveryAttemptCount:I

    .line 410
    :cond_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 411
    if-eqz v2, :cond_3

    .line 412
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    .line 413
    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 414
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    .line 419
    :cond_3
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "mac":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 420
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 423
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "mac":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 424
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v6, "BluetoothCrashResolver"

    const-string v7, "Can\'t read macs from BluetoothCrashResolverState.txt"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 429
    if-eqz v4, :cond_4

    .line 431
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 435
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "BluetoothCrashResolver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bluetooth addresses"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_5
    return-void

    .line 429
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "mac":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_6
    if-eqz v5, :cond_8

    .line 431
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v4, v5

    .line 432
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 425
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "mac":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_3
    :try_start_5
    const-string v6, "BluetoothCrashResolver"

    const-string v7, "Can\'t parse file BluetoothCrashResolverState.txt"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 429
    if-eqz v4, :cond_4

    .line 431
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 432
    :catch_3
    move-exception v6

    goto :goto_2

    .line 429
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v4, :cond_7

    .line 431
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 432
    :cond_7
    :goto_5
    throw v6

    .local v0, "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v7

    goto :goto_5

    .line 429
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 425
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 423
    :catch_7
    move-exception v0

    goto :goto_1

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "mac":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_8
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processStateChange()V
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->updateNotifier:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$UpdateNotifier;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->updateNotifier:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$UpdateNotifier;

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$UpdateNotifier;->dataUpdated()V

    .line 261
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->lastStateSaveTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 262
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->saveState()V

    .line 264
    :cond_1
    return-void
.end method

.method private saveState()V
    .locals 8

    .prologue
    .line 359
    const/4 v2, 0x0

    .line 360
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 361
    .local v3, "writer":Ljava/io/OutputStreamWriter;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->lastStateSaveTime:J

    .line 364
    :try_start_0
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->context:Landroid/content/Context;

    const-string v6, "BluetoothCrashResolverState.txt"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 365
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 366
    .end local v3    # "writer":Ljava/io/OutputStreamWriter;
    .local v4, "writer":Ljava/io/OutputStreamWriter;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->detectedCrashCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->recoveryAttemptCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 369
    iget-boolean v5, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    if-eqz v5, :cond_2

    const-string v5, "1\n"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 370
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    monitor-enter v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 371
    :try_start_2
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 372
    .local v1, "mac":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 373
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 375
    .end local v1    # "mac":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 376
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 377
    .end local v4    # "writer":Ljava/io/OutputStreamWriter;
    .local v0, "e":Ljava/io/IOException;
    .restart local v3    # "writer":Ljava/io/OutputStreamWriter;
    :goto_2
    :try_start_4
    const-string v5, "BluetoothCrashResolver"

    const-string v6, "Can\'t write macs to BluetoothCrashResolverState.txt"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 380
    if-eqz v3, :cond_0

    .line 382
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 386
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_3
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "BluetoothCrashResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrote "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bluetooth addresses"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_1
    return-void

    .line 369
    .end local v3    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v4    # "writer":Ljava/io/OutputStreamWriter;
    :cond_2
    :try_start_6
    const-string v5, "0\n"
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    .line 375
    :cond_3
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 380
    if-eqz v4, :cond_5

    .line 382
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    move-object v3, v4

    .line 383
    .end local v4    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v3    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_3

    .end local v3    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v4    # "writer":Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v3    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_3

    .line 380
    :catchall_1
    move-exception v5

    :goto_4
    if-eqz v3, :cond_4

    .line 382
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 383
    :cond_4
    :goto_5
    throw v5

    .restart local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    goto :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    goto :goto_5

    .line 380
    .end local v3    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v4    # "writer":Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v3    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_4

    .line 376
    :catch_4
    move-exception v0

    goto :goto_2

    .end local v3    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v4    # "writer":Ljava/io/OutputStreamWriter;
    :cond_5
    move-object v3, v4

    .end local v4    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v3    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_3
.end method

.method private startRecovery()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 270
    iget v1, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->recoveryAttemptCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->recoveryAttemptCount:I

    .line 271
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 272
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BluetoothCrashResolver"

    const-string v2, "about to check if discovery is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_5

    .line 274
    const-string v1, "BluetoothCrashResolver"

    const-string v2, "Recovery attempt started"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->recoveryInProgress:Z

    .line 276
    iput-boolean v4, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->discoveryStartConfirmed:Z

    .line 277
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "BluetoothCrashResolver"

    const-string v2, "about to command discovery"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v1

    if-nez v1, :cond_2

    .line 279
    const-string v1, "BluetoothCrashResolver"

    const-string v2, "Can\'t start discovery.  Is bluetooth turned on?"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_2
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "BluetoothCrashResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDiscovery commanded.  isDiscovering()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_3
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "BluetoothCrashResolver"

    const-string v2, "We will be cancelling this discovery in 5000 milliseconds."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_4
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->discoveryCanceller:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$DiscoveryCanceller;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$DiscoveryCanceller;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    .line 297
    :goto_0
    return-void

    .line 294
    :cond_5
    const-string v1, "BluetoothCrashResolver"

    const-string v2, "Already discovering.  Recovery attempt abandoned."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public crashDetected()V
    .locals 5

    .prologue
    .line 192
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "BluetoothCrashResolver"

    const-string v3, "Ignoring crashes before SDK 18, because BLE is unsupported."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const-string v2, "BluetoothCrashResolver"

    const-string v3, "BluetoothService crash detected"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 198
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "BluetoothCrashResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Distinct bluetooth devices seen at crash: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_2
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 201
    .local v0, "nowTimestamp":J
    iput-wide v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    .line 202
    iget v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->detectedCrashCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->detectedCrashCount:I

    .line 204
    iget-boolean v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->recoveryInProgress:Z

    if-eqz v2, :cond_4

    .line 205
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "BluetoothCrashResolver"

    const-string v3, "Ignoring bluetooth crash because recovery is already in progress."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->processStateChange()V

    goto :goto_0

    .line 208
    :cond_4
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->startRecovery()V

    goto :goto_1
.end method

.method public disableDebug()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->debugEnabled:Z

    .line 147
    return-void
.end method

.method public enableDebug()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->debugEnabled:Z

    .line 141
    return-void
.end method

.method public forceFlush()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->startRecovery()V

    .line 241
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->processStateChange()V

    .line 242
    return-void
.end method

.method public getDetectedCrashCount()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->detectedCrashCount:I

    return v0
.end method

.method public getLastBluetoothCrashDetectionTime()J
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->lastBluetoothCrashDetectionTime:J

    return-wide v0
.end method

.method public getRecoveryAttemptCount()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->recoveryAttemptCount:I

    return v0
.end method

.method public isLastRecoverySucceeded()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->lastRecoverySucceeded:Z

    return v0
.end method

.method public isRecoveryInProgress()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->recoveryInProgress:Z

    return v0
.end method

.method public notifyScannedDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scanner"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 169
    const/4 v1, 0x0

    .local v1, "oldSize":I
    const/4 v0, 0x0

    .line 171
    .local v0, "newSize":I
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    .line 176
    if-eq v1, v0, :cond_1

    rem-int/lit8 v2, v0, 0x64

    if-nez v2, :cond_1

    .line 177
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "BluetoothCrashResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Distinct bluetooth devices seen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->getCrashRiskDeviceCount()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 181
    iget-boolean v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->recoveryInProgress:Z

    if-nez v2, :cond_2

    .line 182
    const-string v2, "BluetoothCrashResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Large number of bluetooth devices detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->distinctBluetoothAddresses:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Proactively attempting to clear out address list to prevent a crash"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v2, "BluetoothCrashResolver"

    const-string v3, "Stopping LE Scan"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 185
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->startRecovery()V

    .line 186
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->processStateChange()V

    .line 189
    :cond_2
    return-void
.end method

.method public setUpdateNotifier(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$UpdateNotifier;)V
    .locals 0
    .param p1, "updateNotifier"    # Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$UpdateNotifier;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->updateNotifier:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$UpdateNotifier;

    .line 234
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BluetoothCrashResolver"

    const-string v2, "started listening for BluetoothAdapter events"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothCrashResolver"

    const-string v1, "stopped listening for BluetoothAdapter events"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->saveState()V

    .line 134
    return-void
.end method
