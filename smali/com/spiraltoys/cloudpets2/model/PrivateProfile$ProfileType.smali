.class public final enum Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;
.super Ljava/lang/Enum;
.source "PrivateProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/model/PrivateProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

.field public static final enum ADULT:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

.field public static final enum CHILD:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    const-string v1, "ADULT"

    const-string v2, "Adult"

    invoke-direct {v0, v1, v3, v2}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->ADULT:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    new-instance v0, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    const-string v1, "CHILD"

    const-string v2, "Child"

    invoke-direct {v0, v1, v4, v2}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->CHILD:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->ADULT:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->CHILD:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->$VALUES:[Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->mValue:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public static getProfileType(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;
    .locals 5
    .param p0, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->values()[Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 83
    .local v0, "profileType":Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;
    iget-object v4, v0, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->mValue:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    return-object v0

    .line 82
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "profileType":Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v0, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    return-object v0
.end method

.method public static values()[Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->$VALUES:[Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    invoke-virtual {v0}, [Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->mValue:Ljava/lang/String;

    return-object v0
.end method
