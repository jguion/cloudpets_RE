.class public Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FriendPermissionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;,
        Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$HeaderViewHolder;,
        Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;,
        Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder;
    }
.end annotation


# static fields
.field private static final TYPE_HEADER:I = 0x0

.field private static final TYPE_ITEM_CHILD_FRIEND:I = 0x2

.field private static final TYPE_ITEM_MY_FRIEND:I = 0x3

.field private static final TYPE_MESSAGE:I = 0x1

.field private static myFriendRecordComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private childFriendsLoaded:Z

.field mChildFriendRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;",
            ">;"
        }
    .end annotation
.end field

.field mChildFriendsQuery:Lcom/parse/ParseQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
            ">;"
        }
    .end annotation
.end field

.field mMyFriendRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
            ">;"
        }
    .end annotation
.end field

.field mMyFriendsQuery:Lcom/parse/ParseQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberOfChildren:I

.field private myFriendsLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 313
    new-instance v0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$3;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$3;-><init>()V

    sput-object v0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->myFriendRecordComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery;I)V
    .locals 1
    .param p3, "numberOfChildren"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
            ">;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "childFriendsQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    .local p2, "myFriendsQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mMyFriendsQuery:Lcom/parse/ParseQuery;

    .line 85
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendsQuery:Lcom/parse/ParseQuery;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mMyFriendRecords:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    .line 90
    iput p3, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mNumberOfChildren:I

    .line 92
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->reloadData()V

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->setHasStableIds(Z)V

    .line 94
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method static synthetic access$000()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->myFriendRecordComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->childFriendsLoaded:Z

    return v0
.end method

.method static synthetic access$102(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->childFriendsLoaded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->myFriendsLoaded:Z

    return v0
.end method

.method static synthetic access$202(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->myFriendsLoaded:Z

    return p1
.end method

.method static synthetic access$302(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mNumberOfChildren:I

    return p1
.end method

.method private getHashForParseObject(Lcom/parse/ParseObject;)J
    .locals 2
    .param p1, "parseObject"    # Lcom/parse/ParseObject;

    .prologue
    .line 294
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytes([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public dataReloadable(ZZ)V
    .locals 0
    .param p1, "friends"    # Z
    .param p2, "profiles"    # Z

    .prologue
    .line 240
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->notifyDataSetChanged()V

    .line 243
    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 248
    const/4 v0, 0x2

    .line 249
    .local v0, "size":I
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    add-int/lit8 v0, v0, 0x1

    .line 254
    :goto_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mMyFriendRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    add-int/lit8 v0, v0, 0x1

    .line 259
    :goto_1
    return v0

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mMyFriendRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 264
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 267
    .local v0, "childFriendAdjuster":I
    :goto_0
    if-nez p1, :cond_1

    .line 268
    const-wide/16 v2, 0x0

    .line 290
    :goto_1
    return-wide v2

    .line 264
    .end local v0    # "childFriendAdjuster":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 271
    .restart local v0    # "childFriendAdjuster":I
    :cond_1
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne p1, v1, :cond_2

    .line 272
    const-wide/16 v2, 0x1

    goto :goto_1

    .line 276
    :cond_2
    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 277
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->hashCode()I

    move-result v1

    int-to-long v2, v1

    goto :goto_1

    .line 281
    :cond_3
    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    if-ne v1, v2, :cond_4

    .line 282
    const-wide/16 v2, 0x2

    goto :goto_1

    .line 286
    :cond_4
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mMyFriendRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 287
    const-wide/16 v2, 0x3

    goto :goto_1

    .line 290
    :cond_5
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mMyFriendRecords:Ljava/util/List;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int v2, p1, v2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    invoke-direct {p0, v1}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->getHashForParseObject(Lcom/parse/ParseObject;)J

    move-result-wide v2

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 153
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 156
    .local v0, "childFriendAdjuster":I
    :goto_0
    if-nez p1, :cond_2

    .line 181
    :cond_0
    :goto_1
    return v1

    .end local v0    # "childFriendAdjuster":I
    :cond_1
    move v0, v1

    .line 153
    goto :goto_0

    .line 161
    .restart local v0    # "childFriendAdjuster":I
    :cond_2
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    if-ne p1, v2, :cond_3

    move v1, v2

    .line 162
    goto :goto_1

    .line 166
    :cond_3
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    if-eq p1, v3, :cond_0

    .line 171
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mMyFriendRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    if-ne p1, v1, :cond_4

    move v1, v2

    .line 172
    goto :goto_1

    .line 176
    :cond_4
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge p1, v1, :cond_5

    .line 177
    const/4 v1, 0x2

    goto :goto_1

    .line 181
    :cond_5
    const/4 v1, 0x3

    goto :goto_1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 112
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v4

    .line 114
    .local v0, "childFriendAdjuster":I
    :goto_0
    iget-object v5, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 116
    .local v1, "context":Landroid/content/Context;
    instance-of v5, p1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$HeaderViewHolder;

    if-eqz v5, :cond_8

    .line 119
    if-nez p2, :cond_3

    .line 120
    iget v5, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mNumberOfChildren:I

    if-le v5, v4, :cond_2

    const v4, 0x7f0800ae

    :goto_1
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "headerTitle":Ljava/lang/String;
    :goto_2
    check-cast p1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$HeaderViewHolder;

    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p1, v2}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$HeaderViewHolder;->setParseObject(Ljava/lang/String;)V

    .line 148
    .end local v2    # "headerTitle":Ljava/lang/String;
    :cond_0
    :goto_3
    return-void

    .line 112
    .end local v0    # "childFriendAdjuster":I
    .end local v1    # "context":Landroid/content/Context;
    .restart local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 120
    .restart local v0    # "childFriendAdjuster":I
    .restart local v1    # "context":Landroid/content/Context;
    :cond_2
    const v4, 0x7f0800ad

    goto :goto_1

    .line 122
    :cond_3
    if-ne p2, v4, :cond_6

    .line 123
    iget v5, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mNumberOfChildren:I

    if-nez v5, :cond_4

    .line 124
    const v4, 0x7f080110

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "headerTitle":Ljava/lang/String;
    goto :goto_2

    .line 126
    .end local v2    # "headerTitle":Ljava/lang/String;
    :cond_4
    iget v5, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mNumberOfChildren:I

    if-le v5, v4, :cond_5

    const v4, 0x7f08010f

    :goto_4
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "headerTitle":Ljava/lang/String;
    goto :goto_2

    .end local v2    # "headerTitle":Ljava/lang/String;
    :cond_5
    const v4, 0x7f08010d

    goto :goto_4

    .line 129
    :cond_6
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    if-ne p2, v4, :cond_7

    .line 130
    const v4, 0x7f0800af

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "headerTitle":Ljava/lang/String;
    goto :goto_2

    .line 133
    .end local v2    # "headerTitle":Ljava/lang/String;
    :cond_7
    const v4, 0x7f0800ee

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "headerTitle":Ljava/lang/String;
    goto :goto_2

    .line 137
    .end local v2    # "headerTitle":Ljava/lang/String;
    :cond_8
    instance-of v4, p1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;

    if-eqz v4, :cond_9

    .line 139
    check-cast p1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;

    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    add-int/lit8 v5, p2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    invoke-virtual {p1, v4}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->setParseObject(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;)V

    goto :goto_3

    .line 143
    .restart local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_9
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int v4, p2, v4

    add-int/lit8 v4, v4, -0x2

    sub-int v3, v4, v0

    .line 144
    .local v3, "myFriendListPosition":I
    if-ltz v3, :cond_0

    .line 145
    check-cast p1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder;

    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mMyFriendRecords:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    invoke-virtual {p1, v4}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder;->setParseObject(Lcom/spiraltoys/cloudpets2/model/FriendRecord;)V

    goto :goto_3
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const v2, 0x7f040061

    const/4 v3, 0x0

    .line 99
    if-nez p2, :cond_0

    .line 100
    new-instance v0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$HeaderViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040063

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    .line 106
    :goto_0
    return-object v0

    .line 101
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 102
    new-instance v0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$HeaderViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040062

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 103
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 104
    new-instance v0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;-><init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 106
    :cond_2
    new-instance v0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$MyFriendsViewHolder;-><init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;Landroid/view/View;)V

    goto :goto_0
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/FriendRecordAddedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/FriendRecordAddedEvent;

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllFriendsToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 303
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/FriendRecordDeletedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/FriendRecordDeletedEvent;

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->reloadData()V

    .line 307
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/FriendRecordSavedToLocalDatastoreEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/FriendRecordSavedToLocalDatastoreEvent;

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->reloadData()V

    .line 311
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/ProfileAddedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/ProfileAddedEvent;

    .prologue
    .line 352
    iget v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mNumberOfChildren:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mNumberOfChildren:I

    .line 353
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->notifyDataSetChanged()V

    .line 354
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/ProfileDeletedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/ProfileDeletedEvent;

    .prologue
    .line 357
    iget v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mNumberOfChildren:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mNumberOfChildren:I

    .line 358
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->notifyDataSetChanged()V

    .line 359
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/ProfileSavedToLocalDatastoreEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/ProfileSavedToLocalDatastoreEvent;

    .prologue
    .line 342
    new-instance v0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$4;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$4;-><init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getLocalChildProfilesCount(Lcom/parse/CountCallback;)V

    .line 349
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 298
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method public reloadData()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->myFriendsLoaded:Z

    .line 186
    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->childFriendsLoaded:Z

    .line 188
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendsQuery:Lcom/parse/ParseQuery;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendsQuery:Lcom/parse/ParseQuery;

    new-instance v1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$1;-><init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mMyFriendsQuery:Lcom/parse/ParseQuery;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mMyFriendsQuery:Lcom/parse/ParseQuery;

    new-instance v1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$2;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$2;-><init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    .line 237
    :cond_1
    return-void
.end method
