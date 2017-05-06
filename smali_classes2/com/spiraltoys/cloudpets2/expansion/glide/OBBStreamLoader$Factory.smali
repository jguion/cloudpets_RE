.class public Lcom/spiraltoys/cloudpets2/expansion/glide/OBBStreamLoader$Factory;
.super Ljava/lang/Object;
.source "OBBStreamLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/expansion/glide/OBBStreamLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
        "<",
        "Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factories"    # Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/GenericLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBStreamLoader;

    invoke-direct {v0, p1}, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBStreamLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public teardown()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
