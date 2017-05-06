.class public Lcom/spiraltoys/cloudpets2/model/Profile;
.super Lcom/parse/ParseObject;
.source "Profile.java"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "Profile"
.end annotation


# static fields
.field public static final CREATED_AT:Ljava/lang/String; = "createdAt"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final LOCALLY_LAST_ACCESSED_AT:Ljava/lang/String; = "_lastAccessedAt"

.field public static final LOCAL_ACCESS_STACK:Ljava/lang/String; = "localProfileAccessStack"

.field public static final MAX_NAME_LENGTH:I = 0x20

.field public static final MAX_USERNAME_LENGTH:I = 0x20

.field public static final MIN_NAME_LENGTH:I = 0x1

.field public static final MIN_USERNAME_LENGTH:I = 0x1

.field public static final OBJECT_ID:Ljava/lang/String; = "objectId"

.field public static final OWNER:Ljava/lang/String; = "owner"

.field public static final PLUSH_TOY:Ljava/lang/String; = "plushToy"

.field public static final PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final PRIVATE_PROFILE:Ljava/lang/String; = "privateProfile"

.field public static final USERNAME:Ljava/lang/String; = "username"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    return-void
.end method

.method public static getLastAccessedProfileIds(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 120
    .local v0, "gson":Lcom/google/gson/Gson;
    new-instance v4, Lcom/spiraltoys/cloudpets2/model/Profile$1;

    invoke-direct {v4}, Lcom/spiraltoys/cloudpets2/model/Profile$1;-><init>()V

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/Profile$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 121
    .local v2, "listType":Ljava/lang/reflect/Type;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "localProfileAccessStack"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "serializedLocalAccessStack":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v1, "lastAccessedProfileIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 128
    .end local v1    # "lastAccessedProfileIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .restart local v1    # "lastAccessedProfileIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method private setLocallyLastAccessedAt(Landroid/content/Context;Ljava/util/Date;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accessedAt"    # Ljava/util/Date;
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 100
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_lastAccessedAt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 101
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "displayName"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocallyLastAccessedAt(Landroid/content/Context;)Ljava/util/Date;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 95
    new-instance v0, Ljava/util/Date;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_lastAccessedAt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getOwner()Lcom/parse/ParseUser;
    .locals 1

    .prologue
    .line 86
    const-string v0, "owner"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getParseUser(Ljava/lang/String;)Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method public getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;
    .locals 1

    .prologue
    .line 76
    const-string v0, "plushToy"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/PlushToy;

    return-object v0
.end method

.method public getPortrait()Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    .locals 1

    .prologue
    .line 60
    const-string v0, "portrait"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    return-object v0
.end method

.method public getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;
    .locals 1

    .prologue
    .line 68
    const-string v0, "privateProfile"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v0, "displayName"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public setJustAccessed(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 107
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getLastAccessedProfileIds(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 109
    .local v1, "lastAccessedProfileIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 110
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 112
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "localProfileAccessStack"

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, p1, v2}, Lcom/spiraltoys/cloudpets2/model/Profile;->setLocallyLastAccessedAt(Landroid/content/Context;Ljava/util/Date;)V

    .line 114
    return-void
.end method

.method public setOwner(Lcom/parse/ParseUser;)V
    .locals 1
    .param p1, "owner"    # Lcom/parse/ParseUser;

    .prologue
    .line 90
    const-string v0, "owner"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public setPlushToy(Lcom/spiraltoys/cloudpets2/model/PlushToy;)V
    .locals 1
    .param p1, "plushToy"    # Lcom/spiraltoys/cloudpets2/model/PlushToy;

    .prologue
    .line 80
    const-string v0, "plushToy"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public setPortrait(Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;)V
    .locals 1
    .param p1, "portrait"    # Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    .prologue
    .line 64
    const-string v0, "portrait"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public setPrivateProfile(Lcom/spiraltoys/cloudpets2/model/PrivateProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    .prologue
    .line 72
    const-string v0, "privateProfile"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string v0, "username"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    return-void
.end method
