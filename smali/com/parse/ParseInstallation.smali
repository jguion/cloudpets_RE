.class public Lcom/parse/ParseInstallation;
.super Lcom/parse/ParseObject;
.source "ParseInstallation.java"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "_Installation"
.end annotation


# static fields
.field private static final KEY_APP_IDENTIFIER:Ljava/lang/String; = "appIdentifier"

.field private static final KEY_APP_NAME:Ljava/lang/String; = "appName"

.field private static final KEY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field static final KEY_CHANNELS:Ljava/lang/String; = "channels"

.field private static final KEY_DEVICE_TOKEN:Ljava/lang/String; = "deviceToken"

.field private static final KEY_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field private static final KEY_INSTALLATION_ID:Ljava/lang/String; = "installationId"

.field private static final KEY_LOCALE:Ljava/lang/String; = "localeIdentifier"

.field private static final KEY_PARSE_VERSION:Ljava/lang/String; = "parseVersion"

.field private static final KEY_PUSH_TYPE:Ljava/lang/String; = "pushType"

.field private static final KEY_TIME_ZONE:Ljava/lang/String; = "timeZone"

.field private static final READ_ONLY_FIELDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "com.parse.ParseInstallation"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "deviceType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "installationId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "deviceToken"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pushType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "timeZone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "localeIdentifier"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "appVersion"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "appName"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "parseVersion"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "appIdentifier"

    aput-object v2, v0, v1

    .line 46
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 45
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseInstallation;->READ_ONLY_FIELDS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    .line 86
    return-void
.end method

.method static synthetic access$001(Lcom/parse/ParseInstallation;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseInstallation;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lbolts/Task;

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->fetchAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentInstallation()Lcom/parse/ParseInstallation;
    .locals 2

    .prologue
    .line 58
    :try_start_0
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallationController()Lcom/parse/ParseCurrentInstallationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/parse/ParseCurrentInstallationController;->getAsync()Lbolts/Task;

    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseInstallation;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .local v0, "e":Lcom/parse/ParseException;
    :goto_0
    return-object v1

    .line 59
    .end local v0    # "e":Lcom/parse/ParseException;
    :catch_0
    move-exception v0

    .line 61
    .restart local v0    # "e":Lcom/parse/ParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getCurrentInstallationController()Lcom/parse/ParseCurrentInstallationController;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getCurrentInstallationController()Lcom/parse/ParseCurrentInstallationController;

    move-result-object v0

    return-object v0
.end method

.method public static getQuery()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    const-class v0, Lcom/parse/ParseInstallation;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method private updateLocaleIdentifier()V
    .locals 8

    .prologue
    .line 221
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 223
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "country":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const-string v4, "iw"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "he"

    .line 232
    :cond_2
    const-string v4, "in"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, "id"

    .line 233
    :cond_3
    const-string v4, "ji"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v1, "yi"

    .line 235
    :cond_4
    move-object v3, v1

    .line 237
    .local v3, "localeString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 238
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s-%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 241
    :cond_5
    const-string v4, "localeIdentifier"

    invoke-virtual {p0, v4}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 242
    const-string v4, "localeIdentifier"

    invoke-virtual {p0, v4, v3}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateTimezone()V
    .locals 2

    .prologue
    .line 171
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "zone":Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gtz v1, :cond_0

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "timeZone"

    invoke-virtual {p0, v1}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    const-string v1, "timeZone"

    invoke-virtual {p0, v1, v0}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    :cond_1
    return-void
.end method

.method private updateVersionInfo()V
    .locals 10

    .prologue
    .line 178
    iget-object v8, p0, Lcom/parse/ParseInstallation;->mutex:Ljava/lang/Object;

    monitor-enter v8

    .line 180
    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 181
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 183
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 184
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 185
    .local v1, "appVersion":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "appName":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v7, "appIdentifier"

    invoke-virtual {p0, v7}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 188
    const-string v7, "appIdentifier"

    invoke-virtual {p0, v7, v4}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    :cond_0
    if-eqz v0, :cond_1

    const-string v7, "appName"

    invoke-virtual {p0, v7}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 191
    const-string v7, "appName"

    invoke-virtual {p0, v7, v0}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    :cond_1
    if-eqz v1, :cond_2

    const-string v7, "appVersion"

    invoke-virtual {p0, v7}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 194
    const-string v7, "appVersion"

    invoke-virtual {p0, v7, v1}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "appVersion":Ljava/lang/String;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :goto_0
    :try_start_1
    const-string v7, "1.13.1"

    const-string v9, "parseVersion"

    invoke-virtual {p0, v9}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 201
    const-string v7, "parseVersion"

    const-string v9, "1.13.1"

    invoke-virtual {p0, v7, v9}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    :cond_3
    monitor-exit v8

    .line 204
    return-void

    .line 196
    :catch_0
    move-exception v3

    .line 197
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "com.parse.ParseInstallation"

    const-string v9, "Cannot load package info; will not be saved to installation"

    invoke-static {v7, v9}, Lcom/parse/PLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method


# virtual methods
.method fetchAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/parse/ParseInstallation;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseInstallation;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseInstallation;->saveAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    .line 131
    .local v0, "result":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    new-instance v1, Lcom/parse/ParseInstallation$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/parse/ParseInstallation$1;-><init>(Lcom/parse/ParseInstallation;Ljava/lang/String;Lbolts/Task;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 129
    .end local v0    # "result":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .restart local v0    # "result":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    goto :goto_0

    .line 137
    .end local v0    # "result":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    const-string v0, "deviceToken"

    invoke-super {p0, v0}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, "installationId"

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPushType()Lcom/parse/PushType;
    .locals 1

    .prologue
    .line 266
    const-string v0, "pushType"

    invoke-super {p0, v0}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/PushType;->fromString(Ljava/lang/String;)Lcom/parse/PushType;

    move-result-object v0

    return-object v0
.end method

.method handleFetchResultAsync(Lcom/parse/ParseObject$State;)Lbolts/Task;
    .locals 2
    .param p1, "newState"    # Lcom/parse/ParseObject$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->handleFetchResultAsync(Lcom/parse/ParseObject$State;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseInstallation$3;

    invoke-direct {v1, p0}, Lcom/parse/ParseInstallation$3;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 2
    .param p1, "result"    # Lcom/parse/ParseObject$State;
    .param p2, "operationsBeforeSave"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v0

    .line 145
    .local v0, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    if-nez p1, :cond_0

    .line 149
    .end local v0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    return-object v0

    .restart local v0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    new-instance v1, Lcom/parse/ParseInstallation$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseInstallation$2;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method isKeyMutable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 104
    sget-object v0, Lcom/parse/ParseInstallation;->READ_ONLY_FIELDS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method needsDefaultACL()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method removeDeviceToken()V
    .locals 1

    .prologue
    .line 290
    const-string v0, "deviceToken"

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->performRemove(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method removePushType()V
    .locals 1

    .prologue
    .line 276
    const-string v0, "pushType"

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->performRemove(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method setDeviceToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceToken"    # Ljava/lang/String;

    .prologue
    .line 284
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 285
    const-string v0, "deviceToken"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    :cond_0
    return-void
.end method

.method setPushType(Lcom/parse/PushType;)V
    .locals 2
    .param p1, "pushType"    # Lcom/parse/PushType;

    .prologue
    .line 270
    if-eqz p1, :cond_0

    .line 271
    const-string v0, "pushType"

    invoke-virtual {p1}, Lcom/parse/PushType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    :cond_0
    return-void
.end method

.method updateBeforeSave()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/parse/ParseObject;->updateBeforeSave()V

    .line 110
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallationController()Lcom/parse/ParseCurrentInstallationController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/parse/ParseCurrentInstallationController;->isCurrent(Lcom/parse/ParseObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->updateTimezone()V

    .line 112
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->updateVersionInfo()V

    .line 113
    invoke-virtual {p0}, Lcom/parse/ParseInstallation;->updateDeviceInfo()V

    .line 114
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->updateLocaleIdentifier()V

    .line 116
    :cond_0
    return-void
.end method

.method updateDeviceInfo()V
    .locals 1

    .prologue
    .line 248
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->installationId()Lcom/parse/InstallationId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->updateDeviceInfo(Lcom/parse/InstallationId;)V

    .line 249
    return-void
.end method

.method updateDeviceInfo(Lcom/parse/InstallationId;)V
    .locals 3
    .param p1, "installationId"    # Lcom/parse/InstallationId;

    .prologue
    .line 256
    const-string v1, "installationId"

    invoke-virtual {p0, v1}, Lcom/parse/ParseInstallation;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    const-string v1, "installationId"

    invoke-virtual {p1}, Lcom/parse/InstallationId;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    :cond_0
    const-string v0, "android"

    .line 260
    .local v0, "deviceType":Ljava/lang/String;
    const-string v1, "deviceType"

    invoke-virtual {p0, v1}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    const-string v1, "deviceType"

    invoke-virtual {p0, v1, v0}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    :cond_1
    return-void
.end method
