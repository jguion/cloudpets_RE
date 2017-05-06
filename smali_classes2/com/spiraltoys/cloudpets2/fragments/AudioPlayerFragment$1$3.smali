.class Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1$3;
.super Ljava/lang/Object;
.source "AudioPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 146
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1$3;->this$1:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/VoiceMessagePlaybackStartedEvent;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/events/VoiceMessagePlaybackStartedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1$3;->this$1:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$OnAudioPlayerInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1$3;->this$1:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$OnAudioPlayerInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$OnAudioPlayerInteractionListener;->onPlaybackStarted()V

    .line 154
    :cond_0
    return-void
.end method
