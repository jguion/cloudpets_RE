.class public Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils;
.super Ljava/lang/Object;
.source "ExpansionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;
    }
.end annotation


# static fields
.field public static final EXPANSION_FILE_DESCRIPTORS:[Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 22
    new-array v0, v6, [Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;

    const/4 v1, 0x0

    new-instance v2, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;

    const/16 v3, 0x59

    const-wide/32 v4, 0x23ae25c

    invoke-direct {v2, v6, v3, v4, v5}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;-><init>(ZIJ)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils;->EXPANSION_FILE_DESCRIPTORS:[Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expansionFilesDelivered(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 47
    sget-object v4, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils;->EXPANSION_FILE_DESCRIPTORS:[Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 48
    .local v0, "expansionFileDescriptor":Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;
    # getter for: Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->mIsMain:Z
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->access$000(Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;)Z

    move-result v6

    # getter for: Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->mFileVersion:I
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->access$100(Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;)I

    move-result v7

    invoke-static {p0, v6, v7}, Lcom/google/android/vending/expansion/downloader/Helpers;->getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "fileName":Ljava/lang/String;
    # getter for: Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->mFileSize:J
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;->access$200(Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;)J

    move-result-wide v6

    invoke-static {p0, v1, v6, v7, v2}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 52
    .end local v0    # "expansionFileDescriptor":Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;
    .end local v1    # "fileName":Ljava/lang/String;
    :goto_1
    return v2

    .line 47
    .restart local v0    # "expansionFileDescriptor":Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;
    .restart local v1    # "fileName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "expansionFileDescriptor":Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static getMainExpansionDescriptor()Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils;->EXPANSION_FILE_DESCRIPTORS:[Lcom/spiraltoys/cloudpets2/expansion/ExpansionUtils$ExpansionFileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method
