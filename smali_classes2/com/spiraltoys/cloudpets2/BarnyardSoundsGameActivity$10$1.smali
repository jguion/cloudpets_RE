.class Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10$1;
.super Ljava/lang/Object;
.source "BarnyardSoundsGameActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10$1;->this$1:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10$1;->this$1:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10;->val$indicator:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10$1;->this$1:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    const v2, 0x7f05000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 617
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 622
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 612
    return-void
.end method
