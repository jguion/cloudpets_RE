.class Lcom/spiraltoys/cloudpets2/util/AudioPlayer$7;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/util/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$7;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 525
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$7;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # getter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPreparedListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$1000(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer$OnPreparedListener;

    .line 526
    .local v0, "listener":Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 528
    .end local v0    # "listener":Landroid/media/MediaPlayer$OnPreparedListener;
    :cond_0
    return-void
.end method
