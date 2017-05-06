.class Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$15$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BarnyardSoundsGameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$15;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$15;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$15;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$15;

    .prologue
    .line 726
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$15$1;->this$1:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$15;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$15$1;->this$1:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$15;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$15;->val$successText:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$15$1;->this$1:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$15;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$15;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->access$2600(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 731
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$15$1;->this$1:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$15;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$15;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->access$2700(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    .line 732
    return-void
.end method
