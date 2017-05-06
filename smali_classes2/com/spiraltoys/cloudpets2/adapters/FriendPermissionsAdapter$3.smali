.class final Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$3;
.super Ljava/lang/Object;
.source "FriendPermissionsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;
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
        "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/spiraltoys/cloudpets2/model/FriendRecord;Lcom/spiraltoys/cloudpets2/model/FriendRecord;)I
    .locals 6
    .param p1, "lhs"    # Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    .param p2, "rhs"    # Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    .prologue
    .line 316
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getStatus()Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    move-result-object v0

    .line 317
    .local v0, "left":Lcom/spiraltoys/cloudpets2/model/FriendStatus;
    invoke-virtual {p2}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getStatus()Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    move-result-object v2

    .line 318
    .local v2, "right":Lcom/spiraltoys/cloudpets2/model/FriendStatus;
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getTargetProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    if-nez v4, :cond_0

    .line 319
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "leftName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getTargetProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    if-nez v4, :cond_1

    .line 321
    invoke-virtual {p2}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, "rightName":Ljava/lang/String;
    :goto_1
    sget-object v4, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->PENDING:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    invoke-virtual {v0, v4}, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 324
    sget-object v4, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->PENDING:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    invoke-virtual {v2, v4}, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 325
    invoke-virtual {p2}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getCreatedAt()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 326
    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 336
    :goto_2
    return v4

    .line 319
    .end local v1    # "leftName":Ljava/lang/String;
    .end local v3    # "rightName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getTargetProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 321
    .restart local v1    # "leftName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getTargetProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 328
    .restart local v3    # "rightName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getCreatedAt()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    goto :goto_2

    .line 331
    :cond_3
    const/4 v4, -0x1

    goto :goto_2

    .line 333
    :cond_4
    sget-object v4, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->PENDING:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    invoke-virtual {v2, v4}, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 334
    const/4 v4, 0x1

    goto :goto_2

    .line 336
    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 313
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    check-cast p2, Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$3;->compare(Lcom/spiraltoys/cloudpets2/model/FriendRecord;Lcom/spiraltoys/cloudpets2/model/FriendRecord;)I

    move-result v0

    return v0
.end method
