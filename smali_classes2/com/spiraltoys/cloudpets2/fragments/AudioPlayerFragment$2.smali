.class Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$2;
.super Ljava/lang/Object;
.source "AudioPlayerFragment.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/util/CacheUtil$Callback;


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
    .line 211
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "localCacheUri"    # Landroid/net/Uri;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v2, 0x1

    .line 214
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    if-eqz p2, :cond_2

    .line 219
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080081

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-static {v0, v2}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$302(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;Z)Z

    .line 222
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/spiraltoys/cloudpets2/util/AudioPlayer;->init(Landroid/content/Context;Landroid/net/Uri;)Lcom/spiraltoys/cloudpets2/util/AudioPlayer;

    goto :goto_0
.end method
