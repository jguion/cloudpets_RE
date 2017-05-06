.class public Lcom/spiraltoys/cloudpets2/events/LullabyClickedEvent;
.super Ljava/lang/Object;
.source "LullabyClickedEvent.java"


# instance fields
.field private mLullaby:Lcom/spiraltoys/cloudpets2/model/Lullaby;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/model/Lullaby;)V
    .locals 0
    .param p1, "lullaby"    # Lcom/spiraltoys/cloudpets2/model/Lullaby;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/events/LullabyClickedEvent;->mLullaby:Lcom/spiraltoys/cloudpets2/model/Lullaby;

    .line 14
    return-void
.end method


# virtual methods
.method public getLullaby()Lcom/spiraltoys/cloudpets2/model/Lullaby;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/events/LullabyClickedEvent;->mLullaby:Lcom/spiraltoys/cloudpets2/model/Lullaby;

    return-object v0
.end method
