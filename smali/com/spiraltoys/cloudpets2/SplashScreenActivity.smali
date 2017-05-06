.class public Lcom/spiraltoys/cloudpets2/SplashScreenActivity;
.super Lcom/spiraltoys/cloudpets2/BaseActivity;
.source "SplashScreenActivity.java"


# static fields
.field private static final REQUEST_CODE_DOWNLOAD_EXPANSION:I = 0x2a


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/SplashScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/SplashScreenActivity;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->startAdultDashboard()V

    return-void
.end method

.method private autoLoginOrLaunchWelcome()V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->isEmailVerified(Lcom/parse/ParseUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const v0, 0x7f04002d

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->setContentView(I)V

    .line 55
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->loadUser()V

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/WelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->finish()V

    goto :goto_0
.end method

.method private loadUser()V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 64
    .local v0, "currentUser":Lcom/parse/ParseUser;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parse/ParseUser;->isAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->performAutoLogin()V

    .line 71
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/spiraltoys/cloudpets2/WelcomeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v1, "introIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->finish()V

    goto :goto_0
.end method

.method private performAutoLogin()V
    .locals 2

    .prologue
    .line 78
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->getLastUsedProfileId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "lastUsedProfileId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 80
    new-instance v1, Lcom/spiraltoys/cloudpets2/SplashScreenActivity$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/SplashScreenActivity;)V

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfileById(Ljava/lang/String;Lcom/parse/GetCallback;)V

    .line 121
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->isInitialToySetupComplete(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->startAdultDashboard()V

    goto :goto_0

    .line 102
    :cond_1
    new-instance v1, Lcom/spiraltoys/cloudpets2/SplashScreenActivity$2;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity$2;-><init>(Lcom/spiraltoys/cloudpets2/SplashScreenActivity;)V

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getLocalChildProfilesCount(Lcom/parse/CountCallback;)V

    goto :goto_0
.end method

.method private startAdultDashboard()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->startActivityAsNewTask(Landroid/content/Intent;)V

    .line 75
    return-void
.end method


# virtual methods
.method public getBackgroundMusicTrack()Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 38
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_0

    .line 39
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils;->expansionFilesDelivered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->autoLoginOrLaunchWelcome()V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils;->expansionFilesDelivered(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->autoLoginOrLaunchWelcome()V

    goto :goto_0
.end method
