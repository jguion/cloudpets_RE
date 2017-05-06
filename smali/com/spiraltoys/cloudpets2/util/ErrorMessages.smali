.class public Lcom/spiraltoys/cloudpets2/util/ErrorMessages;
.super Ljava/lang/Object;
.source "ErrorMessages.java"


# static fields
.field private static final SERVER_ERROR_MESSAGE_DUPLICATE_FRIEND_REQUEST:Ljava/lang/String; = "That friend request has already been sent."

.field private static final SERVER_ERROR_MESSAGE_USERNAME_TAKEN:Ljava/lang/String; = "That user name is already taken."


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getStringResourceIdForCreateProfileException(Landroid/content/Context;Lcom/parse/ParseException;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ex"    # Lcom/parse/ParseException;

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/Utils;->isNetworkConnectionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f08007d

    :goto_0
    return v0

    .line 67
    :pswitch_0
    const-string v0, "That user name is already taken."

    invoke-virtual {p1}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0800a0

    goto :goto_0

    :cond_0
    const v0, 0x7f080080

    goto :goto_0

    .line 69
    :cond_1
    const v0, 0x7f080083

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x8e
        :pswitch_0
    .end packed-switch
.end method

.method public static getStringResourceIdForErrorFetchingVoiceMessage(Landroid/content/Context;Ljava/lang/Exception;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 34
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/Utils;->isNetworkConnectionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const v0, 0x7f080081

    .line 37
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f080082

    goto :goto_0
.end method

.method public static getStringResourceIdForErrorResettingPassword(Landroid/content/Context;Lcom/parse/ParseException;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ex"    # Lcom/parse/ParseException;

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    const/16 v1, 0xcd

    if-ne v0, v1, :cond_0

    .line 83
    const v0, 0x7f080089

    .line 87
    :goto_0
    return v0

    .line 84
    :cond_0
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/Utils;->isNetworkConnectionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const v0, 0x7f080088

    goto :goto_0

    .line 87
    :cond_1
    const v0, 0x7f080087

    goto :goto_0
.end method

.method public static getStringResourceIdForErrorSendingFriendRequest(Landroid/content/Context;Lcom/parse/ParseException;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ex"    # Lcom/parse/ParseException;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/Utils;->isNetworkConnectionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "That friend request has already been sent."

    invoke-virtual {p1}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080094

    .line 95
    :goto_0
    return v0

    .line 93
    :cond_0
    const v0, 0x7f080096

    goto :goto_0

    .line 95
    :cond_1
    const v0, 0x7f080095

    goto :goto_0
.end method

.method public static getStringResourceIdForErrorSendingVerificationEmail(Landroid/content/Context;Lcom/parse/ParseException;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ex"    # Lcom/parse/ParseException;

    .prologue
    .line 74
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/Utils;->isNetworkConnectionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const v0, 0x7f0800a2

    .line 77
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0800a1

    goto :goto_0
.end method

.method public static getStringResourceIdForErrorSendingVoiceMessage(Landroid/content/Context;Lcom/parse/ParseException;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ex"    # Lcom/parse/ParseException;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/Utils;->isNetworkConnectionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const v0, 0x7f080084

    .line 25
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f080083

    goto :goto_0
.end method

.method public static getStringResourceIdForGenericParseExceiption(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/Utils;->isNetworkConnectionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const v0, 0x7f080085

    .line 103
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f080086

    goto :goto_0
.end method

.method public static getStringResourceIdForIOException(Ljava/io/IOException;)I
    .locals 1
    .param p0, "ex"    # Ljava/io/IOException;

    .prologue
    .line 30
    const v0, 0x7f08007d

    return v0
.end method

.method public static getStringResourceIdForLoginException(Landroid/content/Context;Lcom/parse/ParseException;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ex"    # Lcom/parse/ParseException;

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 43
    const v0, 0x7f08007f

    .line 47
    :goto_0
    return v0

    .line 44
    :cond_0
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/Utils;->isNetworkConnectionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    const v0, 0x7f08007d

    goto :goto_0

    .line 47
    :cond_1
    const v0, 0x7f080087

    goto :goto_0
.end method

.method public static getStringResourceIdForSignupException(Landroid/content/Context;Lcom/parse/ParseException;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ex"    # Lcom/parse/ParseException;

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 60
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/util/Utils;->isNetworkConnectionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f08007d

    :goto_0
    return v0

    .line 54
    :sswitch_0
    const v0, 0x7f080079

    goto :goto_0

    .line 56
    :sswitch_1
    const-string v0, "That user name is already taken."

    invoke-virtual {p1}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0800a0

    goto :goto_0

    :cond_0
    const v0, 0x7f080080

    goto :goto_0

    .line 58
    :sswitch_2
    const v0, 0x7f0801c2

    goto :goto_0

    .line 60
    :cond_1
    const v0, 0x7f080083

    goto :goto_0

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x8d -> :sswitch_2
        0x8e -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch
.end method
