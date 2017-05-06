.class public Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;
.super Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;
.source "ProfileAdapter.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/adapters/ProfileSelector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter",
        "<",
        "Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;",
        "Lcom/spiraltoys/cloudpets2/model/Profile;",
        ">;",
        "Lcom/spiraltoys/cloudpets2/adapters/ProfileSelector;"
    }
.end annotation


# instance fields
.field private mEventType:Ljava/lang/Class;

.field private mPendingProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation
.end field


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
    .line 47
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;-><init>(Lcom/parse/ParseQuery;)V

    .line 48
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->mEventType:Ljava/lang/Class;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->mSelectedStates:Ljava/util/HashMap;

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->setHasStableIds(Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/parse/ParseQuery;Ljava/util/List;Ljava/util/List;Ljava/util/Comparator;Ljava/lang/Class;)V
    .locals 4
    .param p5, "eventType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "profileQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    .local p2, "selectedProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    .local p3, "pendingProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    .local p4, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    invoke-direct {p0, p1, p4}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;-><init>(Lcom/parse/ParseQuery;Ljava/util/Comparator;)V

    .line 61
    iput-object p5, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->mEventType:Ljava/lang/Class;

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->mSelectedStates:Ljava/util/HashMap;

    .line 63
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->setHasStableIds(Z)V

    .line 65
    invoke-direct {p0, p3}, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->purgeEmptyProfiles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->mPendingProfiles:Ljava/util/List;

    .line 67
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 68
    .local v0, "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->mSelectedStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    .end local v0    # "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/Profile;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p3, "x3"    # Landroid/widget/ImageView;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->toggleSelection(Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/Profile;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->mSelectedStates:Ljava/util/HashMap;

    return-object v0
.end method

.method private purgeEmptyProfiles(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v1, "purgedProfileList":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 199
    .local v0, "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 200
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    .end local v0    # "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    :cond_1
    return-object v1
.end method

.method private toggleSelection(Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/Profile;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p3, "checkBox"    # Landroid/widget/ImageView;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->mSelectedStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->mSelectedStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const v0, 0x7f020129

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->mSelectedStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const v0, 0x7f020128

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getSelectedProfiles()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->getSelectedProfiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedProfiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->mSelectedStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->onBindViewHolder(Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;I)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->onBindViewHolder(Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;I)V
    .locals 8
    .param p1, "holder"    # Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->onBindViewHolder(Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;I)V

    .line 89
    iget-object v0, p1, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 91
    .local v0, "selectedProfile":Lcom/spiraltoys/cloudpets2/model/Profile;
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->mSelectedStates:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p1, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mCheckBox:Landroid/widget/ImageView;

    const v2, 0x7f020128

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->mPendingProfiles:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->mPendingProfiles:Ljava/util/List;

    iget-object v2, p1, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->isPending:Z

    .line 101
    :cond_0
    iget-boolean v1, p1, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->isPending:Z

    if-eqz v1, :cond_3

    .line 102
    iget-object v1, p1, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mDisplayname:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800d9

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800ab

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p1, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mDisplayname:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x1060000

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    :goto_1
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->mEventType:Ljava/lang/Class;

    const-class v2, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedToSendMessageEvent;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    iget-object v1, p1, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mView:Landroid/view/View;

    new-instance v2, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$1;-><init>(Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_1
    :goto_2
    return-void

    .line 94
    :cond_2
    iget-object v1, p1, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mCheckBox:Landroid/widget/ImageView;

    const v2, 0x7f020129

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 105
    :cond_3
    iget-object v1, p1, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mDisplayname:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x106000c

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    iget-object v1, p1, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mDisplayname:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 118
    :cond_4
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->mEventType:Ljava/lang/Class;

    const-class v2, Lcom/spiraltoys/cloudpets2/events/ProfileSelectionChangedEvent;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p1, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mView:Landroid/view/View;

    new-instance v2, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$2;-><init>(Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040067

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->mEventType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2, v3}, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;-><init>(Landroid/view/View;Ljava/lang/Class;Z)V

    return-object v1
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/ProfileAddedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/ProfileAddedEvent;

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->reloadData()V

    .line 185
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/ProfileDeletedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/ProfileDeletedEvent;

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->reloadData()V

    .line 193
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/ProfileUpdatedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/ProfileUpdatedEvent;

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->notifyDataSetChanged()V

    .line 189
    return-void
.end method
