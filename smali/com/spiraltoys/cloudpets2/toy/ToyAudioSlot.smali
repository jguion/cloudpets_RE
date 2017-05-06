.class public final enum Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;
.super Ljava/lang/Enum;
.source "ToyAudioSlot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

.field public static final enum STREAMING:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

.field public static final enum UPLOAD_1:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

.field public static final enum UPLOAD_2:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

.field public static final enum UPLOAD_3:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

.field public static final enum UPLOAD_4:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    const-string v1, "STREAMING"

    invoke-direct {v0, v1, v2, v2}, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->STREAMING:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    .line 8
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    const-string v1, "UPLOAD_1"

    invoke-direct {v0, v1, v3, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->UPLOAD_1:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    .line 9
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    const-string v1, "UPLOAD_2"

    invoke-direct {v0, v1, v4, v4}, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->UPLOAD_2:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    .line 10
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    const-string v1, "UPLOAD_3"

    invoke-direct {v0, v1, v5, v5}, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->UPLOAD_3:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    .line 11
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    const-string v1, "UPLOAD_4"

    invoke-direct {v0, v1, v6, v6}, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->UPLOAD_4:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->STREAMING:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->UPLOAD_1:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->UPLOAD_2:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->UPLOAD_3:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    aput-object v1, v0, v5

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->UPLOAD_4:Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    aput-object v1, v0, v6

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->$VALUES:[Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->mValue:I

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    return-object v0
.end method

.method public static values()[Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->$VALUES:[Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    invoke-virtual {v0}, [Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyAudioSlot;->mValue:I

    return v0
.end method
