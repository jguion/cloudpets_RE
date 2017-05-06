.class public final Lcom/parse/CloudPetsPushService;
.super Landroid/app/Service;
.source "CloudPetsPushService.java"


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/parse/CloudPetsPushService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/CloudPetsPushService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/parse/CloudPetsPushService;->onHandleGcmIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private onHandleGcmIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    const-string v0, "CloudPetsPushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method static runGcmIntentInService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    return-void
.end method

.method private wipeRoutingAndUpgradePushStateIfNeeded()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot bind directly to the CloudPetsPushService. Use PushService.subscribe instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 27
    invoke-static {}, Lcom/parse/ParsePlugins$Android;->get()Lcom/parse/ParsePlugins$Android;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins$Android;->applicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 28
    const-string v0, "com.parse.CloudPetsPushService"

    const-string v1, "The Parse push service cannot start because Parse.initialize has not yet been called. If you call Parse.initialize from an Activity\'s onCreate, that call should instead be in the Application.onCreate. Be sure your Application class is registered in your AndroidManifest.xml with the android:name property of your <application> tag."

    invoke-static {v0, v1}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/parse/CloudPetsPushService;->stopSelf()V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/CloudPetsPushService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/parse/CloudPetsPushService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/parse/CloudPetsPushService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 78
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 79
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/parse/CloudPetsPushService;->wipeRoutingAndUpgradePushStateIfNeeded()V

    .line 37
    iget-object v0, p0, Lcom/parse/CloudPetsPushService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/parse/CloudPetsPushService$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/parse/CloudPetsPushService$1;-><init>(Lcom/parse/CloudPetsPushService;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 49
    const/4 v0, 0x2

    return v0
.end method
