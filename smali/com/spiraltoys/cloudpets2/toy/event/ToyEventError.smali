.class public Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;
.super Ljava/lang/Object;
.source "ToyEventError.java"


# instance fields
.field private mMessage:Ljava/lang/String;

.field private final mToyCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

.field private mToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyState;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/String;)V
    .locals 0
    .param p1, "toyState"    # Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .param p2, "toyCommandIdentifier"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;->mToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    .line 17
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;->mToyCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 18
    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;->mMessage:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getToyCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;->mToyCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    return-object v0
.end method

.method public getToyState()Lcom/spiraltoys/cloudpets2/toy/ToyState;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;->mToyState:Lcom/spiraltoys/cloudpets2/toy/ToyState;

    return-object v0
.end method
