.class public Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;,
        Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$PasswordCheckCallback;
    }
.end annotation


# static fields
.field public static final EMAIL_VERIFIED:Ljava/lang/String; = "emailVerified"

.field public static final USERNAME:Ljava/lang/String; = "username"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/SaveCallback;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p4, "x4"    # Lcom/parse/SaveCallback;

    .prologue
    .line 40
    invoke-static {p0, p1, p2, p3, p4}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->saveProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/SaveCallback;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->cacheCredentials(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static cacheCredentials(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/mindrot/jbcrypt/BCrypt;->gensalt()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/mindrot/jbcrypt/BCrypt;->hashpw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->setCredentials(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public static checkPassword(Landroid/content/Context;Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$PasswordCheckCallback;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$PasswordCheckCallback;

    .prologue
    .line 221
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->getPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "hashed":Ljava/lang/String;
    new-instance v1, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$4;

    invoke-direct {v1, v0, p0, p2}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$4;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$PasswordCheckCallback;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 252
    invoke-virtual {v1, v2}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 253
    return-void
.end method

.method public static getCachedUsername(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 256
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->getUsername(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmail(Lcom/parse/ParseUser;)Ljava/lang/String;
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUsername(Lcom/parse/ParseUser;)Ljava/lang/String;
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 277
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEmailVerified(Lcom/parse/ParseUser;)Z
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 285
    const-string v0, "emailVerified"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLoggedIn()Z
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logIn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/parse/LogInCallback;

    .prologue
    .line 183
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V

    invoke-static {p1, p2, v0}, Lcom/parse/ParseUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V

    .line 199
    return-void
.end method

.method public static logOut(Landroid/content/Context;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 206
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    .line 208
    .local v0, "installation":Lcom/parse/ParseInstallation;
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/parse/ParseInstallation;->remove(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->saveEventually()Lbolts/Task;

    .line 210
    invoke-static {}, Lcom/parse/ParseUser;->logOut()V

    .line 212
    .end local v0    # "installation":Lcom/parse/ParseInstallation;
    :cond_0
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->uncacheCredentials(Landroid/content/Context;)V

    .line 213
    invoke-static {}, Lcom/parse/ParseObject;->unpinAllInBackground()Lbolts/Task;

    .line 214
    return-void
.end method

.method public static refreshUser(Lcom/parse/GetCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/GetCallback",
            "<",
            "Lcom/parse/ParseUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<Lcom/parse/ParseUser;>;"
    const/4 v1, 0x0

    .line 268
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 269
    .local v0, "currentUser":Lcom/parse/ParseUser;
    if-nez v0, :cond_0

    .line 270
    invoke-interface {p0, v1, v1}, Lcom/parse/GetCallback;->done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-virtual {v0, p0}, Lcom/parse/ParseUser;->fetchInBackground(Lcom/parse/GetCallback;)V

    goto :goto_0
.end method

.method private static saveProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p4, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 142
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;

    invoke-direct {v0, p4, p1, p2, p0}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;-><init>(Lcom/parse/SaveCallback;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p3, v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->saveInBackground(Lcom/parse/SaveCallback;)V

    .line 180
    return-void
.end method

.method public static setUsername(Lcom/parse/ParseUser;Ljava/lang/String;)V
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 281
    const-string v0, "username"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    return-void
.end method

.method public static signUp(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;Lcom/parse/SaveCallback;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "credentials"    # Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;
    .param p2, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 50
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lcom/parse/ParseException;

    const/16 v1, 0x77

    const-string v2, "Already logged in. Log out before attempting to create a new account."

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V

    .line 139
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;

    invoke-direct {v0, p2, p1, p0}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;-><init>(Lcom/parse/SaveCallback;Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/parse/ParseAnonymousUtils;->logIn(Lcom/parse/LogInCallback;)V

    goto :goto_0
.end method

.method private static uncacheCredentials(Landroid/content/Context;)V
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 264
    invoke-static {p0, v0, v0}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->setCredentials(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method
