.class public Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;
.super Ljava/lang/Object;
.source "ToyEventRequiresUpdate.java"


# instance fields
.field private mToyIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "toyIdentifier"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;->mToyIdentifier:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getToyIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;->mToyIdentifier:Ljava/lang/String;

    return-object v0
.end method
