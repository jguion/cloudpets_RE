.class public final enum Lcom/spiraltoys/cloudpets2/model/FriendRelationship;
.super Ljava/lang/Enum;
.source "FriendRelationship.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spiraltoys/cloudpets2/model/FriendRelationship;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

.field public static final enum AUNT:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

.field public static final enum COUSIN:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

.field public static final enum FATHER:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

.field public static final enum GRANDFATHER:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

.field public static final enum GRANDMOTHER:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

.field public static final enum MOTHER:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

.field public static final enum OTHER:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

.field public static final enum UNCLE:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;


# instance fields
.field private mModelName:Ljava/lang/String;

.field private mStringResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 14
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    const-string v1, "MOTHER"

    const v2, 0x7f08012c

    const-string v3, "Mother"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->MOTHER:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    .line 15
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    const-string v1, "FATHER"

    const v2, 0x7f080129

    const-string v3, "Father"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->FATHER:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    .line 16
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    const-string v1, "GRANDMOTHER"

    const v2, 0x7f08012b

    const-string v3, "Grandmother"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->GRANDMOTHER:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    .line 17
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    const-string v1, "GRANDFATHER"

    const v2, 0x7f08012a

    const-string v3, "Grandfather"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->GRANDFATHER:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    .line 18
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    const-string v1, "AUNT"

    const v2, 0x7f080127

    const-string v3, "Aunt"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->AUNT:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    .line 19
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    const-string v1, "UNCLE"

    const/4 v2, 0x5

    const v3, 0x7f08012e

    const-string v4, "Uncle"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->UNCLE:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    .line 20
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    const-string v1, "COUSIN"

    const/4 v2, 0x6

    const v3, 0x7f080128

    const-string v4, "Cousin"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->COUSIN:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    .line 21
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    const-string v1, "OTHER"

    const/4 v2, 0x7

    const v3, 0x7f08012d

    const-string v4, "Other"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->OTHER:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    .line 12
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->MOTHER:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    aput-object v1, v0, v5

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->FATHER:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    aput-object v1, v0, v6

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->GRANDMOTHER:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    aput-object v1, v0, v7

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->GRANDFATHER:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    aput-object v1, v0, v8

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->AUNT:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->UNCLE:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->COUSIN:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->OTHER:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    aput-object v2, v0, v1

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->$VALUES:[Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->mStringResId:I

    .line 28
    iput-object p4, p0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->mModelName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static fromLocalizedString(Landroid/content/Context;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/FriendRelationship;
    .locals 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "localizedName"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->values()[Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 48
    .local v0, "r":Lcom/spiraltoys/cloudpets2/model/FriendRelationship;
    invoke-virtual {v0, p0}, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->getLocalizedString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    .end local v0    # "r":Lcom/spiraltoys/cloudpets2/model/FriendRelationship;
    :goto_1
    return-object v0

    .line 47
    .restart local v0    # "r":Lcom/spiraltoys/cloudpets2/model/FriendRelationship;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "r":Lcom/spiraltoys/cloudpets2/model/FriendRelationship;
    :cond_1
    sget-object v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->OTHER:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    goto :goto_1
.end method

.method public static fromModelName(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/FriendRelationship;
    .locals 5
    .param p0, "modelName"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->values()[Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 41
    .local v0, "r":Lcom/spiraltoys/cloudpets2/model/FriendRelationship;
    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->getModelName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    .end local v0    # "r":Lcom/spiraltoys/cloudpets2/model/FriendRelationship;
    :goto_1
    return-object v0

    .line 40
    .restart local v0    # "r":Lcom/spiraltoys/cloudpets2/model/FriendRelationship;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "r":Lcom/spiraltoys/cloudpets2/model/FriendRelationship;
    :cond_1
    sget-object v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->OTHER:Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/FriendRelationship;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    return-object v0
.end method

.method public static values()[Lcom/spiraltoys/cloudpets2/model/FriendRelationship;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->$VALUES:[Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    invoke-virtual {v0}, [Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    return-object v0
.end method


# virtual methods
.method public getLocalizedString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 32
    iget v0, p0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->mStringResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->mModelName:Ljava/lang/String;

    return-object v0
.end method
