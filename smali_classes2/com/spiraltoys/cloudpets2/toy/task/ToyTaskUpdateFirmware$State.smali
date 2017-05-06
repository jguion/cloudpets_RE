.class final enum Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;
.super Ljava/lang/Enum;
.source "ToyTaskUpdateFirmware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

.field public static final enum IDLE:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

.field public static final enum INVALID:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

.field public static final enum LOAD:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

.field public static final enum VALID:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

.field public static final enum VERIFY:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

.field public static final enum WRITE:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->IDLE:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    .line 39
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    const-string v1, "LOAD"

    invoke-direct {v0, v1, v4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->LOAD:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    .line 40
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    const-string v1, "VERIFY"

    invoke-direct {v0, v1, v5}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->VERIFY:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    .line 41
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    const-string v1, "VALID"

    invoke-direct {v0, v1, v6}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->VALID:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    .line 42
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v7}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->INVALID:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    .line 43
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    const-string v1, "WRITE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->WRITE:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->IDLE:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->LOAD:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->VERIFY:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->VALID:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->INVALID:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->WRITE:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->$VALUES:[Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    return-object v0
.end method

.method public static values()[Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->$VALUES:[Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    invoke-virtual {v0}, [Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    return-object v0
.end method
