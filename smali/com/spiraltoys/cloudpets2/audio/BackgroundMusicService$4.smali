.class Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService$4;
.super Ljava/lang/Object;
.source "BackgroundMusicService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->playTrack(Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService$4;->this$0:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 117
    # getter for: Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    invoke-static {}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->access$100()Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->setVolume(FF)V

    .line 118
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService$4;->this$0:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;

    # getter for: Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mStartPaused:Z
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->access$200(Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 121
    :cond_0
    return-void
.end method
