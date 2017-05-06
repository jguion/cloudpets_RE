.class Lcom/parse/GCMService$1;
.super Ljava/lang/Object;
.source "GCMService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/GCMService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/GCMService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/parse/GCMService;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/GCMService;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/parse/GCMService$1;->this$0:Lcom/parse/GCMService;

    iput-object p2, p0, Lcom/parse/GCMService$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/parse/GCMService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/parse/GCMService$1;->this$0:Lcom/parse/GCMService;

    iget-object v1, p0, Lcom/parse/GCMService$1;->val$intent:Landroid/content/Intent;

    # invokes: Lcom/parse/GCMService;->onHandleIntent(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/parse/GCMService;->access$000(Lcom/parse/GCMService;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v0, p0, Lcom/parse/GCMService$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/parse/ServiceUtils;->completeWakefulIntent(Landroid/content/Intent;)V

    .line 66
    iget-object v0, p0, Lcom/parse/GCMService$1;->this$0:Lcom/parse/GCMService;

    iget v1, p0, Lcom/parse/GCMService$1;->val$startId:I

    # invokes: Lcom/parse/GCMService;->stopParent(I)V
    invoke-static {v0, v1}, Lcom/parse/GCMService;->access$100(Lcom/parse/GCMService;I)V

    .line 68
    return-void

    .line 65
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/parse/GCMService$1;->val$intent:Landroid/content/Intent;

    invoke-static {v1}, Lcom/parse/ServiceUtils;->completeWakefulIntent(Landroid/content/Intent;)V

    .line 66
    iget-object v1, p0, Lcom/parse/GCMService$1;->this$0:Lcom/parse/GCMService;

    iget v2, p0, Lcom/parse/GCMService$1;->val$startId:I

    # invokes: Lcom/parse/GCMService;->stopParent(I)V
    invoke-static {v1, v2}, Lcom/parse/GCMService;->access$100(Lcom/parse/GCMService;I)V

    throw v0
.end method
