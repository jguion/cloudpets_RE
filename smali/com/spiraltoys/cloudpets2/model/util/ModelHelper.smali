.class public Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;
.super Ljava/lang/Object;
.source "ModelHelper.java"


# static fields
.field private static final FRIENDS_FETCH_LIMIT:I = 0x3e8

.field public static final FRIENDS_TAG:Ljava/lang/String; = "friends"

.field private static final PROFILES_FETCH_LIMIT:I = 0x3e8

.field public static final PROFILES_TAG:Ljava/lang/String; = "profiles"

.field public static final VOICE_MESSAGES_TAG:Ljava/lang/String; = "voice_messages"

.field private static final VOICE_MESSAGE_FETCH_LIMIT:I = 0x3e8


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Ljava/util/HashMap;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/HashMap;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->notifyChanges(Ljava/util/HashMap;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/model/Profile;ZZ)Lcom/parse/ParseQuery;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getVoiceMessagesQuery(Lcom/spiraltoys/cloudpets2/model/Profile;ZZ)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public static addFriend(Lcom/spiraltoys/cloudpets2/model/Profile;Ljava/lang/String;Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/FriendRelationship;Lcom/parse/SaveCallback;)V
    .locals 6
    .param p0, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "relationship"    # Lcom/spiraltoys/cloudpets2/model/FriendRelationship;
    .param p4, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    const/4 v5, 0x0

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "finalEmailAddress":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "finalName":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    new-instance v3, Lcom/parse/ParseException;

    const/16 v4, 0xc8

    invoke-direct {v3, v4, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v3}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V

    .line 187
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/util/Utils;->isValidEmailAddress(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 156
    new-instance v3, Lcom/parse/ParseException;

    const/16 v4, 0x7d

    invoke-direct {v3, v4, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v3}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V

    goto :goto_0

    .line 160
    :cond_1
    new-instance v2, Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    invoke-direct {v2}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;-><init>()V

    .line 162
    .local v2, "friend":Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    invoke-virtual {v2, v0}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->setTargetEmailAddress(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v2, v1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->setName(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v2, p3}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->setRelationship(Lcom/spiraltoys/cloudpets2/model/FriendRelationship;)V

    .line 165
    invoke-virtual {v2, p0}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->setSourceProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 167
    new-instance v3, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5;

    invoke-direct {v3, p4, v2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$5;-><init>(Lcom/parse/SaveCallback;Lcom/spiraltoys/cloudpets2/model/FriendRecord;)V

    invoke-virtual {v2, v3}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->saveInBackground(Lcom/parse/SaveCallback;)V

    goto :goto_0
.end method

.method public static addFriends(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/FriendRelationship;Lcom/parse/SaveCallback;)V
    .locals 8
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "relationship"    # Lcom/spiraltoys/cloudpets2/model/FriendRelationship;
    .param p4, "callback"    # Lcom/parse/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/spiraltoys/cloudpets2/model/FriendRelationship;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "profiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    const/4 v7, 0x0

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "finalEmailAddress":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "finalName":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 198
    new-instance v5, Lcom/parse/ParseException;

    const/16 v6, 0xc8

    invoke-direct {v5, v6, v7}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v5}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V

    .line 233
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/util/Utils;->isValidEmailAddress(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 203
    new-instance v5, Lcom/parse/ParseException;

    const/16 v6, 0x7d

    invoke-direct {v5, v6, v7}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v5}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V

    goto :goto_0

    .line 207
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v3, "friendRecords":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 210
    .local v4, "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    new-instance v2, Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    invoke-direct {v2}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;-><init>()V

    .line 211
    .local v2, "friend":Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    invoke-virtual {v2, v0}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->setTargetEmailAddress(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v2, v1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->setName(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v2, p3}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->setRelationship(Lcom/spiraltoys/cloudpets2/model/FriendRelationship;)V

    .line 214
    invoke-virtual {v2, v4}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->setSourceProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 215
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 218
    .end local v2    # "friend":Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    .end local v4    # "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    :cond_2
    new-instance v5, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$6;

    invoke-direct {v5, p4}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$6;-><init>(Lcom/parse/SaveCallback;)V

    invoke-static {v3, v5}, Lcom/parse/ParseObject;->saveAllInBackground(Ljava/util/List;Lcom/parse/SaveCallback;)V

    goto :goto_0
.end method

.method public static clearAllFriendRequestAcceptanceNotifications(Lcom/parse/DeleteCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 350
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Lcom/parse/ParseException;

    const/16 v1, 0x77

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/parse/DeleteCallback;->done(Lcom/parse/ParseException;)V

    .line 365
    :goto_0
    return-void

    .line 355
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$7;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$7;-><init>(Lcom/parse/DeleteCallback;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getPendingFriendRequestAcceptanceNotifications(Lcom/parse/FindCallback;)V

    goto :goto_0
.end method

.method public static clearPendingFriendRequestAcceptanceNotification(Lcom/spiraltoys/cloudpets2/model/FriendAcceptanceNotification;Lcom/parse/DeleteCallback;)V
    .locals 3
    .param p0, "notification"    # Lcom/spiraltoys/cloudpets2/model/FriendAcceptanceNotification;
    .param p1, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 341
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lcom/parse/ParseException;

    const/16 v1, 0x77

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/parse/DeleteCallback;->done(Lcom/parse/ParseException;)V

    .line 347
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/model/FriendAcceptanceNotification;->deleteInBackground(Lcom/parse/DeleteCallback;)V

    goto :goto_0
.end method

.method public static countLocalNewMessages(Lcom/spiraltoys/cloudpets2/model/Profile;ZZLcom/parse/CountCallback;)V
    .locals 5
    .param p0, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p1, "excludeProfile"    # Z
    .param p2, "isParentalControlled"    # Z
    .param p3, "callback"    # Lcom/parse/CountCallback;

    .prologue
    .line 652
    invoke-static {p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getVoiceMessagesQuery(Lcom/spiraltoys/cloudpets2/model/Profile;Z)Lcom/parse/ParseQuery;

    move-result-object v2

    .line 654
    .local v2, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/VoiceMessage;>;"
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->isAdult()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_1

    .line 655
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 656
    .local v0, "approvedFlags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 657
    .local v1, "newFlags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v3, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->VOICE_MESSAGE_FLAG_APPROVED_MESSAGE_PERMUTATIONS:[I

    invoke-static {v3}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 658
    sget-object v3, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->VOICE_MESSAGE_FLAG_VALID_NEW_MESSAGE_PERMUTATIONS:[I

    invoke-static {v3}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 660
    const-string v3, "flags"

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->intersection(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/parse/ParseQuery;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    .line 665
    .end local v0    # "approvedFlags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v1    # "newFlags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_0
    const-string v3, "voice_messages"

    invoke-virtual {v2, v3}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 666
    invoke-virtual {v2, p3}, Lcom/parse/ParseQuery;->countInBackground(Lcom/parse/CountCallback;)V

    .line 667
    return-void

    .line 662
    :cond_1
    const-string v3, "flags"

    sget-object v4, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->VOICE_MESSAGE_FLAG_VALID_NEW_MESSAGE_PERMUTATIONS:[I

    invoke-static {v4}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/parse/ParseQuery;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    goto :goto_0
.end method

.method public static countPendingIncomingFriendRequests(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/CountCallback;)V
    .locals 4
    .param p0, "recipientProfile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p1, "callback"    # Lcom/parse/CountCallback;

    .prologue
    .line 305
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    const/4 v0, 0x0

    new-instance v1, Lcom/parse/ParseException;

    const/16 v2, 0x77

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lcom/parse/CountCallback;->done(ILcom/parse/ParseException;)V

    .line 311
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getPendingIncomingFriendsQuery(Lcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;

    move-result-object v0

    const-string v1, "friends"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery;->countInBackground(Lcom/parse/CountCallback;)V

    goto :goto_0
.end method

.method public static fetchAllFriendsToLocalDatastore(Lcom/parse/FindCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/FindCallback",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "callback":Lcom/parse/FindCallback;, "Lcom/parse/FindCallback<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    const/16 v4, 0x3e8

    .line 539
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getFriendsQuery()Lcom/parse/ParseQuery;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/parse/ParseQuery;->setLimit(I)Lcom/parse/ParseQuery;

    move-result-object v2

    const-string v3, "friends"

    invoke-virtual {v2, v3}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 540
    .local v0, "friendRecordLocalDatastoreParseQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getFriendsQuery()Lcom/parse/ParseQuery;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/parse/ParseQuery;->setLimit(I)Lcom/parse/ParseQuery;

    move-result-object v1

    .line 542
    .local v1, "friendRecordRemoteParseQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    const-string v2, "friends"

    new-instance v3, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$12;

    invoke-direct {v3, p0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$12;-><init>(Lcom/parse/FindCallback;)V

    invoke-static {v2, v0, v1, v3}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllToLocalDatastore(Ljava/lang/String;Lcom/parse/ParseQuery;Lcom/parse/ParseQuery;Lcom/parse/FindCallback;)V

    .line 552
    return-void
.end method

.method public static fetchAllProfilesToLocalDatastore(Lcom/parse/FindCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/FindCallback",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "callback":Lcom/parse/FindCallback;, "Lcom/parse/FindCallback<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    const/16 v4, 0x3e8

    .line 523
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfilesQuery()Lcom/parse/ParseQuery;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/parse/ParseQuery;->setLimit(I)Lcom/parse/ParseQuery;

    move-result-object v2

    const-string v3, "profiles"

    invoke-virtual {v2, v3}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 524
    .local v0, "profileLocalDatastoreParseQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfilesQuery()Lcom/parse/ParseQuery;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/parse/ParseQuery;->setLimit(I)Lcom/parse/ParseQuery;

    move-result-object v1

    .line 526
    .local v1, "profileRemoteParseQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    const-string v2, "profiles"

    new-instance v3, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$11;

    invoke-direct {v3, p0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$11;-><init>(Lcom/parse/FindCallback;)V

    invoke-static {v2, v0, v1, v3}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllToLocalDatastore(Ljava/lang/String;Lcom/parse/ParseQuery;Lcom/parse/ParseQuery;Lcom/parse/FindCallback;)V

    .line 536
    return-void
.end method

.method private static fetchAllToLocalDatastore(Ljava/lang/String;Lcom/parse/ParseQuery;Lcom/parse/ParseQuery;Lcom/parse/FindCallback;)V
    .locals 1
    .param p0, "pinName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<TT;>;",
            "Lcom/parse/ParseQuery",
            "<TT;>;",
            "Lcom/parse/FindCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 562
    .local p1, "localDatastoreQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p2, "remoteDatastoreQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    .local p3, "callback":Lcom/parse/FindCallback;, "Lcom/parse/FindCallback<TT;>;"
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;

    invoke-direct {v0, p0, p3, p2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$13;-><init>(Ljava/lang/String;Lcom/parse/FindCallback;Lcom/parse/ParseQuery;)V

    invoke-virtual {p1, v0}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    .line 626
    return-void
.end method

.method public static fetchAllVoiceMessagesToLocalDatastore(Lcom/parse/FindCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/FindCallback",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/VoiceMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "callback":Lcom/parse/FindCallback;, "Lcom/parse/FindCallback<Lcom/spiraltoys/cloudpets2/model/VoiceMessage;>;"
    const/16 v4, 0x3e8

    .line 555
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getVoiceMessagesQuery()Lcom/parse/ParseQuery;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/parse/ParseQuery;->setLimit(I)Lcom/parse/ParseQuery;

    move-result-object v2

    const-string v3, "voice_messages"

    invoke-virtual {v2, v3}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 556
    .local v0, "voiceMessageLocalDatastoreParseQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/VoiceMessage;>;"
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getVoiceMessagesQuery()Lcom/parse/ParseQuery;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/parse/ParseQuery;->setLimit(I)Lcom/parse/ParseQuery;

    move-result-object v1

    .line 558
    .local v1, "voiceMessageRemoteParseQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/VoiceMessage;>;"
    const-string v2, "voice_messages"

    invoke-static {v2, v0, v1, p0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllToLocalDatastore(Ljava/lang/String;Lcom/parse/ParseQuery;Lcom/parse/ParseQuery;Lcom/parse/FindCallback;)V

    .line 559
    return-void
.end method

.method public static getChildProfilesLocalDatastoreQuery()Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getChildProfilesQuery()Lcom/parse/ParseQuery;

    move-result-object v0

    const-string v1, "profiles"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method private static getChildProfilesQuery()Lcom/parse/ParseQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    const-class v2, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    invoke-static {v2}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 458
    .local v0, "innerQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/PrivateProfile;>;"
    const-string v2, "profileType"

    sget-object v3, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->CHILD:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    .line 459
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfilesQuery()Lcom/parse/ParseQuery;

    move-result-object v1

    .line 460
    .local v1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    const-string v2, "privateProfile"

    invoke-virtual {v1, v2, v0}, Lcom/parse/ParseQuery;->whereMatchesQuery(Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;

    .line 461
    const-string v2, "createdAt"

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery;->orderByAscending(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 462
    return-object v1
.end method

.method public static getFriendProfileFromLocalDatastore(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/Profile;
    .locals 4
    .param p0, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 297
    :try_start_0
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getFriendProfilesLocalDatastoreQuery()Lcom/parse/ParseQuery;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/parse/ParseQuery;->get(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/model/Profile;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Lcom/parse/ParseException;
    const-string v1, "profiles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "objectId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/util/Analytics;->logLocalDatastoreException(Lcom/parse/ParseException;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    throw v0
.end method

.method public static getFriendProfilesLocalDatastoreQuery()Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfilesQuery()Lcom/parse/ParseQuery;

    move-result-object v0

    const-string v1, "friends"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public static getFriendsLocalDatastoreQuery(ZZZLcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;
    .locals 2
    .param p0, "includeAccepted"    # Z
    .param p1, "includePending"    # Z
    .param p2, "includeRejected"    # Z
    .param p3, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ")",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    invoke-static {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getFriendsQuery(ZZZLcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;

    move-result-object v0

    const-string v1, "friends"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public static getFriendsQuery()Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    const-class v1, Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    invoke-static {v1}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 237
    .local v0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    const-string v1, "sourceProfile"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 238
    const-string v1, "sourceProfile.portrait"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 239
    const-string v1, "sourceProfile.plushToy"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 240
    const-string v1, "sourceProfile.privateProfile"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 241
    const-string v1, "targetProfile"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 242
    const-string v1, "targetProfile.portrait"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 243
    const-string v1, "targetProfile.plushToy"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 244
    const-string v1, "targetProfile.privateProfile"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 245
    return-object v0
.end method

.method private static getFriendsQuery(Lcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;
    .locals 2
    .param p0, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ")",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getFriendsQuery()Lcom/parse/ParseQuery;

    move-result-object v0

    .line 250
    .local v0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    if-eqz p0, :cond_0

    const-string v1, "sourceProfile"

    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    .line 251
    :cond_0
    return-object v0
.end method

.method private static getFriendsQuery(ZZZ)Lcom/parse/ParseQuery;
    .locals 1
    .param p0, "includeAccepted"    # Z
    .param p1, "includePending"    # Z
    .param p2, "includeRejected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getFriendsQuery(ZZZLcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method private static getFriendsQuery(ZZZLcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;
    .locals 3
    .param p0, "includeAccepted"    # Z
    .param p1, "includePending"    # Z
    .param p2, "includeRejected"    # Z
    .param p3, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ")",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v1, "statusIncludes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 262
    sget-object v2, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->ACCEPTED:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->getModelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_0
    if-eqz p1, :cond_1

    .line 265
    sget-object v2, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->PENDING:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->getModelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_1
    if-eqz p2, :cond_2

    .line 268
    sget-object v2, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->REJECTED:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->getModelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_2
    invoke-static {p3}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getFriendsQuery(Lcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 272
    .local v0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/parse/ParseQuery;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    .line 274
    return-object v0
.end method

.method public static getLocalAdultProfile()Lcom/spiraltoys/cloudpets2/model/Profile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 480
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfilesLocalDatastoreQuery()Lcom/parse/ParseQuery;

    move-result-object v1

    .line 481
    .local v1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    const-string v2, "plushToy"

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery;->whereDoesNotExist(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 483
    :try_start_0
    invoke-virtual {v1}, Lcom/parse/ParseQuery;->getFirst()Lcom/parse/ParseObject;

    move-result-object v2

    check-cast v2, Lcom/spiraltoys/cloudpets2/model/Profile;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Lcom/parse/ParseException;
    const-string v2, "profiles"

    invoke-static {v0, v2}, Lcom/spiraltoys/cloudpets2/util/Analytics;->logLocalDatastoreException(Lcom/parse/ParseException;Ljava/lang/String;)V

    .line 486
    throw v0
.end method

.method public static getLocalAdultProfileInBackground(Lcom/parse/GetCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/GetCallback",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 470
    .local p0, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    const-class v2, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    invoke-static {v2}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 471
    .local v0, "innerQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/PrivateProfile;>;"
    const-string v2, "profileType"

    sget-object v3, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->ADULT:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    .line 472
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfilesQuery()Lcom/parse/ParseQuery;

    move-result-object v1

    .line 473
    .local v1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    const-string v2, "privateProfile"

    invoke-virtual {v1, v2, v0}, Lcom/parse/ParseQuery;->whereMatchesQuery(Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;

    .line 474
    const-string v2, "profiles"

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 475
    invoke-virtual {v1, p0}, Lcom/parse/ParseQuery;->getFirstInBackground(Lcom/parse/GetCallback;)V

    .line 476
    return-void
.end method

.method public static getLocalChildProfilesCount()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    new-instance v1, Lcom/parse/ParseException;

    const/16 v2, 0x77

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 494
    :cond_0
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getChildProfilesQuery()Lcom/parse/ParseQuery;

    move-result-object v0

    .line 495
    .local v0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    const-string v1, "profiles"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 496
    invoke-virtual {v0}, Lcom/parse/ParseQuery;->count()I

    move-result v1

    return v1
.end method

.method public static getLocalChildProfilesCount(Lcom/parse/CountCallback;)V
    .locals 5
    .param p0, "callback"    # Lcom/parse/CountCallback;

    .prologue
    .line 500
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 501
    const/4 v1, 0x0

    new-instance v2, Lcom/parse/ParseException;

    const/16 v3, 0x77

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v1, v2}, Lcom/parse/CountCallback;->done(ILcom/parse/ParseException;)V

    .line 507
    :goto_0
    return-void

    .line 504
    :cond_0
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getChildProfilesQuery()Lcom/parse/ParseQuery;

    move-result-object v0

    .line 505
    .local v0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    const-string v1, "profiles"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 506
    invoke-virtual {v0, p0}, Lcom/parse/ParseQuery;->countInBackground(Lcom/parse/CountCallback;)V

    goto :goto_0
.end method

.method public static getLocalVoiceMessagesWithServerFallback(Lcom/spiraltoys/cloudpets2/model/Profile;ZZLcom/parse/FindCallback;)V
    .locals 2
    .param p0, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p1, "excludeProfile"    # Z
    .param p2, "isParentalControlled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            "ZZ",
            "Lcom/parse/FindCallback",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/VoiceMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 670
    .local p3, "callback":Lcom/parse/FindCallback;, "Lcom/parse/FindCallback<Lcom/spiraltoys/cloudpets2/model/VoiceMessage;>;"
    invoke-static {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getVoiceMessagesQuery(Lcom/spiraltoys/cloudpets2/model/Profile;ZZ)Lcom/parse/ParseQuery;

    move-result-object v0

    const-string v1, "voice_messages"

    .line 671
    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;-><init>(Lcom/spiraltoys/cloudpets2/model/Profile;ZZLcom/parse/FindCallback;)V

    .line 672
    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    .line 690
    return-void
.end method

.method public static getOwnedProfilesLocalDatastoreQuery(Lcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;
    .locals 3
    .param p0, "owner"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ")",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfilesQuery(Lcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;

    move-result-object v0

    const-string v1, "owner"

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getOwner()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v0

    const-string v1, "profiles"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public static getPendingFriendRequestAcceptanceNotifications(Lcom/parse/FindCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/FindCallback",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/FriendAcceptanceNotification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "callback":Lcom/parse/FindCallback;, "Lcom/parse/FindCallback<Lcom/spiraltoys/cloudpets2/model/FriendAcceptanceNotification;>;"
    const/4 v3, 0x0

    .line 322
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    new-instance v1, Lcom/parse/ParseException;

    const/16 v2, 0x77

    invoke-direct {v1, v2, v3}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v3, v1}, Lcom/parse/FindCallback;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    .line 338
    :goto_0
    return-void

    .line 327
    :cond_0
    const-class v1, Lcom/spiraltoys/cloudpets2/model/FriendAcceptanceNotification;

    invoke-static {v1}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 328
    .local v0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/FriendAcceptanceNotification;>;"
    const-string v1, "friendRecord"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 329
    const-string v1, "friendRecord.targetProfile"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 330
    const-string v1, "friendRecord.targetProfile.portrait"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 331
    const-string v1, "friendRecord.targetProfile.plushToy"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 332
    const-string v1, "friendRecord.targetProfile.privateProfile"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 333
    const-string v1, "friendRecord.sourceProfile"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 334
    const-string v1, "friendRecord.sourceProfile.portrait"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 335
    const-string v1, "friendRecord.sourceProfile.plushToy"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 336
    const-string v1, "friendRecord.sourceProfile.privateProfile"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 337
    invoke-virtual {v0, p0}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    goto :goto_0
.end method

.method private static getPendingIncomingFriendsQuery(Lcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;
    .locals 3
    .param p0, "recipientProfile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ")",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getFriendsQuery()Lcom/parse/ParseQuery;

    move-result-object v0

    .line 315
    .local v0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    const-string v1, "status"

    sget-object v2, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->PENDING:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->getModelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    .line 316
    const-string v1, "recipient"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    .line 317
    const-string v1, "sourceProfile"

    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    .line 318
    return-object v0
.end method

.method public static getProfileById(Ljava/lang/String;Lcom/parse/GetCallback;)V
    .locals 2
    .param p0, "profileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/GetCallback",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p1, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfilesLocalDatastoreQuery()Lcom/parse/ParseQuery;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$10;

    invoke-direct {v1, p1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$10;-><init>(Lcom/parse/GetCallback;)V

    invoke-virtual {v0, p0, v1}, Lcom/parse/ParseQuery;->getInBackground(Ljava/lang/String;Lcom/parse/GetCallback;)V

    .line 520
    return-void
.end method

.method public static getProfileFromLocalDatastore(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/Profile;
    .locals 2
    .param p0, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 288
    :try_start_0
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfilesLocalDatastoreQuery()Lcom/parse/ParseQuery;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/parse/ParseQuery;->get(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/model/Profile;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-object v1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Lcom/parse/ParseException;
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getFriendProfileFromLocalDatastore(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v1

    goto :goto_0
.end method

.method public static getProfilesLocalDatastoreQuery()Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfilesQuery()Lcom/parse/ParseQuery;

    move-result-object v0

    const-string v1, "profiles"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public static getProfilesLocalDatastoreQuery(Lcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;
    .locals 2
    .param p0, "profileToExclude"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ")",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfilesQuery(Lcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;

    move-result-object v0

    const-string v1, "profiles"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method private static getProfilesQuery()Lcom/parse/ParseQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    const-class v1, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-static {v1}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 426
    .local v0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    const-string v1, "owner"

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    .line 427
    const-string v1, "createdAt"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->orderByAscending(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 428
    const-string v1, "privateProfile"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 429
    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 430
    const-string v1, "plushToy"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 431
    return-object v0
.end method

.method private static getProfilesQuery(Lcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;
    .locals 3
    .param p0, "profileToExclude"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ")",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfilesQuery()Lcom/parse/ParseQuery;

    move-result-object v0

    .line 440
    .local v0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    const-string v1, "objectId"

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    .line 441
    return-object v0
.end method

.method public static getVoiceMessageFromLocalDatastore(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    .locals 2
    .param p0, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 693
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getVoiceMessagesQuery()Lcom/parse/ParseQuery;

    move-result-object v0

    const-string v1, "voice_messages"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParseQuery;->get(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    return-object v0
.end method

.method public static getVoiceMessagesLocalDatastoreQuery(Lcom/spiraltoys/cloudpets2/model/Profile;Z)Lcom/parse/ParseQuery;
    .locals 2
    .param p0, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p1, "excludeProfile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            "Z)",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/VoiceMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 729
    invoke-static {p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getVoiceMessagesQuery(Lcom/spiraltoys/cloudpets2/model/Profile;Z)Lcom/parse/ParseQuery;

    move-result-object v0

    const-string v1, "voice_messages"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceMessagesLocalDatastoreQuery(Lcom/spiraltoys/cloudpets2/model/Profile;ZZ)Lcom/parse/ParseQuery;
    .locals 2
    .param p0, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p1, "excludeProfile"    # Z
    .param p2, "isParentalControlled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            "ZZ)",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/VoiceMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 743
    invoke-static {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getVoiceMessagesQuery(Lcom/spiraltoys/cloudpets2/model/Profile;ZZ)Lcom/parse/ParseQuery;

    move-result-object v0

    const-string v1, "voice_messages"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceMessagesLocalDatastoreQuery(Lcom/spiraltoys/cloudpets2/model/Profile;ZZZ)Lcom/parse/ParseQuery;
    .locals 2
    .param p0, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p1, "excludeProfile"    # Z
    .param p2, "isParentalControlled"    # Z
    .param p3, "isSavedMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            "ZZZ)",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/VoiceMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 759
    invoke-static {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getVoiceMessagesQuery(Lcom/spiraltoys/cloudpets2/model/Profile;ZZZ)Lcom/parse/ParseQuery;

    move-result-object v0

    const-string v1, "voice_messages"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method private static getVoiceMessagesQuery()Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/VoiceMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 697
    const-class v1, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-static {v1}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 698
    .local v0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/VoiceMessage;>;"
    const-string v1, "sender"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->whereExists(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 699
    const-string v1, "recipient"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->whereExists(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 700
    const-string v1, "sender"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 701
    const-string v1, "sender.portrait"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 702
    const-string v1, "sender.plushToy"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 703
    const-string v1, "sender.privateProfile"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 704
    const-string v1, "recipient"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 705
    const-string v1, "recipient.portrait"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 706
    const-string v1, "recipient.plushToy"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 707
    const-string v1, "recipient.privateProfile"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->include(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 708
    const-string v1, "createdAt"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->orderByDescending(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 710
    return-object v0
.end method

.method private static getVoiceMessagesQuery(Lcom/spiraltoys/cloudpets2/model/Profile;Z)Lcom/parse/ParseQuery;
    .locals 4
    .param p0, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p1, "excludeProfile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            "Z)",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/VoiceMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 714
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getVoiceMessagesQuery()Lcom/parse/ParseQuery;

    move-result-object v1

    .line 716
    .local v1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/VoiceMessage;>;"
    if-eqz p1, :cond_0

    .line 717
    const-class v2, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-static {v2}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 718
    .local v0, "innerQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    const-string v2, "owner"

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    .line 719
    const-string v2, "recipient"

    invoke-virtual {v1, v2, p0}, Lcom/parse/ParseQuery;->whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    .line 720
    const-string v2, "recipient"

    invoke-virtual {v1, v2, v0}, Lcom/parse/ParseQuery;->whereMatchesQuery(Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;

    .line 725
    .end local v0    # "innerQuery":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    :goto_0
    return-object v1

    .line 722
    :cond_0
    const-string v2, "recipient"

    invoke-virtual {v1, v2, p0}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    goto :goto_0
.end method

.method private static getVoiceMessagesQuery(Lcom/spiraltoys/cloudpets2/model/Profile;ZZ)Lcom/parse/ParseQuery;
    .locals 3
    .param p0, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p1, "excludeProfile"    # Z
    .param p2, "isParentalControlled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            "ZZ)",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/VoiceMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 733
    invoke-static {p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getVoiceMessagesQuery(Lcom/spiraltoys/cloudpets2/model/Profile;Z)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 735
    .local v0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/VoiceMessage;>;"
    if-eqz p2, :cond_0

    .line 736
    const-string v1, "flags"

    sget-object v2, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->VOICE_MESSAGE_FLAG_APPROVED_MESSAGE_PERMUTATIONS:[I

    invoke-static {v2}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    .line 739
    :cond_0
    return-object v0
.end method

.method private static getVoiceMessagesQuery(Lcom/spiraltoys/cloudpets2/model/Profile;ZZZ)Lcom/parse/ParseQuery;
    .locals 3
    .param p0, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p1, "excludeProfile"    # Z
    .param p2, "isParentalControlled"    # Z
    .param p3, "isSavedMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            "ZZZ)",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/VoiceMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 747
    invoke-static {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getVoiceMessagesQuery(Lcom/spiraltoys/cloudpets2/model/Profile;ZZ)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 749
    .local v0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/VoiceMessage;>;"
    if-eqz p3, :cond_0

    .line 750
    const-string v1, "flags"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    .line 755
    :goto_0
    return-object v0

    .line 752
    :cond_0
    const-string v1, "flags"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery;->whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    goto :goto_0
.end method

.method public static isAcceptedFriend(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/spiraltoys/cloudpets2/model/Profile;)Z
    .locals 4
    .param p0, "ownedProfile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p1, "friendProfile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 282
    invoke-static {v0, v1, v1, p0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getFriendsQuery(ZZZLcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;

    move-result-object v2

    const-string v3, "friends"

    invoke-virtual {v2, v3}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v2

    const-string v3, "targetProfile"

    invoke-virtual {v2, v3, p1}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v2

    const-string v3, "friends"

    invoke-virtual {v2, v3}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseQuery;->count()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static notifyChanges(Ljava/util/HashMap;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/parse/ParseObject;",
            "Ljava/util/Date;",
            ">;",
            "Ljava/util/List",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 630
    .local p0, "originalObjectModificationDates":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/parse/ParseObject;Ljava/util/Date;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<+Lcom/parse/ParseObject;>;"
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 631
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 632
    .local v1, "insertedItems":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 633
    .local v4, "updatedItems":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 635
    .local v0, "deletedItems":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 636
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 638
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseObject;

    .line 639
    .local v3, "result":Lcom/parse/ParseObject;
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    .line 641
    .local v2, "originalUpdateDate":Ljava/util/Date;
    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lcom/parse/ParseObject;->getUpdatedAt()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 642
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 646
    .end local v2    # "originalUpdateDate":Ljava/util/Date;
    .end local v3    # "result":Lcom/parse/ParseObject;
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-gtz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-gtz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 647
    :cond_2
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v5

    new-instance v6, Lcom/spiraltoys/cloudpets2/model/events/LocalDatastoreChangedEvent;

    invoke-direct {v6, v1, v4, v0}, Lcom/spiraltoys/cloudpets2/model/events/LocalDatastoreChangedEvent;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v5, v6}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 649
    :cond_3
    return-void
.end method

.method public static preFetch(Lcom/parse/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/GetCallback",
            "<",
            "Lcom/parse/ParseUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<Lcom/parse/ParseUser;>;"
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$1;-><init>(Lcom/parse/GetCallback;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllProfilesToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 79
    return-void
.end method

.method public static resendVerificationEmail(Lcom/parse/SaveCallback;)V
    .locals 12
    .param p0, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    const-wide v10, 0x40d86a0000000000L    # 25000.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 368
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->isLoggedIn()Z

    move-result v6

    if-nez v6, :cond_1

    .line 369
    new-instance v6, Lcom/parse/ParseException;

    const/16 v7, 0x77

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v6}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 374
    .local v2, "random1":D
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v6, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    .line 376
    .local v4, "random2":D
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 377
    .local v0, "currentUser":Lcom/parse/ParseUser;
    invoke-virtual {v0}, Lcom/parse/ParseUser;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "originalEmail":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parse/ParseUser;->isAuthenticated()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 380
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".com"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/parse/ParseUser;->setEmail(Ljava/lang/String;)V

    .line 381
    new-instance v6, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$8;

    invoke-direct {v6, v0, v1, p0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$8;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;Lcom/parse/SaveCallback;)V

    invoke-virtual {v0, v6}, Lcom/parse/ParseUser;->saveInBackground(Lcom/parse/SaveCallback;)V

    goto :goto_0
.end method

.method public static resolvePendingFriendRequest(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/model/FriendRecord;ZLcom/parse/FunctionCallback;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "record"    # Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    .param p2, "accept"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
            "Z",
            "Lcom/parse/FunctionCallback",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/FriendRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/parse/FunctionCallback;, "Lcom/parse/FunctionCallback<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    const/4 v3, 0x0

    .line 392
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 393
    new-instance v1, Lcom/parse/ParseException;

    const/16 v2, 0x77

    invoke-direct {v1, v2, v3}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v3, v1}, Lcom/parse/FunctionCallback;->done(Ljava/lang/Object;Lcom/parse/ParseException;)V

    .line 422
    :goto_0
    return-void

    .line 397
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 398
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "accepted"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v1, "friendRecordId"

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v1, "resolvePendingFriendRequest"

    new-instance v2, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9;

    invoke-direct {v2, p3}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9;-><init>(Lcom/parse/FunctionCallback;)V

    invoke-static {v1, v0, v2}, Lcom/parse/ParseCloud;->callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/parse/FunctionCallback;)V

    goto :goto_0
.end method

.method public static saveProfile(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 132
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$4;

    invoke-direct {v0, p1, p0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$4;-><init>(Lcom/parse/SaveCallback;Lcom/spiraltoys/cloudpets2/model/Profile;)V

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->saveInBackground(Lcom/parse/SaveCallback;)V

    .line 143
    return-void
.end method

.method public static saveVoiceMessage(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "voiceMessage"    # Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 83
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2;

    invoke-direct {v0, p1, p0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2;-><init>(Lcom/parse/SaveCallback;Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->saveInBackground(Lcom/parse/SaveCallback;)V

    .line 104
    return-void
.end method

.method public static saveVoiceMessages(Ljava/util/List;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/VoiceMessage;",
            ">;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "voiceMessages":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/VoiceMessage;>;"
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$3;

    invoke-direct {v0, p1, p0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$3;-><init>(Lcom/parse/SaveCallback;Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->saveAllInBackground(Ljava/util/List;Lcom/parse/SaveCallback;)V

    .line 129
    return-void
.end method
