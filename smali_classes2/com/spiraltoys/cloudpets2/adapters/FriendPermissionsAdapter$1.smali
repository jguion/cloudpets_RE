.class Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$1;
.super Ljava/lang/Object;
.source "FriendPermissionsAdapter.java"

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->reloadData()V
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
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 189
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$1;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 7
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
    .line 192
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    if-eqz p2, :cond_0

    .line 193
    invoke-virtual {p2}, Lcom/parse/ParseException;->printStackTrace()V

    .line 217
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 197
    .local v0, "friendRecordGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;>;"
    invoke-static {}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->access$000()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {p1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 199
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    .line 200
    .local v3, "record":Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getTargetProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getTargetEmailAddress()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "key":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    .line 203
    .local v1, "group":Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;
    if-nez v1, :cond_1

    .line 204
    new-instance v1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    .end local v1    # "group":Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    invoke-direct {v1, v5}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;-><init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;)V

    .line 205
    .restart local v1    # "group":Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_1
    invoke-virtual {v1, v3}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 200
    .end local v1    # "group":Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getTargetProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 211
    .end local v3    # "record":Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    :cond_3
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v4, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    .line 212
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mChildFriendRecords:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 214
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->access$102(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;Z)Z

    .line 215
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    invoke-static {v5}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->access$200(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;)Z

    move-result v5

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    invoke-static {v6}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->access$100(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->dataReloadable(ZZ)V

    goto :goto_0
.end method
