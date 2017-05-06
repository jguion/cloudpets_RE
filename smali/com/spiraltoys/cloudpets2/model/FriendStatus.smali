.class public final enum Lcom/spiraltoys/cloudpets2/model/FriendStatus;
.super Ljava/lang/Enum;
.source "FriendStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spiraltoys/cloudpets2/model/FriendStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spiraltoys/cloudpets2/model/FriendStatus;

.field public static final enum ACCEPTED:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

.field public static final enum PENDING:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

.field public static final enum REJECTED:Lcom/spiraltoys/cloudpets2/model/FriendStatus;


# instance fields
.field private mModelName:Ljava/lang/String;

.field private mStringResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    const-string v1, "PENDING"

    const v2, 0x7f0800ab

    const-string v3, "Pending"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/spiraltoys/cloudpets2/model/FriendStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->PENDING:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    .line 15
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    const-string v1, "ACCEPTED"

    const v2, 0x7f0800aa

    const-string v3, "Accepted"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/spiraltoys/cloudpets2/model/FriendStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->ACCEPTED:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    .line 16
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    const-string v1, "REJECTED"

    const v2, 0x7f0800ac

    const-string v3, "Rejected"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/spiraltoys/cloudpets2/model/FriendStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->REJECTED:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->PENDING:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->ACCEPTED:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->REJECTED:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->$VALUES:[Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "stringResId"    # I
    .param p4, "modelName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->mStringResId:I

    .line 23
    iput-object p4, p0, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->mModelName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static fromLocalizedString(Landroid/content/Context;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/FriendStatus;
    .locals 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "localizedName"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->values()[Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 43
    .local v0, "status":Lcom/spiraltoys/cloudpets2/model/FriendStatus;
    invoke-virtual {v0, p0}, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    .end local v0    # "status":Lcom/spiraltoys/cloudpets2/model/FriendStatus;
    :goto_1
    return-object v0

    .line 42
    .restart local v0    # "status":Lcom/spiraltoys/cloudpets2/model/FriendStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "status":Lcom/spiraltoys/cloudpets2/model/FriendStatus;
    :cond_1
    sget-object v0, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->PENDING:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    goto :goto_1
.end method

.method public static fromModelName(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/FriendStatus;
    .locals 5
    .param p0, "modelName"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->values()[Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 36
    .local v0, "status":Lcom/spiraltoys/cloudpets2/model/FriendStatus;
    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->getModelName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    .end local v0    # "status":Lcom/spiraltoys/cloudpets2/model/FriendStatus;
    :goto_1
    return-object v0

    .line 35
    .restart local v0    # "status":Lcom/spiraltoys/cloudpets2/model/FriendStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v0    # "status":Lcom/spiraltoys/cloudpets2/model/FriendStatus;
    :cond_1
    sget-object v0, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->PENDING:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/FriendStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    return-object v0
.end method

.method public static values()[Lcom/spiraltoys/cloudpets2/model/FriendStatus;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->$VALUES:[Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    invoke-virtual {v0}, [Lcom/spiraltoys/cloudpets2/model/FriendStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    return-object v0
.end method


# virtual methods
.method public getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->mModelName:Ljava/lang/String;

    return-object v0
.end method

.method public getString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 27
    iget v0, p0, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->mStringResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
