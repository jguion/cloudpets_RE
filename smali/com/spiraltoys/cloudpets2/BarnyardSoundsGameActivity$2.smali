.class Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$2;
.super Ljava/lang/Object;
.source "BarnyardSoundsGameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 289
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    const v1, 0x7f070009

    # invokes: Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->playMusicTrack(I)Z
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->access$1400(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;I)Z

    .line 295
    :cond_0
    return-void
.end method
