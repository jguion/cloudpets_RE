.class Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BarnyardSoundsGameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->startLevel()V
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
    .line 675
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$12;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$12;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    # invokes: Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->fadeOutGetReadyTextAndStart()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->access$2300(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    .line 679
    return-void
.end method
