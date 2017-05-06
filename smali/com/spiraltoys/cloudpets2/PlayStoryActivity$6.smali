.class Lcom/spiraltoys/cloudpets2/PlayStoryActivity$6;
.super Ljava/lang/Object;
.source "PlayStoryActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->playAudio(Landroid/content/res/AssetFileDescriptor;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/PlayStoryActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/PlayStoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/PlayStoryActivity;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$6;->this$0:Lcom/spiraltoys/cloudpets2/PlayStoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$6;->this$0:Lcom/spiraltoys/cloudpets2/PlayStoryActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->access$000(Lcom/spiraltoys/cloudpets2/PlayStoryActivity;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;->release()V

    .line 354
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$6;->this$0:Lcom/spiraltoys/cloudpets2/PlayStoryActivity;

    const/4 v1, 0x0

    # setter for: Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mMediaPlayer:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->access$002(Lcom/spiraltoys/cloudpets2/PlayStoryActivity;Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;)Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer;

    .line 355
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$6;->this$0:Lcom/spiraltoys/cloudpets2/PlayStoryActivity;

    # invokes: Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->completePage()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->access$200(Lcom/spiraltoys/cloudpets2/PlayStoryActivity;)V

    .line 356
    return-void
.end method
