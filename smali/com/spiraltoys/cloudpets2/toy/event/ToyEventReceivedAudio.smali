.class public Lcom/spiraltoys/cloudpets2/toy/event/ToyEventReceivedAudio;
.super Ljava/lang/Object;
.source "ToyEventReceivedAudio.java"


# instance fields
.field private mLocalUri:Landroid/net/Uri;

.field private mToyIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "localUri"    # Landroid/net/Uri;
    .param p2, "toyIdentifier"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventReceivedAudio;->mLocalUri:Landroid/net/Uri;

    .line 15
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventReceivedAudio;->mToyIdentifier:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getLocalUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventReceivedAudio;->mLocalUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getToyIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventReceivedAudio;->mToyIdentifier:Ljava/lang/String;

    return-object v0
.end method
