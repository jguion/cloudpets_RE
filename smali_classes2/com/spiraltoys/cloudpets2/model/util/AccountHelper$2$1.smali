.class Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;->done(Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 4
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;->val$callback:Lcom/parse/SaveCallback;

    invoke-interface {v1, p1}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V

    .line 175
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;->val$c:Landroid/content/Context;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;->val$email:Ljava/lang/String;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;->val$password:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->access$500(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    .line 165
    .local v0, "installation":Lcom/parse/ParseInstallation;
    const-string v1, "user"

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->saveEventually()Lbolts/Task;

    .line 169
    new-instance v1, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1$1;-><init>(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1;)V

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllProfilesToLocalDatastore(Lcom/parse/FindCallback;)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 154
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1;->done(Lcom/parse/ParseException;)V

    return-void
.end method
