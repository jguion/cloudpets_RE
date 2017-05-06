.class public final enum Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;
.super Ljava/lang/Enum;
.source "PlushToy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/model/PlushToy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Character"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

.field public static final enum BENTLEY_THE_BEAR:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

.field public static final enum BUBBLES_THE_BUNNY:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

.field public static final enum CHARLEY_THE_CAT:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

.field public static final enum DIESEL_THE_DOG:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

.field public static final enum STARBURST_THE_UNICORN:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;


# instance fields
.field mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    const-string v1, "BENTLEY_THE_BEAR"

    const-string v2, "BentleyTheBear"

    invoke-direct {v0, v1, v3, v2}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->BENTLEY_THE_BEAR:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .line 58
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    const-string v1, "CHARLEY_THE_CAT"

    const-string v2, "CharleyTheCat"

    invoke-direct {v0, v1, v4, v2}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->CHARLEY_THE_CAT:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .line 59
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    const-string v1, "DIESEL_THE_DOG"

    const-string v2, "DieselTheDog"

    invoke-direct {v0, v1, v5, v2}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->DIESEL_THE_DOG:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .line 60
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    const-string v1, "BUBBLES_THE_BUNNY"

    const-string v2, "BubblesTheBunny"

    invoke-direct {v0, v1, v6, v2}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->BUBBLES_THE_BUNNY:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .line 61
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    const-string v1, "STARBURST_THE_UNICORN"

    const-string v2, "StarburstTheUnicorn"

    invoke-direct {v0, v1, v7, v2}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->STARBURST_THE_UNICORN:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->BENTLEY_THE_BEAR:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->CHARLEY_THE_CAT:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->DIESEL_THE_DOG:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    aput-object v1, v0, v5

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->BUBBLES_THE_BUNNY:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    aput-object v1, v0, v6

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->STARBURST_THE_UNICORN:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    aput-object v1, v0, v7

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->$VALUES:[Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "stringValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->mValue:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static getCharacter(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;
    .locals 5
    .param p0, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->values()[Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 76
    .local v0, "character":Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;
    iget-object v4, v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->mValue:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    .end local v0    # "character":Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;
    :goto_1
    return-object v0

    .line 75
    .restart local v0    # "character":Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "character":Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;
    :cond_1
    sget-object v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->BENTLEY_THE_BEAR:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    return-object v0
.end method

.method public static values()[Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->$VALUES:[Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-virtual {v0}, [Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->mValue:Ljava/lang/String;

    return-object v0
.end method
