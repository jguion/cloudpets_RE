.class Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;
.super Ljava/lang/Object;
.source "AudioPlayerFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->loadAudio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const v3, 0x7f0f001d

    .line 137
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->setSeekBar(Landroid/widget/SeekBar;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    .line 142
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->currentPlaybackTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->setRuntimeView(Landroid/widget/TextView;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    .line 143
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->trackLength:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->setTotalTimeView(Landroid/widget/TextView;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    .line 144
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->playButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->setPlayView(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    .line 145
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->pauseButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->setPauseView(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1$3;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1$3;-><init>(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;)V

    .line 146
    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->addOnPlayClickListener(Landroid/view/View$OnClickListener;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1$2;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1$2;-><init>(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;)V

    .line 156
    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->addOnPauseClickListener(Landroid/view/View$OnClickListener;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;)V

    .line 166
    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->addOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    .line 177
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->progressBar:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

    invoke-virtual {v0}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1$4;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1$4;-><init>(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 183
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->seekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->seekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x4099999a    # 4.8f

    invoke-static {v1, v2}, Lcom/spiraltoys/cloudpets2/util/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 185
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 186
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->playButton:Landroid/support/design/widget/FloatingActionButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_newly_recorded_adult_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->play()V

    .line 192
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->playButton:Landroid/support/design/widget/FloatingActionButton;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 193
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->pauseButton:Landroid/support/design/widget/FloatingActionButton;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0
.end method
