.class final Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->saveProfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$callback:Lcom/parse/SaveCallback;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/SaveCallback;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;->val$callback:Lcom/parse/SaveCallback;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;->val$email:Ljava/lang/String;

    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;->val$callback:Lcom/parse/SaveCallback;

    invoke-interface {v1, p1}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V

    .line 178
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 151
    .local v0, "user":Lcom/parse/ParseUser;
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;->val$email:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->setUsername(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;->val$email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->setEmail(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;->val$password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->setPassword(Ljava/lang/String;)V

    .line 154
    new-instance v1, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1;-><init>(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->saveInBackground(Lcom/parse/SaveCallback;)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 142
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;->done(Lcom/parse/ParseException;)V

    return-void
.end method
