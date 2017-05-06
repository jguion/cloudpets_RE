.class Lcom/spiraltoys/cloudpets2/util/AudioPlayer$4;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->initOnPauseClick()V
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
    .line 386
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$4;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$4;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->pause()V

    .line 391
    return-void
.end method
