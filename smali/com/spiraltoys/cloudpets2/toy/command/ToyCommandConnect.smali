.class public Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;
.super Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;
.source "ToyCommandConnect.java"


# instance fields
.field private mAcceptAudio:Z

.field private mAddress:Ljava/lang/String;

.field private mIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "acceptAudio"    # Z

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommand;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->mIdentifier:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->mAddress:Ljava/lang/String;

    .line 21
    iput-boolean p3, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->mAcceptAudio:Z

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 38
    instance-of v2, p1, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    if-nez v2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 42
    check-cast v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;

    .line 44
    .local v0, "other":Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->mIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 45
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->mIdentifier:Ljava/lang/String;

    iget-object v3, v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    :cond_2
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->mAddress:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 53
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->mAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    :cond_3
    iget-boolean v2, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->mAcceptAudio:Z

    iget-boolean v3, v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->mAcceptAudio:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 48
    :cond_4
    iget-object v2, v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->mIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 56
    :cond_5
    iget-object v2, v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->mAddress:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public newTask(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 65
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskConnect;

    invoke-direct {v0, p2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskConnect;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    return-object v0
.end method

.method public shouldAcceptAudio()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandConnect;->mAcceptAudio:Z

    return v0
.end method
