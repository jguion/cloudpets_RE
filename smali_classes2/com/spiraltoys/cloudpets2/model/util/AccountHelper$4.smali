.class final Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$4;
.super Landroid/os/AsyncTask;
.source "AccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->checkPassword(Landroid/content/Context;Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$PasswordCheckCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$callback:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$PasswordCheckCallback;

.field final synthetic val$hashed:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$PasswordCheckCallback;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$4;->val$hashed:Ljava/lang/String;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$4;->val$c:Landroid/content/Context;

    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$4;->val$callback:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$PasswordCheckCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "password"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 226
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$4;->val$hashed:Ljava/lang/String;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 227
    aget-object v3, p1, v7

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$4;->val$hashed:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/mindrot/jbcrypt/BCrypt;->checkpw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 229
    .local v1, "isLocalPasswordValid":Z
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$4;->val$c:Landroid/content/Context;

    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/util/Utils;->isNetworkConnectionAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-static {v3, v4}, Lcom/parse/ParseUser;->logIn(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseUser;

    move-result-object v2

    .line 232
    .local v2, "newUser":Lcom/parse/ParseUser;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/parse/ParseUser;->isAuthenticated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$4;->val$c:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-static {}, Lorg/mindrot/jbcrypt/BCrypt;->gensalt()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/mindrot/jbcrypt/BCrypt;->hashpw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->setCredentials(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 245
    .end local v1    # "isLocalPasswordValid":Z
    .end local v2    # "newUser":Lcom/parse/ParseUser;
    :goto_0
    return-object v3

    .line 236
    .restart local v1    # "isLocalPasswordValid":Z
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Lcom/parse/ParseException;
    invoke-virtual {v0}, Lcom/parse/ParseException;->printStackTrace()V

    .line 238
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 241
    .end local v0    # "e":Lcom/parse/ParseException;
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 245
    .end local v1    # "isLocalPasswordValid":Z
    :cond_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 223
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$4;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "isCorrect"    # Ljava/lang/Boolean;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$4;->val$callback:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$PasswordCheckCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$PasswordCheckCallback;->onPasswordChecked(Z)V

    .line 251
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 223
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$4;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
