.class public Lcom/spiraltoys/cloudpets2/model/FriendRecord;
.super Lcom/parse/ParseObject;
.source "FriendRecord.java"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "FriendRecord"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "name"

.field public static final RECIPIENT:Ljava/lang/String; = "recipient"

.field public static final RELATIONSHIP:Ljava/lang/String; = "relationship"

.field public static final SOURCE_PROFILE:Ljava/lang/String; = "sourceProfile"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TARGET_EMAIL_ADDRESS:Ljava/lang/String; = "targetEmailAddress"

.field public static final TARGET_PROFILE:Ljava/lang/String; = "targetProfile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelationship()Lcom/spiraltoys/cloudpets2/model/FriendRelationship;
    .locals 1

    .prologue
    .line 34
    const-string v0, "relationship"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->fromModelName(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    move-result-object v0

    return-object v0
.end method

.method public getSourceProfile()Lcom/spiraltoys/cloudpets2/model/Profile;
    .locals 1

    .prologue
    .line 42
    const-string v0, "sourceProfile"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/Profile;

    return-object v0
.end method

.method public getStatus()Lcom/spiraltoys/cloudpets2/model/FriendStatus;
    .locals 1

    .prologue
    .line 50
    const-string v0, "status"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->fromModelName(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    move-result-object v0

    return-object v0
.end method

.method public getTargetEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "targetEmailAddress"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetProfile()Lcom/spiraltoys/cloudpets2/model/Profile;
    .locals 1

    .prologue
    .line 66
    const-string v0, "targetProfile"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/Profile;

    return-object v0
.end method

.method public isRecipient()Z
    .locals 1

    .prologue
    .line 74
    const-string v0, "recipient"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public setRelationship(Lcom/spiraltoys/cloudpets2/model/FriendRelationship;)V
    .locals 2
    .param p1, "relationship"    # Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    .prologue
    .line 38
    const-string v0, "relationship"

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public setSourceProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 1
    .param p1, "sourceProfile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 46
    const-string v0, "sourceProfile"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public setStatus(Lcom/spiraltoys/cloudpets2/model/FriendStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    .prologue
    .line 54
    const-string v0, "status"

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public setTargetEmailAddress(Ljava/lang/String;)V
    .locals 1
    .param p1, "targetEmailAddress"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v0, "targetEmailAddress"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public setTargetProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 1
    .param p1, "targetProfile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 70
    const-string v0, "targetProfile"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    return-void
.end method
