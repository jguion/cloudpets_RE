.class Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$2;
.super Ljava/lang/Object;
.source "FriendedProfileAdapter.java"

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->reloadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/FindCallback",
        "<",
        "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 85
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$2;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 4
    .param p2, "e"    # Lcom/parse/ParseException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
            ">;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "friendRecords":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p2}, Lcom/parse/ParseException;->printStackTrace()V

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->mSelectedProfiles:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->access$000(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 94
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->mPendingProfiles:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->access$100(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 96
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    .line 97
    .local v0, "friendRecord":Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->mSelectedProfiles:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->access$000(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getSourceProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getStatus()Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    move-result-object v2

    sget-object v3, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->PENDING:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    if-ne v2, v3, :cond_1

    .line 100
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->mPendingProfiles:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->access$100(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getSourceProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    .end local v0    # "friendRecord":Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    :cond_2
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->notifyDataSetChanged()V

    .line 105
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/spiraltoys/cloudpets2/events/ProfileSelectionChangedEvent;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->mSelectedProfiles:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->access$000(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;)Ljava/util/HashSet;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/spiraltoys/cloudpets2/events/ProfileSelectionChangedEvent;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 106
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;

    # invokes: Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;->reloadData()V
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->access$201(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;)V

    .line 107
    return-void
.end method
