.class public final enum Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;
.super Ljava/lang/Enum;
.source "ConnectionIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionIndicatorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

.field public static final enum CONNECTED:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

.field public static final enum CONNECTING:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

.field public static final enum DISCONNECTED:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

.field public static final enum SCANNING:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;->DISCONNECTED:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    .line 27
    new-instance v0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    const-string v1, "SCANNING"

    invoke-direct {v0, v1, v3}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;->SCANNING:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    .line 28
    new-instance v0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v4}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;->CONNECTING:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    .line 29
    new-instance v0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;->CONNECTED:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    sget-object v1, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;->DISCONNECTED:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;->SCANNING:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;->CONNECTING:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;->CONNECTED:Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;->$VALUES:[Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    return-object v0
.end method

.method public static values()[Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;->$VALUES:[Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    invoke-virtual {v0}, [Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spiraltoys/cloudpets2/views/ConnectionIndicatorView$ConnectionIndicatorState;

    return-object v0
.end method
