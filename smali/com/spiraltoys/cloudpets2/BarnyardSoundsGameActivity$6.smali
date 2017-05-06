.class Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$6;
.super Ljava/lang/Object;
.source "BarnyardSoundsGameActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->playMusicTrack(I)Z
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
    .line 455
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$6;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$6;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mMusicMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->access$1500(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->release()V

    .line 459
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$6;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    const/4 v1, 0x0

    # setter for: Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mMusicMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->access$1502(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .line 460
    return-void
.end method
