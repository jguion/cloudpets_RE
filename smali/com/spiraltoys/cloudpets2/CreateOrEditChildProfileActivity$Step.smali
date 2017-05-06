.class final enum Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;
.super Ljava/lang/Enum;
.source "CreateOrEditChildProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Step"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

.field public static final enum CONFIGURE_PROFILE:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

.field public static final enum CONFIGURE_TOY:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

.field public static final enum CONFIGURE_TOY_COMPLETE_CONNECTION:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

.field public static final enum CONFIGURE_TOY_ERROR:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

.field public static final enum REQUEST_BLE_PERMISSION:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

.field public static final enum SELECT_CHARACTER:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    new-instance v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    const-string v1, "SELECT_CHARACTER"

    invoke-direct {v0, v1, v3}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->SELECT_CHARACTER:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    .line 71
    new-instance v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    const-string v1, "CONFIGURE_TOY"

    invoke-direct {v0, v1, v4}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->CONFIGURE_TOY:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    .line 72
    new-instance v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    const-string v1, "CONFIGURE_TOY_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->CONFIGURE_TOY_ERROR:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    .line 73
    new-instance v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    const-string v1, "REQUEST_BLE_PERMISSION"

    invoke-direct {v0, v1, v6}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->REQUEST_BLE_PERMISSION:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    .line 74
    new-instance v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    const-string v1, "CONFIGURE_TOY_COMPLETE_CONNECTION"

    invoke-direct {v0, v1, v7}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->CONFIGURE_TOY_COMPLETE_CONNECTION:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    .line 75
    new-instance v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    const-string v1, "CONFIGURE_PROFILE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->CONFIGURE_PROFILE:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    .line 69
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    sget-object v1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->SELECT_CHARACTER:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->CONFIGURE_TOY:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->CONFIGURE_TOY_ERROR:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    aput-object v1, v0, v5

    sget-object v1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->REQUEST_BLE_PERMISSION:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    aput-object v1, v0, v6

    sget-object v1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->CONFIGURE_TOY_COMPLETE_CONNECTION:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->CONFIGURE_PROFILE:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    aput-object v2, v0, v1

    sput-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->$VALUES:[Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    const-class v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    return-object v0
.end method

.method public static values()[Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->$VALUES:[Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    invoke-virtual {v0}, [Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    return-object v0
.end method
