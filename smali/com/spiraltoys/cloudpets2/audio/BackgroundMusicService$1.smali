.class Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService$1;
.super Landroid/content/BroadcastReceiver;
.source "BackgroundMusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;
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
    .line 38
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService$1;->this$0:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService$1;->this$0:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;

    # invokes: Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->isBackgroundMusicEnabled()Z
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->access$000(Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    # getter for: Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    invoke-static {}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->access$100()Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->mute()V

    .line 44
    :cond_0
    return-void
.end method
