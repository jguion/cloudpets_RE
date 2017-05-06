.class public Lcom/spiraltoys/cloudpets2/events/FriendRecordEditEvent;
.super Ljava/lang/Object;
.source "FriendRecordEditEvent.java"


# instance fields
.field private mFriendRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;)V
    .locals 0
    .param p1, "friendRecordGroup"    # Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/events/FriendRecordEditEvent;->mFriendRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    .line 14
    return-void
.end method


# virtual methods
.method public getFriendRecordGroup()Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/events/FriendRecordEditEvent;->mFriendRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    return-object v0
.end method
