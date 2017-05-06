.class Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$2;
.super Ljava/lang/Object;
.source "ProfilesForSendingMessagesAdapter.java"

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->reloadData()V
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
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 154
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$2;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 5
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
    .line 157
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    if-eqz p2, :cond_0

    .line 158
    invoke-virtual {p2}, Lcom/parse/ParseException;->printStackTrace()V

    .line 168
    :goto_0
    return-void

    .line 160
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v1, "tempProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    .line 162
    .local v0, "record":Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getTargetProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    .end local v0    # "record":Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    :cond_1
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    # setter for: Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mFriendProfiles:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->access$302(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;Ljava/util/List;)Ljava/util/List;

    .line 165
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    const/4 v3, 0x1

    # setter for: Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mAreFriendsLoaded:Z
    invoke-static {v2, v3}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->access$202(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;Z)Z

    .line 166
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mAreChildrenLoaded:Z
    invoke-static {v3}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->access$100(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;)Z

    move-result v3

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mAreFriendsLoaded:Z
    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->access$200(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->dataReloadable(ZZ)V

    goto :goto_0
.end method
