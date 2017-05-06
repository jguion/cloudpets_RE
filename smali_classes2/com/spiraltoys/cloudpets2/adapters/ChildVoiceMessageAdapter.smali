.class public Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;
.super Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;
.source "ChildVoiceMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter$ChildVoiceMessageViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter",
        "<",
        "Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter$ChildVoiceMessageViewHolder;",
        "Lcom/spiraltoys/cloudpets2/model/VoiceMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/parse/ParseQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/VoiceMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/VoiceMessage;>;"
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;-><init>(Lcom/parse/ParseQuery;)V

    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter$ChildVoiceMessageViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter$ChildVoiceMessageViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 37
    new-instance v1, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter$ChildVoiceMessageViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040060

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;

    invoke-direct {v1, p0, v0}, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter$ChildVoiceMessageViewHolder;-><init>(Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter$ChildVoiceMessageViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/VoiceMessageApprovedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/VoiceMessageApprovedEvent;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;->notifyDataSetChanged()V

    .line 48
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/VoiceMessageDeletedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/VoiceMessageDeletedEvent;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;->reloadData()V

    .line 53
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/VoiceMessageMarkedAsViewedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/VoiceMessageMarkedAsViewedEvent;

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;->notifyDataSetChanged()V

    .line 43
    return-void
.end method
