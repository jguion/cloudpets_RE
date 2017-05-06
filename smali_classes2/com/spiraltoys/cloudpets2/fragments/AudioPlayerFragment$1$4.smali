.class Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AudioPlayerFragment.java"


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
    .line 177
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1$4;->this$1:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1$4;->this$1:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->progressBar:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->setVisibility(I)V

    .line 181
    return-void
.end method
