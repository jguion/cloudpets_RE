.class public Lcom/spiraltoys/cloudpets2/expansion/glide/OBBGlideModule;
.super Ljava/lang/Object;
.source "OBBGlideModule.java"

# interfaces
.implements Lcom/bumptech/glide/module/GlideModule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "builder"    # Lcom/bumptech/glide/GlideBuilder;

    .prologue
    .line 15
    return-void
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "glide"    # Lcom/bumptech/glide/Glide;

    .prologue
    .line 19
    const-class v0, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBStreamLoader$Factory;

    invoke-direct {v2}, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBStreamLoader$Factory;-><init>()V

    invoke-virtual {p2, v0, v1, v2}, Lcom/bumptech/glide/Glide;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 20
    return-void
.end method
