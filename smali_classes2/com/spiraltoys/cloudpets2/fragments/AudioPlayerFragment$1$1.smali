.class Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1$1;
.super Ljava/lang/Object;
.source "AudioPlayerFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1$1;->this$1:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 169
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/VoiceMessagePlaybackCompletedEvent;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/events/VoiceMessagePlaybackCompletedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1$1;->this$1:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$OnAudioPlayerInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1$1;->this$1:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$OnAudioPlayerInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$OnAudioPlayerInteractionListener;->onPlaybackCompleted()V

    .line 174
    :cond_0
    return-void
.end method
