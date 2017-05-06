.class public Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;
.super Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;
.source "FriendedProfileAdapter.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/adapters/ProfileSelector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter",
        "<",
        "Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;",
        "Lcom/spiraltoys/cloudpets2/model/Profile;",
        ">;",
        "Lcom/spiraltoys/cloudpets2/adapters/ProfileSelector;"
    }
.end annotation


# instance fields
.field private mFriendRecordQuery:Lcom/parse/ParseQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingProfiles:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedProfiles:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parse/ParseQuery;Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 5
    .param p2, "targetProfile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "profileQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 54
    new-instance v2, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$1;

    invoke-direct {v2}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$1;-><init>()V

    invoke-direct {p0, p1, v2}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;-><init>(Lcom/parse/ParseQuery;Ljava/util/Comparator;)V

    .line 61
    const/4 v2, 0x0

    invoke-static {v3, v3, v4, v2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getFriendsLocalDatastoreQuery(ZZZLcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;

    move-result-object v2

    const-string v3, "recipient"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 62
    .local v0, "childFriendsQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    const-class v2, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-static {v2}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v1

    .line 63
    .local v1, "innerQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    const-string v2, "owner"

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    .line 64
    const-string v2, "sourceProfile"

    invoke-virtual {v0, v2, v1}, Lcom/parse/ParseQuery;->whereMatchesQuery(Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;

    .line 65
    const-string v2, "targetProfile"

    invoke-virtual {v0, v2, p2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    .line 67
    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->mFriendRecordQuery:Lcom/parse/ParseQuery;

    .line 68
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->mSelectedProfiles:Ljava/util/HashSet;

    .line 69
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->mPendingProfiles:Ljava/util/HashSet;

    .line 71
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->reloadData()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->mSelectedProfiles:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->mPendingProfiles:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$201(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;

    .prologue
    .line 46
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->reloadData()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getSelectedProfiles()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->getSelectedProfiles()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedProfiles()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->mSelectedProfiles:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 76
    new-instance v1, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040067

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemSelectableProfileBinding;

    invoke-direct {v1, p0, v0}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;-><init>(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;Lcom/spiraltoys/cloudpets2/databinding/ListItemSelectableProfileBinding;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/FriendRecordAddedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/FriendRecordAddedEvent;

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->reloadData()V

    .line 171
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/FriendRecordDeletedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/FriendRecordDeletedEvent;

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->reloadData()V

    .line 175
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/FriendRecordSavedToLocalDatastoreEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/FriendRecordSavedToLocalDatastoreEvent;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->reloadData()V

    .line 179
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/ProfileAddedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/ProfileAddedEvent;

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->reloadData()V

    .line 183
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/ProfileDeletedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/ProfileDeletedEvent;

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->reloadData()V

    .line 191
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/ProfileUpdatedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/ProfileUpdatedEvent;

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->notifyDataSetChanged()V

    .line 187
    return-void
.end method

.method public reloadData()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->mFriendRecordQuery:Lcom/parse/ParseQuery;

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->mFriendRecordQuery:Lcom/parse/ParseQuery;

    new-instance v1, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$2;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$2;-><init>(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    goto :goto_0
.end method
