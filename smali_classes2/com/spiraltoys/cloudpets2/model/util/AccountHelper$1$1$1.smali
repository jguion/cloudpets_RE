.class Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1$1;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1$1;->this$1:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 81
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1$1;->this$1:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->val$c:Landroid/content/Context;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1$1;->this$1:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->val$credentials:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->access$100(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1$1;->this$1:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->val$credentials:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->access$300(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1$1;->this$1:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;->val$profile:Lcom/spiraltoys/cloudpets2/model/Profile;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1$1;->this$1:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->val$callback:Lcom/parse/SaveCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/SaveCallback;)V

    .line 82
    return-void
.end method
