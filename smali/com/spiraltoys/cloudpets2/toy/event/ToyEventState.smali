.class public Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;
.super Ljava/lang/Object;
.source "ToyEventState.java"


# instance fields
.field private mDeviceAddress:Ljava/lang/String;

.field private mState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

.field private mToyIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/spiraltoys/cloudpets2/toy/ToyState;)V
    .locals 0
    .param p1, "toyIdentifier"    # Ljava/lang/String;
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->mToyIdentifier:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->mDeviceAddress:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->mState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 18
    return-void
.end method


# virtual methods
.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->mState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    return-object v0
.end method

.method public getToyIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;->mToyIdentifier:Ljava/lang/String;

    return-object v0
.end method
