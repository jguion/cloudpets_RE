.class public Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
.super Lcom/parse/ParseObject;
.source "VoiceMessage.java"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "VoiceMessage"
.end annotation


# static fields
.field public static final CREATION_DATE:Ljava/lang/String; = "createdAt"

.field public static final FILE:Ljava/lang/String; = "file"

.field public static final FLAGS:Ljava/lang/String; = "flags"

.field public static final IS_PARENT_VIEWED:Ljava/lang/String; = "isParentViewed"

.field public static final LOCAL_FILENAME:Ljava/lang/String; = "localFilename"

.field public static final RECIPIENT:Ljava/lang/String; = "recipient"

.field public static final SENDER:Ljava/lang/String; = "sender"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final USER:Ljava/lang/String; = "user"

.field public static final VOICE_MESSAGE_FLAG_APPROVED:I = 0x2

.field public static final VOICE_MESSAGE_FLAG_APPROVED_MESSAGE_PERMUTATIONS:[I

.field public static final VOICE_MESSAGE_FLAG_REJECTED:I = 0x4

.field public static final VOICE_MESSAGE_FLAG_SAVED:I = 0x8

.field public static final VOICE_MESSAGE_FLAG_VALID_NEW_MESSAGE_PERMUTATIONS:[I

.field public static final VOICE_MESSAGE_FLAG_VIEWED:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->VOICE_MESSAGE_FLAG_VALID_NEW_MESSAGE_PERMUTATIONS:[I

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->VOICE_MESSAGE_FLAG_APPROVED_MESSAGE_PERMUTATIONS:[I

    return-void

    .line 22
    :array_0
    .array-data 4
        0x0
        0x2
        0x4
        0x8
        0xa
        0xc
        0x6
        0xe
    .end array-data

    .line 32
    :array_1
    .array-data 4
        0x2
        0x3
        0xa
        0xb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile()Lcom/parse/ParseFile;
    .locals 1

    .prologue
    .line 52
    const-string v0, "file"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getParseFile(Ljava/lang/String;)Lcom/parse/ParseFile;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 60
    const-string v0, "flags"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLocalFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "localFilename"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecipient()Lcom/spiraltoys/cloudpets2/model/Profile;
    .locals 1

    .prologue
    .line 76
    const-string v0, "recipient"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/Profile;

    return-object v0
.end method

.method public getRelativeCreationDateString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Lcom/spiraltoys/cloudpets2/model/Profile;
    .locals 1

    .prologue
    .line 84
    const-string v0, "sender"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/Profile;

    return-object v0
.end method

.method public getType()Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;
    .locals 1

    .prologue
    .line 92
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->getProfileType(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcom/parse/ParseUser;
    .locals 1

    .prologue
    .line 100
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getParseUser(Ljava/lang/String;)Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method public isApproved()Z
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLessThanAMinuteOld()Z
    .locals 4

    .prologue
    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getCreatedAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isParentViewed()Z
    .locals 1

    .prologue
    .line 120
    const-string v0, "isParentViewed"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRejected()Z
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaved()Z
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 108
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setApproved(Z)V
    .locals 1
    .param p1, "isApproved"    # Z

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setFlags(I)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setFlags(I)V

    goto :goto_0
.end method

.method public setFile(Lcom/parse/ParseFile;)V
    .locals 1
    .param p1, "file"    # Lcom/parse/ParseFile;

    .prologue
    .line 56
    const-string v0, "file"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public setFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 64
    const-string v0, "flags"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public setLocalFilename(Ljava/lang/String;)V
    .locals 1
    .param p1, "localFilename"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "localFilename"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public setParentViewed(Z)V
    .locals 2
    .param p1, "isParentViewed"    # Z

    .prologue
    .line 124
    const-string v0, "isParentViewed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public setRecipient(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 1
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 80
    const-string v0, "recipient"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public setRejected(Z)V
    .locals 1
    .param p1, "isRejected"    # Z

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setFlags(I)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setFlags(I)V

    goto :goto_0
.end method

.method public setSaved(Z)V
    .locals 1
    .param p1, "isSaved"    # Z

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setFlags(I)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x9

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setFlags(I)V

    goto :goto_0
.end method

.method public setSender(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 1
    .param p1, "sender"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 88
    const-string v0, "sender"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public setType(Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;)V
    .locals 2
    .param p1, "type"    # Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    .prologue
    .line 96
    const-string v0, "type"

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public setUser(Lcom/parse/ParseUser;)V
    .locals 1
    .param p1, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 104
    const-string v0, "user"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public setViewed(Z)V
    .locals 1
    .param p1, "isViewed"    # Z

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setFlags(I)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setFlags(I)V

    goto :goto_0
.end method
