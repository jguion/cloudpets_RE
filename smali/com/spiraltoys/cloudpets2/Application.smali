.class public Lcom/spiraltoys/cloudpets2/Application;
.super Landroid/support/multidex/MultiDexApplication;
.source "Application.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 31
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 37
    new-instance v1, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    invoke-direct {v1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;-><init>()V

    const-string v2, "fonts/merge_regular.otf"

    .line 38
    invoke-virtual {v1, v2}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->setDefaultFontPath(Ljava/lang/String;)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    move-result-object v1

    const v2, 0x7f010004

    .line 39
    invoke-virtual {v1, v2}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->setFontAttrId(I)Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig$Builder;->build()Luk/co/chrisjenx/calligraphy/CalligraphyConfig;

    move-result-object v1

    .line 37
    invoke-static {v1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->initDefault(Luk/co/chrisjenx/calligraphy/CalligraphyConfig;)V

    .line 44
    const-string v1, "ca-app-pub-6184197962257773~8563801840"

    invoke-static {p0, v1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    const-class v1, Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    invoke-static {v1}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 49
    const-class v1, Lcom/spiraltoys/cloudpets2/model/FriendAcceptanceNotification;

    invoke-static {v1}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 50
    const-class v1, Lcom/spiraltoys/cloudpets2/model/PlushToy;

    invoke-static {v1}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 51
    const-class v1, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    invoke-static {v1}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 52
    const-class v1, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    invoke-static {v1}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 53
    const-class v1, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-static {v1}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 54
    const-class v1, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-static {v1}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 56
    new-instance v1, Lcom/parse/ParseACL;

    invoke-direct {v1}, Lcom/parse/ParseACL;-><init>()V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/parse/ParseACL;->setDefaultACL(Lcom/parse/ParseACL;Z)V

    .line 57
    invoke-static {p0}, Lcom/parse/Parse;->enableLocalDatastore(Landroid/content/Context;)V

    .line 60
    new-instance v1, Lcom/parse/Parse$Configuration$Builder;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/parse/Parse$Configuration$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "com.spiraltoys.cloudpets"

    .line 61
    invoke-virtual {v1, v2}, Lcom/parse/Parse$Configuration$Builder;->applicationId(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v1

    const-string v2, "AgD7EnlBQYEoYsQfDEzjwdxEgS1pipiXXu7JQbx7"

    .line 62
    invoke-virtual {v1, v2}, Lcom/parse/Parse$Configuration$Builder;->clientKey(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v1

    const-string v2, "https://parse-cloudpets.spiraltoys.com/cloudpets/parse/"

    .line 63
    invoke-virtual {v1, v2}, Lcom/parse/Parse$Configuration$Builder;->server(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/parse/Parse$Configuration$Builder;->enableLocalDataStore()Lcom/parse/Parse$Configuration$Builder;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/parse/Parse$Configuration$Builder;->build()Lcom/parse/Parse$Configuration;

    move-result-object v0

    .line 67
    .local v0, "parseConfig":Lcom/parse/Parse$Configuration;
    invoke-static {v0}, Lcom/parse/Parse;->initialize(Lcom/parse/Parse$Configuration;)V

    .line 72
    const-string v1, ""

    new-instance v2, Lcom/spiraltoys/cloudpets2/Application$1;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/Application$1;-><init>(Lcom/spiraltoys/cloudpets2/Application;)V

    invoke-static {v1, v2}, Lcom/parse/ParsePush;->subscribeInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V

    .line 82
    return-void
.end method
