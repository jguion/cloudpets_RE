.class public Lcom/spiraltoys/cloudpets2/toy/event/ToyEventCommandSucceeded;
.super Ljava/lang/Object;
.source "ToyEventCommandSucceeded.java"


# instance fields
.field private mCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;)V
    .locals 0
    .param p1, "toyCommandIdentifier"    # Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventCommandSucceeded;->mCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 13
    return-void
.end method


# virtual methods
.method public getCommandIdentifier()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventCommandSucceeded;->mCommandIdentifier:Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    return-object v0
.end method
