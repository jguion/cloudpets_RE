.class final Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$3;
.super Ljava/lang/Object;
.source "ProfilesForSendingMessagesAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/spiraltoys/cloudpets2/model/Profile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/spiraltoys/cloudpets2/model/Profile;)I
    .locals 2
    .param p1, "lhs"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p2, "rhs"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 303
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 300
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/Profile;

    check-cast p2, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$3;->compare(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/spiraltoys/cloudpets2/model/Profile;)I

    move-result v0

    return v0
.end method
