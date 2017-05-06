.class public abstract Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;
.super Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
.source "ToyTaskWriteData.java"


# static fields
.field private static final CHARACTERISTIC_WRITE_TIMEOUT_MS:J = 0x2710L

.field private static final LOGGING:Ljava/lang/Boolean;

.field private static final MINIMUM_TIME_BETWEEN_WRITES_MS:J = 0xeL

.field private static final RETRY_DELAY:J = 0x64L

.field private static final TAG:Ljava/lang/String;

.field private static final WRITES_PER_REQUIRED_RESPONSE:I = 0x80


# instance fields
.field private final mCharacteristic:Ljava/util/UUID;

.field private final mDataQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mNumWrites:J

.field final mTimeoutRunnable:Ljava/lang/Runnable;

.field private mTokenBucket:Lorg/isomorphism/util/TokenBucket;

.field private mWriteCycleStartTime:J

.field final mWriteRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->LOGGING:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;)V
    .locals 7
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    .line 43
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;)V

    .line 140
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$2;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$2;-><init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mWriteRunnable:Ljava/lang/Runnable;

    .line 167
    new-instance v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$3;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$3;-><init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 45
    if-nez p2, :cond_0

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49
    :cond_0
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mCharacteristic:Ljava/util/UUID;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mDataQueue:Ljava/util/LinkedList;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mHandler:Landroid/os/Handler;

    .line 54
    invoke-static {}, Lorg/isomorphism/util/TokenBuckets;->builder()Lorg/isomorphism/util/TokenBuckets$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lorg/isomorphism/util/TokenBuckets$Builder;->withCapacity(J)Lorg/isomorphism/util/TokenBuckets$Builder;

    move-result-object v1

    const-wide/16 v4, 0xe

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v1 .. v6}, Lorg/isomorphism/util/TokenBuckets$Builder;->withFixedIntervalRefillStrategy(JJLjava/util/concurrent/TimeUnit;)Lorg/isomorphism/util/TokenBuckets$Builder;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$1;-><init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;)V

    invoke-virtual {v0, v1}, Lorg/isomorphism/util/TokenBuckets$Builder;->withSleepStrategy(Lorg/isomorphism/util/TokenBucket$SleepStrategy;)Lorg/isomorphism/util/TokenBuckets$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lorg/isomorphism/util/TokenBuckets$Builder;->build()Lorg/isomorphism/util/TokenBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mTokenBucket:Lorg/isomorphism/util/TokenBucket;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mDataQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$108(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;)J
    .locals 4
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mNumWrites:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mNumWrites:J

    return-wide v0
.end method

.method static synthetic access$200()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->LOGGING:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;)J
    .locals 2
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mWriteCycleStartTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;J)J
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;
    .param p1, "x1"    # J

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mWriteCycleStartTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mCharacteristic:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$600(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->write(Z)V

    return-void
.end method

.method private write(Z)V
    .locals 4
    .param p1, "delayed"    # Z

    .prologue
    .line 89
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 90
    if-eqz p1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mWriteRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mWriteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method addData([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 70
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mDataQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method hasDataRemaining()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mDataQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V
    .locals 3
    .param p1, "peripheral"    # Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;
    .param p2, "characteristic"    # Ljava/util/UUID;
    .param p3, "value"    # [B
    .param p4, "error"    # Ljava/lang/Error;

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->onCharacteristicWrite(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;[BLjava/lang/Error;)V

    .line 115
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mCharacteristic:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    :cond_0
    if-eqz p4, :cond_2

    .line 121
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing chunk failed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mDataQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " remaining..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->stopWriting()V

    .line 123
    invoke-virtual {p0, p4}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->onCompleted(Ljava/lang/Error;)V

    .line 138
    :cond_1
    :goto_0
    return-void

    .line 125
    :cond_2
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->LOGGING:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    sget-object v0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing chunk succeeded with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mDataQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " remaining..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mTokenBucket:Lorg/isomorphism/util/TokenBucket;

    invoke-interface {v0}, Lorg/isomorphism/util/TokenBucket;->consume()V

    .line 130
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mDataQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->stopWriting()V

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->onCompleted(Ljava/lang/Error;)V

    goto :goto_0

    .line 134
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->write(Z)V

    goto :goto_0
.end method

.method abstract onCompleted(Ljava/lang/Error;)V
.end method

.method abstract onProgress(I)V
.end method

.method startWriting()V
    .locals 2

    .prologue
    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mHandler:Landroid/os/Handler;

    .line 83
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->write(Z)V

    .line 85
    :cond_0
    monitor-exit p0

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;->stop()V

    .line 66
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->stopWriting()V

    .line 67
    return-void
.end method

.method stopWriting()V
    .locals 2

    .prologue
    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->mHandler:Landroid/os/Handler;

    .line 104
    :cond_0
    monitor-exit p0

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
