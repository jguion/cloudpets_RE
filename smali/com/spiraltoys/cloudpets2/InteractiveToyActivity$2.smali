.class Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$2;
.super Ljava/lang/Object;
.source "InteractiveToyActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->fadeOutVideoPlaceholder()V
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
    .line 126
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 141
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mVideoPlaceholder:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mPetVideoSurfaceView:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->wakeUp()V

    .line 136
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 146
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 130
    return-void
.end method
