.class Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2$1;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "VoiceMessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;->done(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2$1;->this$1:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2$1;->this$1:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->access$300(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;)V

    .line 92
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2$1;->this$1:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 93
    return-void
.end method
