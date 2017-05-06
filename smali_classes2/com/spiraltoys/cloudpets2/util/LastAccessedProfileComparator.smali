.class public Lcom/spiraltoys/cloudpets2/util/LastAccessedProfileComparator;
.super Ljava/lang/Object;
.source "LastAccessedProfileComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/spiraltoys/cloudpets2/model/Profile;",
        ">;"
    }
.end annotation


# instance fields
.field private mLastAccessedProfileIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getLastAccessedProfileIds(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/util/LastAccessedProfileComparator;->mLastAccessedProfileIds:Ljava/util/ArrayList;

    .line 19
    return-void
.end method


# virtual methods
.method public compare(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/spiraltoys/cloudpets2/model/Profile;)I
    .locals 6
    .param p1, "lhs"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p2, "rhs"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    const/4 v3, -0x1

    .line 23
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->isAdult()Z

    move-result v4

    invoke-virtual {p2}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->isAdult()Z

    move-result v5

    if-eq v4, v5, :cond_1

    .line 24
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->isAdult()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 32
    :goto_0
    return v3

    .line 24
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 27
    :cond_1
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/util/LastAccessedProfileComparator;->mLastAccessedProfileIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 28
    .local v1, "lhsIndex":I
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/util/LastAccessedProfileComparator;->mLastAccessedProfileIds:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 30
    .local v2, "rhsIndex":I
    if-eq v2, v3, :cond_3

    if-eq v1, v3, :cond_3

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 32
    .local v0, "indexCompare":I
    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getCreatedAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p2}, Lcom/spiraltoys/cloudpets2/model/Profile;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    .end local v0    # "indexCompare":I
    :cond_2
    move v3, v0

    goto :goto_0

    .line 30
    :cond_3
    invoke-static {v2, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/Profile;

    check-cast p2, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/util/LastAccessedProfileComparator;->compare(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/spiraltoys/cloudpets2/model/Profile;)I

    move-result v0

    return v0
.end method
