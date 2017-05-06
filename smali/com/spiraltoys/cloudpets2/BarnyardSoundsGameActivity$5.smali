.class Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$5;
.super Ljava/lang/Object;
.source "BarnyardSoundsGameActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->playAnimalTrackIfNotCurrentlyPlaying(I)Z
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
    .line 431
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$5;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$5;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->access$1700(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 435
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$5;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    const/4 v1, 0x0

    # setter for: Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mAnimalMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->access$1702(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 436
    return-void
.end method
