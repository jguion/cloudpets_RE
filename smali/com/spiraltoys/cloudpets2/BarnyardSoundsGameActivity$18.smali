.class Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$18;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BarnyardSoundsGameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->hideTutorial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 850
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$18;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 853
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$18;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->access$000(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->tutorialOverlay:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 854
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$18;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->onReadyToStartGame()V

    .line 855
    return-void
.end method
