.class Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$2;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "ChildVoiceMessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 90
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    # getter for: Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 91
    return-void
.end method
