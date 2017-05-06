.class public Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;
.super Ljava/util/LinkedHashSet;
.source "FriendPermissionsAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChildFriendRecordGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashSet",
        "<",
        "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;)I
    .locals 6
    .param p1, "another"    # Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->first()Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    move-result-object v1

    .line 652
    .local v1, "lhs":Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->first()Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    move-result-object v2

    .line 654
    .local v2, "rhs":Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getTargetProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    if-nez v4, :cond_0

    .line 655
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "leftName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getTargetProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    if-nez v4, :cond_1

    .line 657
    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 659
    .local v3, "rightName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getStatus()Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    move-result-object v4

    sget-object v5, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->PENDING:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    invoke-virtual {v4, v5}, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 660
    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getStatus()Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    move-result-object v4

    sget-object v5, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->PENDING:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    invoke-virtual {v4, v5}, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 661
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 662
    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getCreatedAt()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    .line 675
    :goto_2
    return v4

    .line 655
    .end local v0    # "leftName":Ljava/lang/String;
    .end local v3    # "rightName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getTargetProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 657
    .restart local v0    # "leftName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getTargetProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 664
    .restart local v3    # "rightName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    .line 667
    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    .line 669
    :cond_4
    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getStatus()Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    move-result-object v4

    sget-object v5, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->PENDING:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    invoke-virtual {v4, v5}, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 670
    const/4 v4, -0x1

    goto :goto_2

    .line 672
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 673
    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getCreatedAt()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    goto :goto_2

    .line 675
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 643
    check-cast p1, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->compareTo(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;)I

    move-result v0

    return v0
.end method

.method public first()Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    return-object v0
.end method
