.class Lcom/spiraltoys/cloudpets2/toy/ToyScanner$1;
.super Ljava/lang/Object;
.source "ToyScanner.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/toy/ToyScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecordBytes"    # [B

    .prologue
    .line 94
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mCrashResolver:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;
    invoke-static {v5}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->access$000(Lcom/spiraltoys/cloudpets2/toy/ToyScanner;)Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    move-result-object v5

    invoke-virtual {v5, p1, p0}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->notifyScannedDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 96
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 128
    :cond_0
    return-void

    .line 100
    :cond_1
    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->sValidNames:[Ljava/lang/String;
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->access$100()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v0, v6, v5

    .line 101
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 100
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 105
    :cond_3
    const/16 v8, -0x50

    if-lt p2, v8, :cond_2

    .line 109
    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->isNewToyPeripheral(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v8, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->access$200(Lcom/spiraltoys/cloudpets2/toy/ToyScanner;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 110
    invoke-static {p3}, Lcom/spiraltoys/cloudpets2/toy/util/ScanRecord;->parseFromBytes([B)Lcom/spiraltoys/cloudpets2/toy/util/ScanRecord;

    move-result-object v2

    .line 112
    .local v2, "scanRecord":Lcom/spiraltoys/cloudpets2/toy/util/ScanRecord;
    const v8, 0xffff

    invoke-virtual {v2, v8}, Lcom/spiraltoys/cloudpets2/toy/util/ScanRecord;->getManufacturerSpecificData(I)[B

    move-result-object v4

    .line 114
    .local v4, "toyIdBytes":[B
    const/4 v3, 0x0

    .line 115
    .local v3, "toyId":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 116
    new-instance v3, Ljava/lang/String;

    .end local v3    # "toyId":Ljava/lang/String;
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 119
    .restart local v3    # "toyId":Ljava/lang/String;
    :cond_4
    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->access$300(Lcom/spiraltoys/cloudpets2/toy/ToyScanner;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/util/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v8, p1, v9, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .local v1, "peripheral":Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mPeripheralList:Ljava/util/List;
    invoke-static {v8}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->access$400(Lcom/spiraltoys/cloudpets2/toy/ToyScanner;)Ljava/util/List;

    move-result-object v8

    monitor-enter v8

    .line 122
    :try_start_0
    iget-object v9, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    # getter for: Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->mPeripheralList:Ljava/util/List;
    invoke-static {v9}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->access$400(Lcom/spiraltoys/cloudpets2/toy/ToyScanner;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/toy/ToyScanner$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/ToyScanner;

    # invokes: Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->onToyDiscovered(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V
    invoke-static {v8, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyScanner;->access$500(Lcom/spiraltoys/cloudpets2/toy/ToyScanner;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    goto :goto_1

    .line 123
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method
