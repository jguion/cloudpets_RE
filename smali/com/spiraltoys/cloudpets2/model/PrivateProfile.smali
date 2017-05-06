.class public Lcom/spiraltoys/cloudpets2/model/PrivateProfile;
.super Lcom/parse/ParseObject;
.source "PrivateProfile.java"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "PrivateProfile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;
    }
.end annotation


# static fields
.field public static final BIRTH_DAY_OF_MONTH:Ljava/lang/String; = "birthDayOfMonth"

.field public static final BIRTH_MONTH:Ljava/lang/String; = "birthMonth"

.field public static final LAST_TOY_ID:Ljava/lang/String; = "lastToyId"

.field public static final MESSAGE_FILTERED:Ljava/lang/String; = "messageFiltered"

.field public static final PROFILE_TYPE:Ljava/lang/String; = "profileType"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getBirthDayOfMonth()I
    .locals 1

    .prologue
    .line 55
    const-string v0, "birthDayOfMonth"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getBirthMonth()I
    .locals 1

    .prologue
    .line 47
    const-string v0, "birthMonth"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLastToyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "lastToyId"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfileType()Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;
    .locals 1

    .prologue
    .line 39
    const-string v0, "profileType"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->getProfileType(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    move-result-object v0

    return-object v0
.end method

.method public isAdult()Z
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->getProfileType()Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->ADULT:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMessageFiltered()Z
    .locals 1

    .prologue
    .line 31
    const-string v0, "messageFiltered"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBirthDayOfMonth(I)V
    .locals 2
    .param p1, "birthDayOfMonth"    # I

    .prologue
    .line 59
    const-string v0, "birthDayOfMonth"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public setBirthMonth(I)V
    .locals 2
    .param p1, "birthMonth"    # I

    .prologue
    .line 51
    const-string v0, "birthMonth"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public setLastToyId(Ljava/lang/String;)V
    .locals 1
    .param p1, "lastToyId"    # Ljava/lang/String;

    .prologue
    .line 27
    const-string v0, "lastToyId"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public setMessageFiltered(Z)V
    .locals 2
    .param p1, "messageFiltered"    # Z

    .prologue
    .line 35
    const-string v0, "messageFiltered"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public setProfileType(Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;)V
    .locals 2
    .param p1, "type"    # Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    .prologue
    .line 43
    const-string v0, "profileType"

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    return-void
.end method
