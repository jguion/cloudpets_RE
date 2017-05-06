.class public Lcom/spiraltoys/cloudpets2/model/Lullaby;
.super Ljava/lang/Object;
.source "Lullaby.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mAudioResourceId:I

.field private mImageResourceId:I

.field private mNameResourceId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "nameResourceId"    # I
    .param p2, "imageResourceId"    # I
    .param p3, "audioResourceId"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/spiraltoys/cloudpets2/model/Lullaby;->mNameResourceId:I

    .line 16
    iput p3, p0, Lcom/spiraltoys/cloudpets2/model/Lullaby;->mAudioResourceId:I

    .line 17
    iput p2, p0, Lcom/spiraltoys/cloudpets2/model/Lullaby;->mImageResourceId:I

    .line 18
    return-void
.end method


# virtual methods
.method public getAudioResourceId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/spiraltoys/cloudpets2/model/Lullaby;->mAudioResourceId:I

    return v0
.end method

.method public getImageResourceId()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/spiraltoys/cloudpets2/model/Lullaby;->mImageResourceId:I

    return v0
.end method

.method public getNameResourceId()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/spiraltoys/cloudpets2/model/Lullaby;->mNameResourceId:I

    return v0
.end method

.method public setAudioResourceId(I)V
    .locals 0
    .param p1, "audioResourceId"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/spiraltoys/cloudpets2/model/Lullaby;->mAudioResourceId:I

    .line 34
    return-void
.end method

.method public setImageResourceId(I)V
    .locals 0
    .param p1, "imageResourceId"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/spiraltoys/cloudpets2/model/Lullaby;->mImageResourceId:I

    .line 42
    return-void
.end method

.method public setNameResourceId(I)V
    .locals 0
    .param p1, "nameResourceId"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/spiraltoys/cloudpets2/model/Lullaby;->mNameResourceId:I

    .line 26
    return-void
.end method
