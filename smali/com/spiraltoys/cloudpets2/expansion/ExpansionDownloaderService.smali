.class public Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderService;
.super Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;
.source "ExpansionDownloaderService.java"


# static fields
.field private static final SALT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderService;->SALT:[B

    return-void

    :array_0
    .array-data 1
        0xct
        0x16t
        -0x20t
        -0x2at
        0x34t
        0x3et
        -0x48t
        -0x52t
        0x5ct
        0x2t
        -0x2t
        -0x5t
        0x7t
        0x8t
        -0x64t
        -0x68t
        -0x22t
        0x2ct
        -0x4t
        0x54t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmReceiverClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionAlarmReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f0801ca

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderService;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSALT()[B
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/spiraltoys/cloudpets2/expansion/ExpansionDownloaderService;->SALT:[B

    return-object v0
.end method
