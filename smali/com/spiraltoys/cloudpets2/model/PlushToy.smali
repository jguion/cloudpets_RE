.class public Lcom/spiraltoys/cloudpets2/model/PlushToy;
.super Lcom/parse/ParseObject;
.source "PlushToy.java"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "PlushToy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;
    }
.end annotation


# static fields
.field public static final CHARACTER:Ljava/lang/String; = "character"

.field public static final CONFIG_ID:Ljava/lang/String; = "configID"

.field public static final MAX_NICKNAME_LENGTH:I = 0x20

.field public static final MIN_NICKNAME_LENGTH:I = 0x1

.field public static final NICKNAME:Ljava/lang/String; = "nickName"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    .line 26
    return-void
.end method

.method public static generateCharacterId(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)Ljava/lang/String;
    .locals 5
    .param p0, "character"    # Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .prologue
    .line 86
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM_dd_HH_mm_ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "formattedDate":Ljava/lang/String;
    const-string v1, "%02x%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAppThemeResourceForCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)I
    .locals 2
    .param p0, "character"    # Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .prologue
    .line 100
    sget-object v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$1;->$SwitchMap$com$spiraltoys$cloudpets2$model$PlushToy$Character:[I

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 102
    :pswitch_0
    const v0, 0x7f0d0098

    .line 110
    :goto_0
    return v0

    .line 104
    :pswitch_1
    const v0, 0x7f0d009c

    goto :goto_0

    .line 106
    :pswitch_2
    const v0, 0x7f0d009e

    goto :goto_0

    .line 108
    :pswitch_3
    const v0, 0x7f0d009a

    goto :goto_0

    .line 110
    :pswitch_4
    const v0, 0x7f0d00a0

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getAvatarResourceForCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)I
    .locals 2
    .param p0, "character"    # Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .prologue
    .line 116
    sget-object v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$1;->$SwitchMap$com$spiraltoys$cloudpets2$model$PlushToy$Character:[I

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 118
    :pswitch_0
    const v0, 0x7f020047

    .line 126
    :goto_0
    return v0

    .line 120
    :pswitch_1
    const v0, 0x7f02004d

    goto :goto_0

    .line 122
    :pswitch_2
    const v0, 0x7f020050

    goto :goto_0

    .line 124
    :pswitch_3
    const v0, 0x7f02004a

    goto :goto_0

    .line 126
    :pswitch_4
    const v0, 0x7f020052

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getBackgroundMusicTrackForCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;
    .locals 2
    .param p0, "character"    # Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .prologue
    .line 164
    sget-object v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$1;->$SwitchMap$com$spiraltoys$cloudpets2$model$PlushToy$Character:[I

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 166
    :pswitch_0
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->BENTLEY_AMBIENT:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    .line 174
    :goto_0
    return-object v0

    .line 168
    :pswitch_1
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->CHARLEY_AMBIENT:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    goto :goto_0

    .line 170
    :pswitch_2
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->DIESEL_AMBIENT:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    goto :goto_0

    .line 172
    :pswitch_3
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->BUBBLES_AMBIENT:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    goto :goto_0

    .line 174
    :pswitch_4
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->STARBURST_AMBIENT:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getGameAvatarResourceForCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)I
    .locals 2
    .param p0, "character"    # Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .prologue
    .line 148
    sget-object v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$1;->$SwitchMap$com$spiraltoys$cloudpets2$model$PlushToy$Character:[I

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 150
    :pswitch_0
    const v0, 0x7f020058

    .line 158
    :goto_0
    return v0

    .line 152
    :pswitch_1
    const v0, 0x7f02005d

    goto :goto_0

    .line 154
    :pswitch_2
    const v0, 0x7f020062

    goto :goto_0

    .line 156
    :pswitch_3
    const v0, 0x7f02005a

    goto :goto_0

    .line 158
    :pswitch_4
    const v0, 0x7f020076

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getMessageForMeAvatarResourceForCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)I
    .locals 2
    .param p0, "character"    # Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .prologue
    .line 132
    sget-object v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$1;->$SwitchMap$com$spiraltoys$cloudpets2$model$PlushToy$Character:[I

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 134
    :pswitch_0
    const v0, 0x7f0200e2

    .line 142
    :goto_0
    return v0

    .line 136
    :pswitch_1
    const v0, 0x7f0200e4

    goto :goto_0

    .line 138
    :pswitch_2
    const v0, 0x7f0200e5

    goto :goto_0

    .line 140
    :pswitch_3
    const v0, 0x7f0200e3

    goto :goto_0

    .line 142
    :pswitch_4
    const v0, 0x7f0200e6

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static isValidCharacterId(Ljava/lang/String;)Z
    .locals 2
    .param p0, "identifier"    # Ljava/lang/String;

    .prologue
    .line 91
    if-nez p0, :cond_0

    .line 92
    const/4 v1, 0x0

    .line 95
    :goto_0
    return v1

    .line 94
    :cond_0
    const-string v0, "\\d{4}_\\d{2}_\\d{2}_\\d{2}_\\d{2}"

    .line 95
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getCharacter()Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;
    .locals 1

    .prologue
    .line 29
    const-string v0, "character"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->getCharacter(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    move-result-object v0

    return-object v0
.end method

.method public getConfigID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "configID"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "nickName"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)V
    .locals 1
    .param p1, "character"    # Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->setCharacter(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public setCharacter(Ljava/lang/String;)V
    .locals 1
    .param p1, "character"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, "character"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public setConfigID(Ljava/lang/String;)V
    .locals 1
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string v0, "configID"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 1
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v0, "nickName"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    return-void
.end method
