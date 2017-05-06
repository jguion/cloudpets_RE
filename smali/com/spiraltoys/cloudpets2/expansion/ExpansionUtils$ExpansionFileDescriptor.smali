.class public Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;
.super Ljava/lang/Object;
.source "ExpansionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpansionFileDescriptor"
.end annotation


# instance fields
.field private final mFileSize:J

.field private final mFileVersion:I

.field private final mIsMain:Z

.field private mZipResourceFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;


# direct methods
.method constructor <init>(ZIJ)V
    .locals 1
    .param p1, "isMain"    # Z
    .param p2, "fileVersion"    # I
    .param p3, "fileSize"    # J

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->mIsMain:Z

    .line 67
    iput p2, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->mFileVersion:I

    .line 68
    iput-wide p3, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->mFileSize:J

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->mIsMain:Z

    return v0
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;)I
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;

    .prologue
    .line 59
    iget v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->mFileVersion:I

    return v0
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;)J
    .locals 2
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->mFileSize:J

    return-wide v0
.end method


# virtual methods
.method public getFileSize()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->mFileSize:J

    return-wide v0
.end method

.method public getFileVersion()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->mFileVersion:I

    return v0
.end method

.method public getMainVersion()I
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->isMain()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->getFileVersion()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPatchVersion()I
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->isMain()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->getFileVersion()I

    move-result v0

    goto :goto_0
.end method

.method public getZipResourceFile(Landroid/content/Context;)Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->mZipResourceFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->getMainVersion()I

    move-result v0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->getPatchVersion()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/vending/expansion/zipfile/APKExpansionSupport;->getAPKExpansionZipFile(Landroid/content/Context;II)Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->mZipResourceFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->mZipResourceFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    return-object v0
.end method

.method public isMain()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->mIsMain:Z

    return v0
.end method
