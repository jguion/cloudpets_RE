.class Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$1;
.super Ljava/lang/Object;
.source "VoiceMessagesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 73
    return-void
.end method
