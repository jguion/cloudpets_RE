.class Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$2;
.super Ljava/lang/Object;
.source "PetVideoSurfaceView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$2;->this$0:Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 638
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 641
    :cond_0
    return-void
.end method
