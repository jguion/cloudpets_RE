.class public Lcom/spiraltoys/cloudpets2/expansion/glide/OBBDataFetcher;
.super Ljava/lang/Object;
.source "OBBDataFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mObbFile:Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;

.field private mObbFileStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "obbFile"    # Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBDataFetcher;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBDataFetcher;->mObbFile:Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;

    .line 21
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public cleanup()V
    .locals 2

    .prologue
    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBDataFetcher;->mObbFileStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBDataFetcher;->mObbFileStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBDataFetcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBDataFetcher;->mObbFile:Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;->getExpansionFileDescriptor()Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->getMainVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBDataFetcher;->mObbFile:Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;->getExpansionFileDescriptor()Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->getPatchVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".obb/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBDataFetcher;->mObbFile:Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;
    .locals 2
    .param p1, "priority"    # Lcom/bumptech/glide/Priority;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils;->getMainExpansionDescriptor()Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBDataFetcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->getZipResourceFile(Landroid/content/Context;)Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBDataFetcher;->mObbFile:Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBDataFetcher;->mObbFileStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public bridge synthetic loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBDataFetcher;->loadData(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
