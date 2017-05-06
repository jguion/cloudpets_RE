.class public abstract Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ParseQueryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder",
        "<TPO;>;PO:",
        "Lcom/parse/ParseObject;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TVH;>;"
    }
.end annotation


# instance fields
.field private mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TPO;>;"
        }
    .end annotation
.end field

.field private mParseObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TPO;>;"
        }
    .end annotation
.end field

.field private mQuery:Lcom/parse/ParseQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseQuery",
            "<TPO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parse/ParseQuery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery",
            "<TPO;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;, "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter<TVH;TPO;>;"
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TPO;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->mQuery:Lcom/parse/ParseQuery;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->mParseObjects:Ljava/util/List;

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->setHasStableIds(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->reloadData()V

    .line 37
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/parse/ParseQuery;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery",
            "<TPO;>;",
            "Ljava/util/Comparator",
            "<TPO;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;, "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter<TVH;TPO;>;"
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TPO;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TPO;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->mQuery:Lcom/parse/ParseQuery;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->mParseObjects:Ljava/util/List;

    .line 43
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->mComparator:Ljava/util/Comparator;

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->setHasStableIds(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->reloadData()V

    .line 46
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->mParseObjects:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->mParseObjects:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;)Ljava/util/Comparator;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->mComparator:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;, "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter<TVH;TPO;>;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->mParseObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 91
    .local p0, "this":Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;, "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter<TVH;TPO;>;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->mParseObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytes([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    .local p0, "this":Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;, "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter<TVH;TPO;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->onBindViewHolder(Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;I)V
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;, "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter<TVH;TPO;>;"
    .local p1, "holder":Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;, "TVH;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->mParseObjects:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;->setParseObject(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;, "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter<TVH;TPO;>;"
    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/model/events/LocalDatastoreChangedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/model/events/LocalDatastoreChangedEvent;
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;, "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter<TVH;TPO;>;"
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->reloadData()V

    .line 98
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;, "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter<TVH;TPO;>;"
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public reloadData()V
    .locals 3

    .prologue
    .line 64
    .local p0, "this":Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;, "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter<TVH;TPO;>;"
    :try_start_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->mQuery:Lcom/parse/ParseQuery;

    new-instance v2, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$1;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$1;-><init>(Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;)V

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 81
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
