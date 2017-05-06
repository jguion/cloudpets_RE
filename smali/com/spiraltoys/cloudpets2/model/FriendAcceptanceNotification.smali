.class public Lcom/spiraltoys/cloudpets2/model/FriendAcceptanceNotification;
.super Lcom/parse/ParseObject;
.source "FriendAcceptanceNotification.java"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "FriendAcceptanceNotification"
.end annotation


# static fields
.field public static final FRIEND_RECORD:Ljava/lang/String; = "friendRecord"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public getFriendRecord()Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    .locals 1

    .prologue
    .line 20
    const-string v0, "friendRecord"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/FriendAcceptanceNotification;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    return-object v0
.end method

.method public setFriendRecord(Lcom/spiraltoys/cloudpets2/model/FriendRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    .prologue
    .line 24
    const-string v0, "friendRecord"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/FriendAcceptanceNotification;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    return-void
.end method
