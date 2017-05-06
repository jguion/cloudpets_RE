.class public Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignupCredentials"
.end annotation


# instance fields
.field private displayName:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private passwordRepeat:Ljava/lang/String;

.field private profilePhotoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->profilePhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->password:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordRepeat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->passwordRepeat:Ljava/lang/String;

    return-object v0
.end method

.method public getProfilePhotoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->profilePhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->displayName:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->email:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->password:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setPasswordRepeat(Ljava/lang/String;)V
    .locals 0
    .param p1, "passwordRepeat"    # Ljava/lang/String;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->passwordRepeat:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setProfilePhotoUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "profilePhotoUri"    # Landroid/net/Uri;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->profilePhotoUri:Landroid/net/Uri;

    .line 338
    return-void
.end method
