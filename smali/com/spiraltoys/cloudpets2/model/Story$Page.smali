.class public Lcom/spiraltoys/cloudpets2/model/Story$Page;
.super Ljava/lang/Object;
.source "Story.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/model/Story;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Page"
.end annotation


# instance fields
.field private mAudioPath:Ljava/lang/String;

.field private mImagePath:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method


# virtual methods
.method public getAudioPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/Story$Page;->mAudioPath:Ljava/lang/String;

    return-object v0
.end method

.method public getImageInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    :try_start_0
    invoke-static {}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils;->getMainExpansionDescriptor()Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->getZipResourceFile(Landroid/content/Context;)Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/model/Story$Page;->mImagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 124
    :goto_0
    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 124
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/Story$Page;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/Story$Page;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected setAudioPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "audioPath"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/Story$Page;->mAudioPath:Ljava/lang/String;

    .line 136
    return-void
.end method

.method protected setImagePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/Story$Page;->mImagePath:Ljava/lang/String;

    .line 128
    return-void
.end method

.method protected setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/Story$Page;->mText:Ljava/lang/String;

    .line 112
    return-void
.end method
