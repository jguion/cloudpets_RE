.class public final enum Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;
.super Ljava/lang/Enum;
.source "ToyEventGameModeButtonPress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Button"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

.field public static final enum PLAY:Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

.field public static final enum RECORD:Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    const-string v1, "RECORD"

    invoke-direct {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;->RECORD:Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    .line 10
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    const-string v1, "PLAY"

    invoke-direct {v0, v1, v3}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;->PLAY:Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;->RECORD:Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;->PLAY:Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    aput-object v1, v0, v3

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;->$VALUES:[Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    return-object v0
.end method

.method public static values()[Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;->$VALUES:[Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    invoke-virtual {v0}, [Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    return-object v0
.end method
