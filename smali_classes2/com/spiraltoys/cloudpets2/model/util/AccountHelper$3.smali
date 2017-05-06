.class final Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Lcom/parse/LogInCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->logIn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$callback:Lcom/parse/LogInCallback;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3;->val$c:Landroid/content/Context;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3;->val$callback:Lcom/parse/LogInCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V
    .locals 4
    .param p1, "parseUser"    # Lcom/parse/ParseUser;
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 186
    if-nez p2, :cond_0

    .line 187
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3;->val$c:Landroid/content/Context;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3;->val$username:Ljava/lang/String;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3;->val$password:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->access$500(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    .line 189
    .local v0, "installation":Lcom/parse/ParseInstallation;
    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Lcom/parse/ParseInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    new-instance v1, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3$1;

    invoke-direct {v1, p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3$1;-><init>(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3;Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseInstallation;->saveInBackground(Lcom/parse/SaveCallback;)V

    .line 197
    .end local v0    # "installation":Lcom/parse/ParseInstallation;
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3;->val$callback:Lcom/parse/LogInCallback;

    invoke-interface {v1, p1, p2}, Lcom/parse/LogInCallback;->done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 183
    check-cast p1, Lcom/parse/ParseUser;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3;->done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    return-void
.end method
