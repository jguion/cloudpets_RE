.class public Lcom/spiraltoys/cloudpets2/events/NetworkStateChangedEvent;
.super Ljava/lang/Object;
.source "NetworkStateChangedEvent.java"


# instance fields
.field private mIsConnected:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isConnected"    # Z

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/events/NetworkStateChangedEvent;->mIsConnected:Z

    .line 9
    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/events/NetworkStateChangedEvent;->mIsConnected:Z

    return v0
.end method
