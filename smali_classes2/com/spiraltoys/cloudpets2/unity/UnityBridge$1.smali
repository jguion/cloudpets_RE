.class synthetic Lcom/spiraltoys/cloudpets2/unity/UnityBridge$1;
.super Ljava/lang/Object;
.source "UnityBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/unity/UnityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$spiraltoys$cloudpets2$toy$event$ToyEventGameModeButtonPress$Button:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 123
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;->values()[Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge$1;->$SwitchMap$com$spiraltoys$cloudpets2$toy$event$ToyEventGameModeButtonPress$Button:[I

    :try_start_0
    sget-object v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge$1;->$SwitchMap$com$spiraltoys$cloudpets2$toy$event$ToyEventGameModeButtonPress$Button:[I

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;->RECORD:Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/spiraltoys/cloudpets2/unity/UnityBridge$1;->$SwitchMap$com$spiraltoys$cloudpets2$toy$event$ToyEventGameModeButtonPress$Button:[I

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;->PLAY:Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
