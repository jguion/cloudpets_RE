.class public Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ProfilesForSendingMessagesAdapter.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/adapters/ProfileSelector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;,
        Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$SectionHeadingViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/spiraltoys/cloudpets2/adapters/ProfileSelector;"
    }
.end annotation


# static fields
.field private static final DISPLAY_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROFILE_VIEW_TYPE:I = 0x1

.field public static final SECTION_HEADING_VIEW_TYPE:I


# instance fields
.field private mAreChildrenLoaded:Z

.field private mAreFriendsLoaded:Z

.field private mChildrenProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private mFriendProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private mMyChildrenQuery:Lcom/parse/ParseQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private mMyFriendsQuery:Lcom/parse/ParseQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 300
    new-instance v0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$3;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$3;-><init>()V

    sput-object v0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->DISPLAY_NAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "children":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    .local p2, "friends":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mMyChildrenQuery:Lcom/parse/ParseQuery;

    .line 60
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mMyFriendsQuery:Lcom/parse/ParseQuery;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mChildrenProfiles:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mFriendProfiles:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mSelectedProfiles:Ljava/util/HashSet;

    .line 67
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->reloadData()V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->setHasStableIds(Z)V

    .line 70
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method static synthetic access$002(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mChildrenProfiles:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mAreChildrenLoaded:Z

    return v0
.end method

.method static synthetic access$102(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mAreChildrenLoaded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mAreFriendsLoaded:Z

    return v0
.end method

.method static synthetic access$202(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mAreFriendsLoaded:Z

    return p1
.end method

.method static synthetic access$302(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mFriendProfiles:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mSelectedProfiles:Ljava/util/HashSet;

    return-object v0
.end method

.method private getNumberOfSectionHeadings()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->hasChildrenSection()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->hasFriendSection()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private getProfileAtPosition(I)Lcom/spiraltoys/cloudpets2/model/Profile;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 119
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mChildrenProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mChildrenProfiles:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 125
    .local v0, "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    :goto_0
    return-object v0

    .line 122
    .end local v0    # "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    :cond_0
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mFriendProfiles:Ljava/util/List;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mChildrenProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v3, p1, v1

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->hasChildrenSection()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_1
    sub-int v1, v3, v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/Profile;

    .restart local v0    # "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    goto :goto_0

    .end local v0    # "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private hasChildrenSection()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mChildrenProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasFriendSection()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mFriendProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onBindProfileViewHolder(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 129
    invoke-direct {p0, p2}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->getProfileAtPosition(I)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v0

    .line 131
    .local v0, "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    invoke-virtual {p1, v0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->setParseObject(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 132
    return-void
.end method

.method private onBindSectionHeadingViewHolder(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$SectionHeadingViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$SectionHeadingViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 114
    if-nez p2, :cond_0

    const v0, 0x7f080130

    :goto_0
    invoke-virtual {p1, v0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$SectionHeadingViewHolder;->setTitle(I)V

    .line 115
    return-void

    .line 114
    :cond_0
    const v0, 0x7f080131

    goto :goto_0
.end method


# virtual methods
.method public dataReloadable(ZZ)V
    .locals 3
    .param p1, "children"    # Z
    .param p2, "friends"    # Z

    .prologue
    .line 180
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 181
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mChildrenProfiles:Ljava/util/List;

    sget-object v2, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->DISPLAY_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 182
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mFriendProfiles:Ljava/util/List;

    sget-object v2, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->DISPLAY_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 184
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mChildrenProfiles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 185
    .local v0, "combinedProfilesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mFriendProfiles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 188
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mSelectedProfiles:Ljava/util/HashSet;

    invoke-static {v0, v2}, Lcom/google/common/collect/Sets;->intersection(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mSelectedProfiles:Ljava/util/HashSet;

    .line 190
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->notifyDataSetChanged()V

    .line 192
    .end local v0    # "combinedProfilesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mChildrenProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mFriendProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->getNumberOfSectionHeadings()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->getItemViewType(I)I

    move-result v0

    .line 214
    .local v0, "viewType":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->getProfileAtPosition(I)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/hash/HashCode;->fromBytes([B)Lcom/google/common/hash/HashCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    int-to-long v2, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->hasChildrenSection()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->hasFriendSection()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->getNumberOfSectionHeadings()I

    move-result v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mChildrenProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_0

    .line 97
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getSelectedProfiles()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->getSelectedProfiles()Ljava/util/List;

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
    .line 174
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mSelectedProfiles:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 103
    invoke-virtual {p0, p2}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 111
    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :goto_0
    return-void

    .line 105
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :pswitch_0
    check-cast p1, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$SectionHeadingViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->onBindSectionHeadingViewHolder(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$SectionHeadingViewHolder;I)V

    goto :goto_0

    .line 108
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :pswitch_1
    check-cast p1, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->onBindProfileViewHolder(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;I)V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 77
    .local v0, "inflater":Landroid/view/LayoutInflater;
    packed-switch p2, :pswitch_data_0

    .line 83
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 79
    :pswitch_0
    new-instance v2, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$SectionHeadingViewHolder;

    const v1, 0x7f040063

    invoke-static {v0, v1, p1, v3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/databinding/ListItemHeaderBinding;

    invoke-direct {v2, v1}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$SectionHeadingViewHolder;-><init>(Lcom/spiraltoys/cloudpets2/databinding/ListItemHeaderBinding;)V

    move-object v1, v2

    goto :goto_0

    .line 81
    :pswitch_1
    new-instance v1, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;

    const v2, 0x7f040067

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;-><init>(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/model/events/LocalDatastoreChangedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/model/events/LocalDatastoreChangedEvent;
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->reloadData()V

    .line 225
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public reloadData()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mAreChildrenLoaded:Z

    .line 136
    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mAreFriendsLoaded:Z

    .line 138
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mMyChildrenQuery:Lcom/parse/ParseQuery;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mMyChildrenQuery:Lcom/parse/ParseQuery;

    new-instance v1, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$1;-><init>(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mMyFriendsQuery:Lcom/parse/ParseQuery;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mMyFriendsQuery:Lcom/parse/ParseQuery;

    new-instance v1, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$2;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$2;-><init>(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    .line 171
    :cond_1
    return-void
.end method
