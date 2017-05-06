.class public Lcom/spiraltoys/cloudpets2/toy/event/ToyEventUpdateProgress;
.super Ljava/lang/Object;
.source "ToyEventUpdateProgress.java"


# instance fields
.field private mPercentage:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "percentage"    # F

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventUpdateProgress;->mPercentage:F

    .line 12
    return-void
.end method


# virtual methods
.method public getPercentage()F
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventUpdateProgress;->mPercentage:F

    return v0
.end method
