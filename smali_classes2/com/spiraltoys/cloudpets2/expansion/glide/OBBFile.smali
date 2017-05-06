.class public Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;
.super Ljava/lang/Object;
.source "OBBFile.java"


# instance fields
.field private final mExpansionFileDescriptor:Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;

.field private final mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "expansionFileDescriptor"    # Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;->mPath:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;->mExpansionFileDescriptor:Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;

    .line 13
    return-void
.end method


# virtual methods
.method public getExpansionFileDescriptor()Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;->mExpansionFileDescriptor:Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/glide/OBBFile;->mPath:Ljava/lang/String;

    return-object v0
.end method
