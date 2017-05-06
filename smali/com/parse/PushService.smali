.class public final Lcom/parse/PushService;
.super Landroid/app/Service;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/PushService$ServiceLifecycleCallbacks;
    }
.end annotation


# static fields
.field static final ACTION_START_IF_REQUIRED:Ljava/lang/String; = "com.parse.PushService.startIfRequired"

.field private static final TAG:Ljava/lang/String; = "com.parse.PushService"

.field private static loggedStartError:Z

.field private static serviceLifecycleCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/PushService$ServiceLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private proxy:Lcom/parse/ProxyService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parse/PushService;->loggedStartError:Z

    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 180
    return-void
.end method

.method private static collectServiceLifecycleCallbacks()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "callbacks":[Ljava/lang/Object;
    const-class v2, Lcom/parse/PushService;

    monitor-enter v2

    .line 163
    :try_start_0
    sget-object v1, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    if-nez v1, :cond_0

    .line 164
    const/4 v1, 0x0

    monitor-exit v2

    move-object v0, v1

    .line 170
    :goto_0
    return-object v0

    .line 166
    :cond_0
    sget-object v1, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 167
    sget-object v1, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 169
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static dispatchOnServiceCreated(Landroid/app/Service;)V
    .locals 4
    .param p0, "service"    # Landroid/app/Service;

    .prologue
    .line 143
    invoke-static {}, Lcom/parse/PushService;->collectServiceLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 144
    .local v1, "callbacks":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 145
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 146
    .local v0, "callback":Ljava/lang/Object;
    check-cast v0, Lcom/parse/PushService$ServiceLifecycleCallbacks;

    .end local v0    # "callback":Ljava/lang/Object;
    invoke-interface {v0, p0}, Lcom/parse/PushService$ServiceLifecycleCallbacks;->onServiceCreated(Landroid/app/Service;)V

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method private static dispatchOnServiceDestroyed(Landroid/app/Service;)V
    .locals 4
    .param p0, "service"    # Landroid/app/Service;

    .prologue
    .line 152
    invoke-static {}, Lcom/parse/PushService;->collectServiceLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 153
    .local v1, "callbacks":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 154
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 155
    .local v0, "callback":Ljava/lang/Object;
    check-cast v0, Lcom/parse/PushService$ServiceLifecycleCallbacks;

    .end local v0    # "callback":Ljava/lang/Object;
    invoke-interface {v0, p0}, Lcom/parse/PushService$ServiceLifecycleCallbacks;->onServiceDestroyed(Landroid/app/Service;)V

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method static registerServiceLifecycleCallbacks(Lcom/parse/PushService$ServiceLifecycleCallbacks;)V
    .locals 2
    .param p0, "callbacks"    # Lcom/parse/PushService$ServiceLifecycleCallbacks;

    .prologue
    .line 124
    const-class v1, Lcom/parse/PushService;

    monitor-enter v1

    .line 125
    :try_start_0
    sget-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    .line 128
    :cond_0
    sget-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    monitor-exit v1

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static startServiceIfRequired(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    sget-object v1, Lcom/parse/PushService$1;->$SwitchMap$com$parse$PushType:[I

    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/PushType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 204
    sget-boolean v1, Lcom/parse/PushService;->loggedStartError:Z

    if-nez v1, :cond_0

    .line 205
    const-string v1, "com.parse.PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to use push, but this app is not configured for push due to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 206
    invoke-static {}, Lcom/parse/ManifestInfo;->getNonePushTypeLogMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-static {v1, v2}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v1, 0x1

    sput-boolean v1, Lcom/parse/PushService;->loggedStartError:Z

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 185
    :pswitch_0
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    .line 189
    .local v0, "installation":Lcom/parse/ParseInstallation;
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    sget-object v2, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    if-ne v1, v2, :cond_1

    .line 190
    const-string v1, "com.parse.PushService"

    const-string v2, "Detected a client that used to use GCM and is now using PPNS."

    invoke-static {v1, v2}, Lcom/parse/PLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->removePushType()V

    .line 193
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->removeDeviceToken()V

    .line 194
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->saveEventually()Lbolts/Task;

    .line 197
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.parse.PushService.startIfRequired"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/parse/PushService;

    invoke-static {p0, v1, v2}, Lcom/parse/ServiceUtils;->runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)Z

    goto :goto_0

    .line 201
    .end local v0    # "installation":Lcom/parse/ParseInstallation;
    :pswitch_1
    invoke-static {}, Lcom/parse/GcmRegistrar;->getInstance()Lcom/parse/GcmRegistrar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/GcmRegistrar;->registerAsync()Lbolts/Task;

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static stopServiceIfRequired(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    sget-object v0, Lcom/parse/PushService$1;->$SwitchMap$com$parse$PushType:[I

    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/PushType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 220
    :goto_0
    return-void

    .line 216
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parse/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static unregisterServiceLifecycleCallbacks(Lcom/parse/PushService$ServiceLifecycleCallbacks;)V
    .locals 2
    .param p0, "callbacks"    # Lcom/parse/PushService$ServiceLifecycleCallbacks;

    .prologue
    .line 134
    const-class v1, Lcom/parse/PushService;

    monitor-enter v1

    .line 135
    :try_start_0
    sget-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    .line 139
    :cond_0
    monitor-exit v1

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot bind directly to the PushService. Use PushService.subscribe instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 230
    invoke-static {}, Lcom/parse/ParsePlugins$Android;->get()Lcom/parse/ParsePlugins$Android;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins$Android;->applicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 231
    const-string v0, "com.parse.PushService"

    const-string v1, "The Parse push service cannot start because Parse.initialize has not yet been called. If you call Parse.initialize from an Activity\'s onCreate, that call should instead be in the Application.onCreate. Be sure your Application class is registered in your AndroidManifest.xml with the android:name property of your <application> tag."

    invoke-static {v0, v1}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/parse/PushService;->stopSelf()V

    .line 258
    :goto_0
    return-void

    .line 241
    :cond_0
    sget-object v0, Lcom/parse/PushService$1;->$SwitchMap$com$parse$PushType:[I

    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/PushType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 249
    const-string v0, "com.parse.PushService"

    const-string v1, "PushService somehow started even though this device doesn\'t support push."

    invoke-static {v0, v1}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_1
    iget-object v0, p0, Lcom/parse/PushService;->proxy:Lcom/parse/ProxyService;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/parse/PushService;->proxy:Lcom/parse/ProxyService;

    invoke-interface {v0}, Lcom/parse/ProxyService;->onCreate()V

    .line 257
    :cond_1
    invoke-static {p0}, Lcom/parse/PushService;->dispatchOnServiceCreated(Landroid/app/Service;)V

    goto :goto_0

    .line 243
    :pswitch_0
    invoke-static {p0}, Lcom/parse/PPNSUtil;->newPPNSService(Landroid/app/Service;)Lcom/parse/ProxyService;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/PushService;->proxy:Lcom/parse/ProxyService;

    goto :goto_1

    .line 246
    :pswitch_1
    new-instance v0, Lcom/parse/GCMService;

    invoke-direct {v0, p0}, Lcom/parse/GCMService;-><init>(Landroid/app/Service;)V

    iput-object v0, p0, Lcom/parse/PushService;->proxy:Lcom/parse/ProxyService;

    goto :goto_1

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/parse/PushService;->proxy:Lcom/parse/ProxyService;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/parse/PushService;->proxy:Lcom/parse/ProxyService;

    invoke-interface {v0}, Lcom/parse/ProxyService;->onDestroy()V

    .line 294
    :cond_0
    invoke-static {p0}, Lcom/parse/PushService;->dispatchOnServiceDestroyed(Landroid/app/Service;)V

    .line 296
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 297
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 265
    sget-object v0, Lcom/parse/PushService$1;->$SwitchMap$com$parse$PushType:[I

    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/PushType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 270
    const-string v0, "com.parse.PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started push service even though no push service is enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {p1}, Lcom/parse/ServiceUtils;->completeWakefulIntent(Landroid/content/Intent;)V

    .line 272
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 268
    :pswitch_0
    iget-object v0, p0, Lcom/parse/PushService;->proxy:Lcom/parse/ProxyService;

    invoke-interface {v0, p1, p2, p3}, Lcom/parse/ProxyService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
