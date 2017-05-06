.class Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$3;
.super Ljava/lang/Object;
.source "BarnyardSoundsGameActivity.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->onPause()V
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
    .line 357
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFadeComplete()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mMusicMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->access$1500(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mMusicMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->access$1500(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->release()V

    .line 362
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    const/4 v1, 0x0

    # setter for: Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->mMusicMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;->access$1502(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .line 364
    :cond_0
    return-void
.end method
