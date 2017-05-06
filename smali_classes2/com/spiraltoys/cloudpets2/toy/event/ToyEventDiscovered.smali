.class public Lcom/spiraltoys/cloudpets2/toy/event/ToyEventDiscovered;
.super Ljava/lang/Object;
.source "ToyEventDiscovered.java"


# instance fields
.field private mDeviceAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventDiscovered;->mDeviceAddress:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventDiscovered;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method
