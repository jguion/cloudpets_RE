.class Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$1;
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
        "Lcom/spiraltoys/cloudpets2/model/Profile;",
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
    .line 139
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 139
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$1;->done(Ljava/util/List;Lcom/parse/ParseException;)V

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
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    if-eqz p2, :cond_0

    .line 143
    invoke-virtual {p2}, Lcom/parse/ParseException;->printStackTrace()V

    .line 149
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    # setter for: Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mChildrenProfiles:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->access$002(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;Ljava/util/List;)Ljava/util/List;

    .line 146
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    const/4 v1, 0x1

    # setter for: Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mAreChildrenLoaded:Z
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->access$102(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;Z)Z

    .line 147
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mAreChildrenLoaded:Z
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->access$100(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;)Z

    move-result v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mAreFriendsLoaded:Z
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->access$200(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->dataReloadable(ZZ)V

    goto :goto_0
.end method
