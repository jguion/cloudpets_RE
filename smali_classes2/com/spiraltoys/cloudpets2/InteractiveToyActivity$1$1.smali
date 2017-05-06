.class Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1$1;
.super Ljava/lang/Object;
.source "InteractiveToyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1$1;->this$1:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1$1;->this$1:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mVideoPlaceholder:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1$1;->this$1:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1$1;->this$1:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->access$000(Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1$1;->this$1:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1$1;->this$1:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mPetVideoSurfaceView:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 80
    :cond_0
    return-void
.end method
