.class Lcom/spiraltoys/cloudpets2/util/CacheUtil$1$1;
.super Ljava/lang/Object;
.source "CacheUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;->onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;Ljava/io/IOException;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1$1;->this$0:Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1$1;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1$1;->this$0:Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1;->val$callback:Lcom/spiraltoys/cloudpets2/util/CacheUtil$Callback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/util/CacheUtil$1$1;->val$e:Ljava/io/IOException;

    invoke-interface {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/util/CacheUtil$Callback;->done(Landroid/net/Uri;Ljava/lang/Exception;)V

    .line 52
    return-void
.end method
