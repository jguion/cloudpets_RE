.class Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$11;
.super Ljava/lang/Object;
.source "BarnyardSoundsGameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    .prologue
    .line 636
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$11;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$11;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$11;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$11;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    # invokes: Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->showTryAgain()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->access$2200(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)V

    .line 642
    :cond_0
    return-void
.end method
