.class public Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter;
.super Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;
.source "SingleSelectProfileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter$ProfileViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter",
        "<",
        "Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter$ProfileViewHolder;",
        "Lcom/spiraltoys/cloudpets2/model/Profile;",
        ">;"
    }
.end annotation


# instance fields
.field private mEventType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/parse/ParseQuery;Ljava/lang/Class;)V
    .locals 1
    .param p2, "eventType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;-><init>(Lcom/parse/ParseQuery;)V

    .line 36
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter;->mEventType:Ljava/lang/Class;

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter;->setHasStableIds(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter$ProfileViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter$ProfileViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter$ProfileViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040065

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter$ProfileViewHolder;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter;->mEventType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter$ProfileViewHolder;-><init>(Landroid/view/View;Ljava/lang/Class;)V

    return-object v1
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/ProfileAddedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/ProfileAddedEvent;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter;->reloadData()V

    .line 104
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/ProfileDeletedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/ProfileDeletedEvent;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter;->reloadData()V

    .line 112
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/ProfileUpdatedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/ProfileUpdatedEvent;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter;->notifyDataSetChanged()V

    .line 108
    return-void
.end method
