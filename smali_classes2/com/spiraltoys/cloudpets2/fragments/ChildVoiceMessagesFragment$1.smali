.class Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$1;
.super Ljava/lang/Object;
.source "ChildVoiceMessagesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 77
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    # getter for: Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 81
    return-void
.end method
