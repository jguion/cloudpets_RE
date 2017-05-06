.class public final enum Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;
.super Ljava/lang/Enum;
.source "ToyUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/toy/ToyUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WriteSpeed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;

.field public static final enum FAST:Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;

.field public static final enum MEDIUM:Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;

.field public static final enum SLOW:Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;

    const-string v1, "SLOW"

    invoke-direct {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;->SLOW:Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;

    .line 13
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;->MEDIUM:Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;

    .line 14
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;

    const-string v1, "FAST"

    invoke-direct {v0, v1, v4}, Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;->FAST:Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;->SLOW:Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;->MEDIUM:Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;->FAST:Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;

    aput-object v1, v0, v4

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;->$VALUES:[Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;

    return-object v0
.end method

.method public static values()[Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;->$VALUES:[Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;

    invoke-virtual {v0}, [Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spiraltoys/cloudpets2/toy/ToyUtil$WriteSpeed;

    return-object v0
.end method
