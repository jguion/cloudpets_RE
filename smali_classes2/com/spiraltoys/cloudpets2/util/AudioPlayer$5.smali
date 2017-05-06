.class Lcom/spiraltoys/cloudpets2/util/AudioPlayer$5;
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
    .line 396
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$5;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 400
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/util/AudioPlayer$5;->this$0:Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    # getter for: Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->mPauseListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->access$700(Lcom/spiraltoys/cloudpets2/util/AudioPlayer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 401
    .local v0, "listener":Landroid/view/View$OnClickListener;
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 403
    .end local v0    # "listener":Landroid/view/View$OnClickListener;
    :cond_0
    return-void
.end method
