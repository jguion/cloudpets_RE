.class Lcom/parse/CloudPetsPushService$1;
.super Ljava/lang/Object;
.source "CloudPetsPushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CloudPetsPushService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/CloudPetsPushService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/parse/CloudPetsPushService;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/CloudPetsPushService;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/parse/CloudPetsPushService$1;->this$0:Lcom/parse/CloudPetsPushService;

    iput-object p2, p0, Lcom/parse/CloudPetsPushService$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/parse/CloudPetsPushService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/parse/CloudPetsPushService$1;->this$0:Lcom/parse/CloudPetsPushService;

    iget-object v1, p0, Lcom/parse/CloudPetsPushService$1;->val$intent:Landroid/content/Intent;

    # invokes: Lcom/parse/CloudPetsPushService;->onHandleGcmIntent(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/parse/CloudPetsPushService;->access$000(Lcom/parse/CloudPetsPushService;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    iget-object v0, p0, Lcom/parse/CloudPetsPushService$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/parse/ServiceUtils;->completeWakefulIntent(Landroid/content/Intent;)V

    .line 43
    iget-object v0, p0, Lcom/parse/CloudPetsPushService$1;->this$0:Lcom/parse/CloudPetsPushService;

    iget v1, p0, Lcom/parse/CloudPetsPushService$1;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/parse/CloudPetsPushService;->stopSelf(I)V

    .line 46
    return-void

    .line 42
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/parse/CloudPetsPushService$1;->val$intent:Landroid/content/Intent;

    invoke-static {v1}, Lcom/parse/ServiceUtils;->completeWakefulIntent(Landroid/content/Intent;)V

    .line 43
    iget-object v1, p0, Lcom/parse/CloudPetsPushService$1;->this$0:Lcom/parse/CloudPetsPushService;

    iget v2, p0, Lcom/parse/CloudPetsPushService$1;->val$startId:I

    invoke-virtual {v1, v2}, Lcom/parse/CloudPetsPushService;->stopSelf(I)V

    throw v0
.end method
