.class Lcom/spiraltoys/cloudpets2/util/CacheUtil$1$2;
.super Ljava/lang/Object;
.source "CacheUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;->onResponse(Lcom/squareup/okhttp/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;

.field final synthetic val$responseException:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1$2;->this$0:Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1$2;->val$responseException:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1$2;->this$0:Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;

    iget-object v1, v0, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;->val$callback:Lcom/spiraltoys/cloudpets2/util/CacheUtil$Callback;

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1$2;->val$responseException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1$2;->this$0:Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/util/CacheUtil;->access$100(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1$2;->val$responseException:Ljava/lang/Exception;

    invoke-interface {v1, v0, v2}, Lcom/spiraltoys/cloudpets2/util/CacheUtil$Callback;->done(Landroid/net/Uri;Ljava/lang/Exception;)V

    .line 80
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
