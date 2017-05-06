.class public Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
.super Ljava/lang/Object;
.source "ToyPeripheral.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;,
        Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;
    }
.end annotation


# static fields
.field public static final COMMAND_CHAR_UUID:Ljava/util/UUID;

.field public static final CONFIG_CHAR_UUID:Ljava/util/UUID;

.field public static final DATA_REQUEST_CHAR_UUID:Ljava/util/UUID;

.field public static final IMAGE_BLOCK_REQUEST_CHAR_UUID:Ljava/util/UUID;

.field public static final IMAGE_NOTIFY_CHAR_UUID:Ljava/util/UUID;

.field public static final LED_CHAR_UUID:Ljava/util/UUID;

.field private static final NOTIFY_DESCRIPTOR_UUID:Ljava/util/UUID;

.field public static final RECEIVE_AUDIO_CHAR_UUID:Ljava/util/UUID;

.field public static final SEND_AUDIO_CHAR_UUID:Ljava/util/UUID;

.field public static final STATE_CHAR_UUID:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String;

.field public static final VOLUME_CHAR_UUID:Ljava/util/UUID;


# instance fields
.field private mAdvertisedName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mGatt:Landroid/bluetooth/BluetoothGatt;

.field private final mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mIdentifier:Ljava/lang/String;

.field private mLastState:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mProxyListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->TAG:Ljava/lang/String;

    .line 81
    const-string v0, "AADDF75D-A95A-0000-0001-3CA499B74009"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->COMMAND_CHAR_UUID:Ljava/util/UUID;

    .line 82
    const-string v0, "AADDF75D-A95A-0000-0002-3CA499B74009"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->SEND_AUDIO_CHAR_UUID:Ljava/util/UUID;

    .line 83
    const-string v0, "AADDF75D-A95A-0000-0003-3CA499B74009"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->RECEIVE_AUDIO_CHAR_UUID:Ljava/util/UUID;

    .line 84
    const-string v0, "AADDF75D-A95A-0000-0004-3CA499B74009"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->STATE_CHAR_UUID:Ljava/util/UUID;

    .line 85
    const-string v0, "AADDF75D-A95A-0000-0005-3CA499B74009"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->DATA_REQUEST_CHAR_UUID:Ljava/util/UUID;

    .line 86
    const-string v0, "AADDF75D-A95A-0000-0006-3CA499B74009"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->CONFIG_CHAR_UUID:Ljava/util/UUID;

    .line 87
    const-string v0, "AADDF75D-A95A-0000-0007-3CA499B74009"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->LED_CHAR_UUID:Ljava/util/UUID;

    .line 88
    const-string v0, "AADDF75D-A95A-0000-0008-3CA499B74009"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->VOLUME_CHAR_UUID:Ljava/util/UUID;

    .line 89
    const-string v0, "F000FFC1-0451-4000-B000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->IMAGE_NOTIFY_CHAR_UUID:Ljava/util/UUID;

    .line 90
    const-string v0, "F000FFC2-0451-4000-B000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->IMAGE_BLOCK_REQUEST_CHAR_UUID:Ljava/util/UUID;

    .line 92
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->NOTIFY_DESCRIPTOR_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "advertisedName"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "advertisedName"    # Ljava/lang/String;
    .param p4, "toyIdentifier"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$1;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 386
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$2;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$2;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mProxyListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    .line 112
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 116
    :cond_1
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 118
    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mAdvertisedName:Ljava/lang/String;

    .line 119
    iput-object p4, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mIdentifier:Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 121
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->INVALID:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mLastState:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mCurrentState:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mListeners:Ljava/util/ArrayList;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mLastState:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    return-object v0
.end method

.method static synthetic access$002(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mLastState:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    return-object p1
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mCurrentState:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    return-object v0
.end method

.method static synthetic access$102(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mCurrentState:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    return-object p1
.end method

.method static synthetic access$202(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method static synthetic access$300(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mProxyListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mIdentifier:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 5
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 268
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 271
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 272
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 277
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v1    # "service":Landroid/bluetooth/BluetoothGattService;
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    .prologue
    .line 146
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    return-void
.end method

.method public connect()V
    .locals 4

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mProxyListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getErrorForConnection()Ljava/lang/Error;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;->onConnectionStateChange(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/lang/Error;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 179
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mProxyListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getErrorForConnection()Ljava/lang/Error;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;->onConnectionStateChange(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/lang/Error;)V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mProxyListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getErrorForConnection()Ljava/lang/Error;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;->onConnectionStateChange(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/lang/Error;)V

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    goto :goto_0
.end method

.method public discoverServices()V
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mProxyListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getErrorForConnection()Ljava/lang/Error;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;->onServicesDiscovered(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/lang/Error;)V

    .line 200
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 370
    if-nez p1, :cond_1

    .line 376
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 373
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    if-eqz v1, :cond_0

    .line 374
    check-cast p1, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->equalsDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method public equalsDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 380
    if-nez p1, :cond_0

    .line 381
    const/4 v0, 0x0

    .line 383
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentState()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mCurrentState:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    return-object v0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getErrorForConnection()Ljava/lang/Error;
    .locals 3

    .prologue
    .line 289
    new-instance v0, Ljava/lang/Error;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mContext:Landroid/content/Context;

    const v2, 0x7f08009c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getErrorForStatus(I)Ljava/lang/Error;
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 284
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Error;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mContext:Landroid/content/Context;

    const v2, 0x7f08009b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getLastState()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mLastState:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mAdvertisedName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mAdvertisedName:Ljava/lang/String;

    .line 167
    :goto_0
    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mCurrentState:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    sget-object v1, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;->INVALID:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readCharacteristic(Ljava/util/UUID;)Z
    .locals 5
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mProxyListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getErrorForConnection()Ljava/lang/Error;

    move-result-object v3

    invoke-interface {v2, p0, p1, v4, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;->onCharacteristicRead(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V

    .line 214
    :goto_0
    return v1

    .line 208
    :cond_0
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 209
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_1

    .line 210
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mProxyListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    const/16 v3, 0x101

    invoke-virtual {p0, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getErrorForStatus(I)Ljava/lang/Error;

    move-result-object v3

    invoke-interface {v2, p0, p1, v4, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;->onCharacteristicRead(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    goto :goto_0
.end method

.method public removeListener(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 155
    :cond_0
    return-void
.end method

.method public setCharacteristicNotification(Ljava/util/UUID;Z)V
    .locals 4
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "enabled"    # Z

    .prologue
    const/16 v3, 0x101

    .line 243
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mProxyListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getErrorForConnection()Ljava/lang/Error;

    move-result-object v3

    invoke-interface {v2, p0, p1, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;->onCharacteristicSetNotify(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;Ljava/lang/Error;)V

    .line 265
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 249
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_1

    .line 250
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mProxyListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    invoke-virtual {p0, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getErrorForStatus(I)Ljava/lang/Error;

    move-result-object v3

    invoke-interface {v2, p0, p1, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;->onCharacteristicSetNotify(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;Ljava/lang/Error;)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v0, p2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 253
    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->NOTIFY_DESCRIPTOR_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 254
    .local v1, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-nez v1, :cond_2

    .line 255
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mProxyListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    invoke-virtual {p0, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getErrorForStatus(I)Ljava/lang/Error;

    move-result-object v3

    invoke-interface {v2, p0, p1, v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;->onCharacteristicSetNotify(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;Ljava/lang/Error;)V

    goto :goto_0

    .line 257
    :cond_2
    if-eqz p2, :cond_3

    .line 258
    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 262
    :goto_1
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_0

    .line 260
    :cond_3
    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    goto :goto_1
.end method

.method public writeCharacteristic(Ljava/util/UUID;[B)Z
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "value"    # [B

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->writeCharacteristic(Ljava/util/UUID;[BZ)Z

    move-result v0

    return v0
.end method

.method public writeCharacteristic(Ljava/util/UUID;[BZ)Z
    .locals 6
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "value"    # [B
    .param p3, "noResponse"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 223
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mProxyListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getErrorForConnection()Ljava/lang/Error;

    move-result-object v4

    invoke-interface {v3, p0, p1, v5, v4}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;->onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V

    .line 239
    :goto_0
    return v2

    .line 227
    :cond_0
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 228
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v0, :cond_1

    .line 229
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mProxyListener:Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;

    const/16 v4, 0x101

    invoke-virtual {p0, v4}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getErrorForStatus(I)Ljava/lang/Error;

    move-result-object v4

    invoke-interface {v3, p0, p1, v5, v4}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral$Listener;->onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V

    goto :goto_0

    .line 233
    :cond_1
    if-eqz p3, :cond_3

    const/4 v1, 0x1

    .line 234
    .local v1, "writeType":I
    :goto_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 235
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 238
    :cond_2
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 239
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v2

    goto :goto_0

    .line 233
    .end local v1    # "writeType":I
    :cond_3
    const/4 v1, 0x2

    goto :goto_1
.end method
