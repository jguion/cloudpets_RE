.class final Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Lcom/parse/LogInCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->signUp(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;Lcom/parse/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$callback:Lcom/parse/SaveCallback;

.field final synthetic val$credentials:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;


# direct methods
.method constructor <init>(Lcom/parse/SaveCallback;Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->val$callback:Lcom/parse/SaveCallback;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->val$credentials:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;

    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V
    .locals 6
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 58
    if-eqz p2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->val$callback:Lcom/parse/SaveCallback;

    invoke-interface {v2, p2}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V

    .line 137
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;-><init>()V

    .line 63
    .local v0, "privateProfile":Lcom/spiraltoys/cloudpets2/model/PrivateProfile;
    sget-object v2, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->ADULT:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    invoke-virtual {v0, v2}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->setProfileType(Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;)V

    .line 66
    new-instance v1, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/model/Profile;-><init>()V

    .line 67
    .local v1, "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->val$credentials:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->access$000(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spiraltoys/cloudpets2/model/Profile;->setDisplayName(Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->val$credentials:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->access$100(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spiraltoys/cloudpets2/model/Profile;->setUsername(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->setOwner(Lcom/parse/ParseUser;)V

    .line 70
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->setPrivateProfile(Lcom/spiraltoys/cloudpets2/model/PrivateProfile;)V

    .line 71
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getACL()Lcom/parse/ParseACL;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/parse/ParseACL;->setPublicReadAccess(Z)V

    .line 73
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->val$credentials:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->access$200(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 75
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;

    invoke-direct {v3, p0, v1}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;-><init>(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;Lcom/spiraltoys/cloudpets2/model/Profile;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->val$c:Landroid/content/Context;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->val$credentials:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;

    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->access$100(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->val$credentials:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;

    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->access$300(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->val$callback:Lcom/parse/SaveCallback;

    invoke-static {v2, v3, v4, v1, v5}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/SaveCallback;)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 55
    check-cast p1, Lcom/parse/ParseUser;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    return-void
.end method
