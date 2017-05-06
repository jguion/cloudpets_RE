.class Lcom/parse/GcmRegistrar;
.super Ljava/lang/Object;
.source "GcmRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/GcmRegistrar$Request;,
        Lcom/parse/GcmRegistrar$Singleton;
    }
.end annotation


# static fields
.field private static final ERROR_EXTRA:Ljava/lang/String; = "error"

.field private static final FILENAME_DEVICE_TOKEN_LAST_MODIFIED:Ljava/lang/String; = "deviceTokenLastModified"

.field private static final PARSE_SENDER_ID:Ljava/lang/String; = "1076345567071"

.field public static final REGISTER_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTER"

.field private static final REGISTRATION_ID_EXTRA:Ljava/lang/String; = "registration_id"

.field private static final SENDER_ID_EXTRA:Ljava/lang/String; = "com.parse.push.gcm_sender_id"

.field private static final TAG:Ljava/lang/String; = "com.parse.GcmRegistrar"


# instance fields
.field private context:Landroid/content/Context;

.field private localDeviceTokenLastModified:J

.field private final localDeviceTokenLastModifiedMutex:Ljava/lang/Object;

.field private final lock:Ljava/lang/Object;

.field private request:Lcom/parse/GcmRegistrar$Request;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/GcmRegistrar;->localDeviceTokenLastModifiedMutex:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    .line 73
    iput-object v1, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    .line 74
    iput-object v1, p0, Lcom/parse/GcmRegistrar;->context:Landroid/content/Context;

    .line 78
    iput-object p1, p0, Lcom/parse/GcmRegistrar;->context:Landroid/content/Context;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/parse/GcmRegistrar;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/GcmRegistrar;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/parse/GcmRegistrar;->sendRegistrationRequestAsync()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/GcmRegistrar;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/parse/GcmRegistrar;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parse/GcmRegistrar;Lcom/parse/GcmRegistrar$Request;)Lcom/parse/GcmRegistrar$Request;
    .locals 0
    .param p0, "x0"    # Lcom/parse/GcmRegistrar;
    .param p1, "x1"    # Lcom/parse/GcmRegistrar$Request;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    return-object p1
.end method

.method static synthetic access$400(Lcom/parse/GcmRegistrar;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/parse/GcmRegistrar;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parse/GcmRegistrar;->localDeviceTokenLastModifiedMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/GcmRegistrar;)J
    .locals 2
    .param p0, "x0"    # Lcom/parse/GcmRegistrar;

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/parse/GcmRegistrar;->localDeviceTokenLastModified:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/parse/GcmRegistrar;J)J
    .locals 1
    .param p0, "x0"    # Lcom/parse/GcmRegistrar;
    .param p1, "x1"    # J

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/parse/GcmRegistrar;->localDeviceTokenLastModified:J

    return-wide p1
.end method

.method private static actualSenderIDFromExtra(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "senderIDExtra"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 60
    instance-of v2, p0, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v0, p0

    .line 64
    check-cast v0, Ljava/lang/String;

    .line 65
    .local v0, "senderID":Ljava/lang/String;
    const-string v2, "id:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static deleteLocalDeviceTokenLastModifiedFile()V
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Lcom/parse/GcmRegistrar;->getLocalDeviceTokenLastModifiedFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 275
    return-void
.end method

.method public static getInstance()Lcom/parse/GcmRegistrar;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/parse/GcmRegistrar$Singleton;->INSTANCE:Lcom/parse/GcmRegistrar;

    return-object v0
.end method

.method private getLocalDeviceTokenLastModifiedAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Lcom/parse/GcmRegistrar$5;

    invoke-direct {v0, p0}, Lcom/parse/GcmRegistrar$5;-><init>(Lcom/parse/GcmRegistrar;)V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static getLocalDeviceTokenLastModifiedFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 269
    const-string v1, "GCMRegistrar"

    invoke-static {v1}, Lcom/parse/Parse;->getParseCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 270
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "deviceTokenLastModified"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private sendRegistrationRequestAsync()Lbolts/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v5, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 123
    :try_start_0
    iget-object v4, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    if-eqz v4, :cond_0

    .line 124
    const/4 v4, 0x0

    invoke-static {v4}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v4

    monitor-exit v5

    .line 155
    :goto_0
    return-object v4

    .line 136
    :cond_0
    iget-object v4, p0, Lcom/parse/GcmRegistrar;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/parse/ManifestInfo;->getApplicationMetadata(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 137
    .local v0, "metaData":Landroid/os/Bundle;
    const-string v3, "1076345567071"

    .line 138
    .local v3, "senderIDs":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 139
    const-string v4, "com.parse.push.gcm_sender_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 141
    .local v2, "senderIDExtra":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 142
    invoke-static {v2}, Lcom/parse/GcmRegistrar;->actualSenderIDFromExtra(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "senderID":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    .end local v1    # "senderID":Ljava/lang/String;
    .end local v2    # "senderIDExtra":Ljava/lang/Object;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/parse/GcmRegistrar;->context:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/parse/GcmRegistrar$Request;->createAndSend(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/GcmRegistrar$Request;

    move-result-object v4

    iput-object v4, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    .line 155
    iget-object v4, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    invoke-virtual {v4}, Lcom/parse/GcmRegistrar$Request;->getTask()Lbolts/Task;

    move-result-object v4

    new-instance v6, Lcom/parse/GcmRegistrar$2;

    invoke-direct {v6, p0}, Lcom/parse/GcmRegistrar$2;-><init>(Lcom/parse/GcmRegistrar;)V

    invoke-virtual {v4, v6}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    monitor-exit v5

    goto :goto_0

    .line 170
    .end local v0    # "metaData":Landroid/os/Bundle;
    .end local v3    # "senderIDs":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 147
    .restart local v0    # "metaData":Landroid/os/Bundle;
    .restart local v1    # "senderID":Ljava/lang/String;
    .restart local v2    # "senderIDExtra":Ljava/lang/Object;
    .restart local v3    # "senderIDs":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v4, "com.parse.GcmRegistrar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found com.parse.push.gcm_sender_id <meta-data> element with value \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 148
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", but the value is missing the expected \"id:\" prefix."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 147
    invoke-static {v4, v6}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method getRequestIdentifier()I
    .locals 2

    .prologue
    .line 213
    iget-object v1, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    # getter for: Lcom/parse/GcmRegistrar$Request;->identifier:I
    invoke-static {v0}, Lcom/parse/GcmRegistrar$Request;->access$300(Lcom/parse/GcmRegistrar$Request;)I

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleRegistrationIntentAsync(Landroid/content/Intent;)Lbolts/Task;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    const-string v3, "registration_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "registrationId":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 186
    const-string v3, "com.parse.GcmRegistrar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received deviceToken <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> from GCM."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parse/PLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    .line 193
    .local v0, "installation":Lcom/parse/ParseInstallation;
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->getDeviceToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 194
    sget-object v3, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    invoke-virtual {v0, v3}, Lcom/parse/ParseInstallation;->setPushType(Lcom/parse/PushType;)V

    .line 195
    invoke-virtual {v0, v1}, Lcom/parse/ParseInstallation;->setDeviceToken(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->saveInBackground()Lbolts/Task;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/parse/GcmRegistrar;->updateLocalDeviceTokenLastModifiedAsync()Lbolts/Task;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v0    # "installation":Lcom/parse/ParseInstallation;
    :cond_1
    iget-object v4, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 204
    :try_start_0
    iget-object v3, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    if-eqz v3, :cond_2

    .line 205
    iget-object v3, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    invoke-virtual {v3, p1}, Lcom/parse/GcmRegistrar$Request;->onReceiveResponseIntent(Landroid/content/Intent;)V

    .line 207
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-static {v2}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v3

    return-object v3

    .line 207
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method isLocalDeviceTokenStaleAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/parse/GcmRegistrar;->getLocalDeviceTokenLastModifiedAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/GcmRegistrar$3;

    invoke-direct {v1, p0}, Lcom/parse/GcmRegistrar$3;-><init>(Lcom/parse/GcmRegistrar;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public registerAsync()Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v2

    sget-object v3, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    if-eq v2, v3, :cond_0

    .line 88
    const/4 v2, 0x0

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    .line 103
    :goto_0
    return-object v2

    .line 90
    :cond_0
    iget-object v3, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 97
    :try_start_0
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v1

    .line 100
    .local v1, "installation":Lcom/parse/ParseInstallation;
    invoke-virtual {v1}, Lcom/parse/ParseInstallation;->getDeviceToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 101
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 103
    .local v0, "checkTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Boolean;>;"
    :goto_1
    new-instance v2, Lcom/parse/GcmRegistrar$1;

    invoke-direct {v2, p0, v1}, Lcom/parse/GcmRegistrar$1;-><init>(Lcom/parse/GcmRegistrar;Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 118
    .end local v0    # "checkTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Boolean;>;"
    .end local v1    # "installation":Lcom/parse/ParseInstallation;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 102
    .restart local v1    # "installation":Lcom/parse/ParseInstallation;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/GcmRegistrar;->isLocalDeviceTokenStaleAsync()Lbolts/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method updateLocalDeviceTokenLastModifiedAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    new-instance v0, Lcom/parse/GcmRegistrar$4;

    invoke-direct {v0, p0}, Lcom/parse/GcmRegistrar$4;-><init>(Lcom/parse/GcmRegistrar;)V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
