.class Lcom/spiraltoys/cloudpets2/views/RippleView$1;
.super Ljava/lang/Object;
.source "RippleView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/views/RippleView;->setupRippleAnimation(Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/views/RippleView;

.field final synthetic val$ripple:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/views/RippleView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/views/RippleView;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/views/RippleView$1;->this$0:Lcom/spiraltoys/cloudpets2/views/RippleView;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/views/RippleView$1;->val$ripple:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView$1;->this$0:Lcom/spiraltoys/cloudpets2/views/RippleView;

    # getter for: Lcom/spiraltoys/cloudpets2/views/RippleView;->mIsAnimating:Z
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/views/RippleView;->access$000(Lcom/spiraltoys/cloudpets2/views/RippleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 95
    invoke-virtual {p1}, Landroid/view/animation/Animation;->start()V

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView$1;->val$ripple:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/RippleView$1;->this$0:Lcom/spiraltoys/cloudpets2/views/RippleView;

    # getter for: Lcom/spiraltoys/cloudpets2/views/RippleView;->mIsAnimating:Z
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/views/RippleView;->access$000(Lcom/spiraltoys/cloudpets2/views/RippleView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 107
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 89
    return-void
.end method
