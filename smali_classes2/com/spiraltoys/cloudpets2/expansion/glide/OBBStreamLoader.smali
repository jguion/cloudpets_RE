.class public Lcom/spiraltoys/cloudpets2/expansion/glide/OBBStreamLoader;
.super Ljava/lang/Object;
.source "OBBStreamLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/stream/StreamModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/expansion/glide/OBBStreamLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/stream/StreamModelLoader",
        "<",
        "Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBStreamLoader;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public getResourceFetcher(Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 2
    .param p1, "model"    # Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;",
            "II)",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBDataFetcher;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBStreamLoader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBDataFetcher;-><init>(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;)V

    return-object v0
.end method

.method public bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBStreamLoader;->getResourceFetcher(Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v0

    return-object v0
.end method
