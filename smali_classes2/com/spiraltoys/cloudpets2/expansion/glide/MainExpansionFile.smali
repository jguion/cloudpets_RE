.class public Lcom/spiraltoys/cloudpets2/expansion/glide/MainExpansionFile;
.super Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;
.source "MainExpansionFile.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-static {}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils;->getMainExpansionDescriptor()Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;-><init>(Ljava/lang/String;Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;)V

    .line 9
    return-void
.end method
