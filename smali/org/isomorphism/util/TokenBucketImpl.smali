.class Lorg/isomorphism/util/TokenBucketImpl;
.super Ljava/lang/Object;
.source "TokenBucketImpl.java"

# interfaces
.implements Lorg/isomorphism/util/TokenBucket;


# instance fields
.field private final capacity:J

.field private final refillStrategy:Lorg/isomorphism/util/TokenBucket$RefillStrategy;

.field private size:J

.field private final sleepStrategy:Lorg/isomorphism/util/TokenBucket$SleepStrategy;


# direct methods
.method constructor <init>(JJLorg/isomorphism/util/TokenBucket$RefillStrategy;Lorg/isomorphism/util/TokenBucket$SleepStrategy;)V
    .locals 7
    .param p1, "capacity"    # J
    .param p3, "initialTokens"    # J
    .param p5, "refillStrategy"    # Lorg/isomorphism/util/TokenBucket$RefillStrategy;
    .param p6, "sleepStrategy"    # Lorg/isomorphism/util/TokenBucket$SleepStrategy;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 47
    cmp-long v0, p3, p1

    if-gtz v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 49
    iput-wide p1, p0, Lorg/isomorphism/util/TokenBucketImpl;->capacity:J

    .line 50
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/isomorphism/util/TokenBucket$RefillStrategy;

    iput-object v0, p0, Lorg/isomorphism/util/TokenBucketImpl;->refillStrategy:Lorg/isomorphism/util/TokenBucket$RefillStrategy;

    .line 51
    invoke-static {p6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/isomorphism/util/TokenBucket$SleepStrategy;

    iput-object v0, p0, Lorg/isomorphism/util/TokenBucketImpl;->sleepStrategy:Lorg/isomorphism/util/TokenBucket$SleepStrategy;

    .line 52
    iput-wide p3, p0, Lorg/isomorphism/util/TokenBucketImpl;->size:J

    .line 53
    return-void

    :cond_0
    move v0, v2

    .line 46
    goto :goto_0

    :cond_1
    move v1, v2

    .line 47
    goto :goto_1
.end method

.method private declared-synchronized refill()V
    .locals 8

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lorg/isomorphism/util/TokenBucketImpl;->capacity:J

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lorg/isomorphism/util/TokenBucketImpl;->refillStrategy:Lorg/isomorphism/util/TokenBucket$RefillStrategy;

    invoke-interface {v6}, Lorg/isomorphism/util/TokenBucket$RefillStrategy;->refill()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 158
    .local v0, "newTokens":J
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lorg/isomorphism/util/TokenBucketImpl;->size:J

    add-long/2addr v4, v0

    iget-wide v6, p0, Lorg/isomorphism/util/TokenBucketImpl;->capacity:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/isomorphism/util/TokenBucketImpl;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 157
    .end local v0    # "newTokens":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public consume()V
    .locals 2

    .prologue
    .line 133
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/isomorphism/util/TokenBucketImpl;->consume(J)V

    .line 134
    return-void
.end method

.method public consume(J)V
    .locals 1
    .param p1, "numTokens"    # J

    .prologue
    .line 145
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/isomorphism/util/TokenBucketImpl;->tryConsume(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/isomorphism/util/TokenBucketImpl;->sleepStrategy:Lorg/isomorphism/util/TokenBucket$SleepStrategy;

    invoke-interface {v0}, Lorg/isomorphism/util/TokenBucket$SleepStrategy;->sleep()V

    goto :goto_0
.end method

.method public getCapacity()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/isomorphism/util/TokenBucketImpl;->capacity:J

    return-wide v0
.end method

.method public getDurationUntilNextRefill(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lorg/isomorphism/util/TokenBucketImpl;->refillStrategy:Lorg/isomorphism/util/TokenBucket$RefillStrategy;

    invoke-interface {v0, p1}, Lorg/isomorphism/util/TokenBucket$RefillStrategy;->getDurationUntilNextRefill(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getNumTokens()J
    .locals 2

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/isomorphism/util/TokenBucketImpl;->refill()V

    .line 77
    iget-wide v0, p0, Lorg/isomorphism/util/TokenBucketImpl;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryConsume()Z
    .locals 2

    .prologue
    .line 101
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/isomorphism/util/TokenBucketImpl;->tryConsume(J)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized tryConsume(J)Z
    .locals 5
    .param p1, "numTokens"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    monitor-enter p0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    move v2, v0

    :goto_0
    :try_start_0
    const-string v3, "Number of tokens to consume must be positive"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 114
    iget-wide v2, p0, Lorg/isomorphism/util/TokenBucketImpl;->capacity:J

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    move v2, v0

    :goto_1
    const-string v3, "Number of tokens to consume must be less than the capacity of the bucket."

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 116
    invoke-direct {p0}, Lorg/isomorphism/util/TokenBucketImpl;->refill()V

    .line 119
    iget-wide v2, p0, Lorg/isomorphism/util/TokenBucketImpl;->size:J

    cmp-long v2, p1, v2

    if-gtz v2, :cond_2

    .line 120
    iget-wide v2, p0, Lorg/isomorphism/util/TokenBucketImpl;->size:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lorg/isomorphism/util/TokenBucketImpl;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :goto_2
    monitor-exit p0

    return v0

    :cond_0
    move v2, v1

    .line 113
    goto :goto_0

    :cond_1
    move v2, v1

    .line 114
    goto :goto_1

    :cond_2
    move v0, v1

    .line 124
    goto :goto_2

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
