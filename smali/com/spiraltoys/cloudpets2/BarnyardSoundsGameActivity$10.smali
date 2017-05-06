.class Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10;
.super Ljava/lang/Object;
.source "BarnyardSoundsGameActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->onGameOver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

.field final synthetic val$correctAnswer:I

.field final synthetic val$indicator:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;Landroid/widget/ImageView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10;->val$indicator:Landroid/widget/ImageView;

    iput p3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10;->val$correctAnswer:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 606
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10;->val$indicator:Landroid/widget/ImageView;

    # getter for: Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->ANIMAL_SEQUENCE_INDICATOR_RESOURCE_IDS:[I
    invoke-static {}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->access$2100()[I

    move-result-object v2

    iget v3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10;->val$correctAnswer:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 607
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    const v2, 0x7f05000c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 608
    .local v0, "popInAnimation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10$1;-><init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 624
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$10;->val$indicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 625
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 630
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 602
    return-void
.end method
