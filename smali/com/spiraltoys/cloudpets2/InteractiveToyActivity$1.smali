.class Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;
.super Ljava/lang/Object;
.source "InteractiveToyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mPetVideoSurfaceView:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->getLastPausedFrame()Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mLastSavedFrame:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->access$002(Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 72
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mLastSavedFrame:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->access$000(Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->access$100(Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1$1;-><init>(Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    :cond_0
    return-void
.end method
