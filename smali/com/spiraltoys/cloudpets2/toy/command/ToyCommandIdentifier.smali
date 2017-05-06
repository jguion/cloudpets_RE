.class public Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
.super Ljava/lang/Object;
.source "ToyCommandIdentifier.java"


# instance fields
.field private mClass:Ljava/lang/Class;

.field private mUUID:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .param p1, "aClass"    # Ljava/lang/Class;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;->mUUID:Ljava/util/UUID;

    .line 14
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;->mClass:Ljava/lang/Class;

    .line 15
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 23
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 28
    :goto_0
    return v1

    .line 24
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 26
    check-cast v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 28
    .local v0, "that":Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;->mUUID:Ljava/util/UUID;

    iget-object v2, v0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;->mUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getEventClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    return v0
.end method
