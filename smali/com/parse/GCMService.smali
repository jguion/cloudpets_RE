.class Lcom/parse/GCMService;
.super Ljava/lang/Object;
.source "GCMService.java"

# interfaces
.implements Lcom/parse/ProxyService;


# static fields
.field public static final RECEIVE_PUSH_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field public static final REGISTER_RESPONSE_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTRATION"

.field private static final TAG:Ljava/lang/String; = "GCMService"


# instance fields
.field private executor:Ljava/util/concurrent/ExecutorService;

.field private final parent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Service;)V
    .locals 1
    .param p1, "parent"    # Landroid/app/Service;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parse/GCMService;->parent:Ljava/lang/ref/WeakReference;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/parse/GCMService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/GCMService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/parse/GCMService;->onHandleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/parse/GCMService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/GCMService;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/parse/GCMService;->stopParent(I)V

    return-void
.end method

.method private handleGcmPushIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 104
    const-string v7, "message_type"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "messageType":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 111
    const-string v7, "GCMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignored special message type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from GCM via intent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parse/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v7, "push_id"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "pushId":Ljava/lang/String;
    const-string v7, "time"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, "timestamp":Ljava/lang/String;
    const-string v7, "data"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "dataString":Ljava/lang/String;
    const-string v7, "channel"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "channel":Ljava/lang/String;
    const/4 v1, 0x0

    .line 119
    .local v1, "data":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 121
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "data":Lorg/json/JSONObject;
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .restart local v1    # "data":Lorg/json/JSONObject;
    :cond_1
    invoke-static {}, Lcom/parse/PushRouter;->getInstance()Lcom/parse/PushRouter;

    move-result-object v7

    invoke-virtual {v7, v5, v6, v0, v1}, Lcom/parse/PushRouter;->handlePush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z

    goto :goto_0

    .line 122
    .end local v1    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 123
    .local v3, "e":Lorg/json/JSONException;
    const-string v7, "GCMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring push because of JSON exception while processing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handleGcmRegistrationIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    :try_start_0
    invoke-static {}, Lcom/parse/GcmRegistrar;->getInstance()Lcom/parse/GcmRegistrar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/GcmRegistrar;->handleRegistrationIntentAsync(Landroid/content/Intent;)Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->waitForCompletion()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-direct {p0, p1}, Lcom/parse/GCMService;->handleGcmRegistrationIntent(Landroid/content/Intent;)V

    .line 90
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 84
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    invoke-direct {p0, p1}, Lcom/parse/GCMService;->handleGcmPushIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 87
    :cond_2
    const-string v1, "GCMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PushService got unknown intent in GCM mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopParent(I)V
    .locals 2
    .param p1, "startId"    # I

    .prologue
    .line 136
    iget-object v1, p0, Lcom/parse/GCMService;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    .line 137
    .local v0, "p":Landroid/app/Service;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1}, Landroid/app/Service;->stopSelf(I)V

    .line 140
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/GCMService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 47
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/parse/GCMService;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/parse/GCMService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/GCMService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 55
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parse/GCMService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/parse/GCMService$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/parse/GCMService$1;-><init>(Lcom/parse/GCMService;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 71
    const/4 v0, 0x2

    return v0
.end method
