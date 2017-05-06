.class public Lcom/spiraltoys/cloudpets2/toy/ToyScanner;
.super Ljava/lang/Object;
.source "ToyScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/toy/ToyScanner$Listener;
    }
.end annotation


# static fields
.field public static final MANUFACTURER_ID:I = 0xffff

.field private static sValidNames:[Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mCrashResolver:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

.field private mIsScanning:Z

.field private mListener:Lcom/spiraltoys/cloudpets2/toy/ToyScanner$Listener;

.field private mPeripheralList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;",
            ">;"
        }
    .end annotation
.end field

.field private mScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 153
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CloudPets"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Cloud Pets"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->sValidNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/toy/ToyScanner$Listener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/spiraltoys/cloudpets2/toy/ToyScanner$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Lcom/spiraltoys/cloudpets2/toy/ToyException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner$1;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyScanner;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyException;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyException;-><init>()V

    throw v0

    .line 43
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 44
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyException;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/toy/ToyException;-><init>()V

    throw v0

    .line 47
    :cond_2
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mPeripheralList:Ljava/util/List;

    .line 50
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mListener:Lcom/spiraltoys/cloudpets2/toy/ToyScanner$Listener;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mIsScanning:Z

    .line 52
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mCrashResolver:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/toy/ToyScanner;)Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mCrashResolver:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->sValidNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/toy/ToyScanner;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyScanner;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->isNewToyPeripheral(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/spiraltoys/cloudpets2/toy/ToyScanner;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/spiraltoys/cloudpets2/toy/ToyScanner;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mPeripheralList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/spiraltoys/cloudpets2/toy/ToyScanner;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyScanner;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->onToyDiscovered(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    return-void
.end method

.method static synthetic access$600(Lcom/spiraltoys/cloudpets2/toy/ToyScanner;)Lcom/spiraltoys/cloudpets2/toy/ToyScanner$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mListener:Lcom/spiraltoys/cloudpets2/toy/ToyScanner$Listener;

    return-object v0
.end method

.method private isNewToyPeripheral(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 145
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mPeripheralList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .line 146
    .local v0, "testPeripheral":Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    invoke-virtual {v0, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->equalsDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    const/4 v1, 0x0

    .line 150
    .end local v0    # "testPeripheral":Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onToyDiscovered(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V
    .locals 2
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/ToyScanner$2;

    invoke-direct {v1, p0, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner$2;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyScanner;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    return-void
.end method


# virtual methods
.method public forget(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V
    .locals 2
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mPeripheralList:Ljava/util/List;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mPeripheralList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public forgetAll()V
    .locals 2

    .prologue
    .line 86
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mPeripheralList:Ljava/util/List;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mPeripheralList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDiscoveredPeripherals()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mPeripheralList:Ljava/util/List;

    monitor-enter v1

    .line 57
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mPeripheralList:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mIsScanning:Z

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mCrashResolver:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->start()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mIsScanning:Z

    .line 66
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 68
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mIsScanning:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mIsScanning:Z

    .line 75
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mCrashResolver:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->stop()V

    .line 77
    :cond_0
    return-void
.end method
