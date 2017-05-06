.class final Lcom/parse/ServiceUtils;
.super Ljava/lang/Object;
.source "ServiceUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ServiceUtils"

.field private static final WAKE_LOCK_EXTRA:Ljava/lang/String; = "parseWakeLockId"

.field private static wakeLockId:I

.field private static final wakeLocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parse/ParseWakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/parse/ServiceUtils;->wakeLocks:Landroid/util/SparseArray;

    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/parse/ServiceUtils;->wakeLockId:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static completeWakefulIntent(Landroid/content/Intent;)V
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    if-eqz p0, :cond_0

    const-string v2, "parseWakeLockId"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const-string v2, "parseWakeLockId"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 85
    .local v0, "id":I
    sget-object v3, Lcom/parse/ServiceUtils;->wakeLocks:Landroid/util/SparseArray;

    monitor-enter v3

    .line 86
    :try_start_0
    sget-object v2, Lcom/parse/ServiceUtils;->wakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseWakeLock;

    .line 87
    .local v1, "wakeLock":Lcom/parse/ParseWakeLock;
    sget-object v2, Lcom/parse/ServiceUtils;->wakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 88
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-nez v1, :cond_1

    .line 91
    const-string v2, "com.parse.ServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got wake lock id of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in intent, but no such lock found in global map. Was completeWakefulIntent called twice for the same intent?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .end local v0    # "id":I
    .end local v1    # "wakeLock":Lcom/parse/ParseWakeLock;
    :cond_0
    :goto_0
    return-void

    .line 88
    .restart local v0    # "id":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 94
    .restart local v1    # "wakeLock":Lcom/parse/ParseWakeLock;
    :cond_1
    invoke-virtual {v1}, Lcom/parse/ParseWakeLock;->release()V

    goto :goto_0
.end method

.method public static runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    const/4 v1, 0x0

    .line 32
    .local v1, "startedService":Z
    if-eqz p1, :cond_1

    .line 33
    if-eqz p2, :cond_0

    .line 34
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 37
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 39
    .local v0, "name":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 40
    :goto_0
    if-nez v1, :cond_1

    .line 41
    const-string v2, "com.parse.ServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not start the service. Make sure that the XML tag <service android:name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" /> is in your AndroidManifest.xml as a child of the <application> element."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .end local v0    # "name":Landroid/content/ComponentName;
    :cond_1
    return v1

    .line 39
    .restart local v0    # "name":Landroid/content/ComponentName;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static runWakefulIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    const/4 v1, 0x0

    .line 58
    .local v1, "startedService":Z
    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "reason":Ljava/lang/String;
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-static {p0, v3, v0, v4, v5}, Lcom/parse/ParseWakeLock;->acquireNewWakeLock(Landroid/content/Context;ILjava/lang/String;J)Lcom/parse/ParseWakeLock;

    move-result-object v2

    .line 62
    .local v2, "wl":Lcom/parse/ParseWakeLock;
    sget-object v4, Lcom/parse/ServiceUtils;->wakeLocks:Landroid/util/SparseArray;

    monitor-enter v4

    .line 63
    :try_start_0
    const-string v3, "parseWakeLockId"

    sget v5, Lcom/parse/ServiceUtils;->wakeLockId:I

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    sget-object v3, Lcom/parse/ServiceUtils;->wakeLocks:Landroid/util/SparseArray;

    sget v5, Lcom/parse/ServiceUtils;->wakeLockId:I

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 65
    sget v3, Lcom/parse/ServiceUtils;->wakeLockId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/parse/ServiceUtils;->wakeLockId:I

    .line 66
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-static {p0, p1, p2}, Lcom/parse/ServiceUtils;->runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)Z

    move-result v1

    .line 69
    if-nez v1, :cond_0

    .line 70
    invoke-static {p1}, Lcom/parse/ServiceUtils;->completeWakefulIntent(Landroid/content/Intent;)V

    .line 74
    .end local v0    # "reason":Ljava/lang/String;
    .end local v2    # "wl":Lcom/parse/ParseWakeLock;
    :cond_0
    return v1

    .line 66
    .restart local v0    # "reason":Ljava/lang/String;
    .restart local v2    # "wl":Lcom/parse/ParseWakeLock;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
