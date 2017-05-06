.class Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService$3;
.super Ljava/lang/Object;
.source "BackgroundMusicService.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;

.field final synthetic val$track:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService$3;->this$0:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService$3;->val$track:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFadeComplete()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService$3;->this$0:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService$3;->val$track:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    # invokes: Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->playTrack(Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;)V
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;->access$300(Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicService;Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;)V

    .line 86
    return-void
.end method
