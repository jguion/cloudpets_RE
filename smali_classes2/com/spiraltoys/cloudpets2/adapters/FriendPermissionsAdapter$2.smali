.class Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$2;
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
    .line 222
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 222
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$2;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 3
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
    .line 226
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    if-eqz p2, :cond_0

    .line 227
    invoke-virtual {p2}, Lcom/parse/ParseException;->printStackTrace()V

    .line 234
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-static {}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->access$000()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 230
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    iput-object p1, v0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->mMyFriendRecords:Ljava/util/List;

    .line 231
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->access$202(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;Z)Z

    .line 232
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->access$200(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;)Z

    move-result v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->access$100(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->dataReloadable(ZZ)V

    goto :goto_0
.end method
