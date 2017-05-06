.class public Lorg/isomorphism/util/TokenBuckets$Builder;
.super Ljava/lang/Object;
.source "TokenBuckets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/isomorphism/util/TokenBuckets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private capacity:Ljava/lang/Long;

.field private initialTokens:J

.field private refillStrategy:Lorg/isomorphism/util/TokenBucket$RefillStrategy;

.field private sleepStrategy:Lorg/isomorphism/util/TokenBucket$SleepStrategy;

.field private final ticker:Lcom/google/common/base/Ticker;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v2, p0, Lorg/isomorphism/util/TokenBuckets$Builder;->capacity:Ljava/lang/Long;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/isomorphism/util/TokenBuckets$Builder;->initialTokens:J

    .line 47
    iput-object v2, p0, Lorg/isomorphism/util/TokenBuckets$Builder;->refillStrategy:Lorg/isomorphism/util/TokenBucket$RefillStrategy;

    .line 48
    # getter for: Lorg/isomorphism/util/TokenBuckets;->YIELDING_SLEEP_STRATEGY:Lorg/isomorphism/util/TokenBucket$SleepStrategy;
    invoke-static {}, Lorg/isomorphism/util/TokenBuckets;->access$000()Lorg/isomorphism/util/TokenBucket$SleepStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/isomorphism/util/TokenBuckets$Builder;->sleepStrategy:Lorg/isomorphism/util/TokenBucket$SleepStrategy;

    .line 49
    invoke-static {}, Lcom/google/common/base/Ticker;->systemTicker()Lcom/google/common/base/Ticker;

    move-result-object v0

    iput-object v0, p0, Lorg/isomorphism/util/TokenBuckets$Builder;->ticker:Lcom/google/common/base/Ticker;

    return-void
.end method


# virtual methods
.method public build()Lorg/isomorphism/util/TokenBucket;
    .locals 8

    .prologue
    .line 105
    iget-object v0, p0, Lorg/isomorphism/util/TokenBuckets$Builder;->capacity:Ljava/lang/Long;

    const-string v1, "Must specify a capacity"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lorg/isomorphism/util/TokenBuckets$Builder;->refillStrategy:Lorg/isomorphism/util/TokenBucket$RefillStrategy;

    const-string v1, "Must specify a refill strategy"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v1, Lorg/isomorphism/util/TokenBucketImpl;

    iget-object v0, p0, Lorg/isomorphism/util/TokenBuckets$Builder;->capacity:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/isomorphism/util/TokenBuckets$Builder;->initialTokens:J

    iget-object v6, p0, Lorg/isomorphism/util/TokenBuckets$Builder;->refillStrategy:Lorg/isomorphism/util/TokenBucket$RefillStrategy;

    iget-object v7, p0, Lorg/isomorphism/util/TokenBuckets$Builder;->sleepStrategy:Lorg/isomorphism/util/TokenBucket$SleepStrategy;

    invoke-direct/range {v1 .. v7}, Lorg/isomorphism/util/TokenBucketImpl;-><init>(JJLorg/isomorphism/util/TokenBucket$RefillStrategy;Lorg/isomorphism/util/TokenBucket$SleepStrategy;)V

    return-object v1
.end method

.method public withBusyWaitSleepStrategy()Lorg/isomorphism/util/TokenBuckets$Builder;
    .locals 1

    .prologue
    .line 92
    # getter for: Lorg/isomorphism/util/TokenBuckets;->BUSY_WAIT_SLEEP_STRATEGY:Lorg/isomorphism/util/TokenBucket$SleepStrategy;
    invoke-static {}, Lorg/isomorphism/util/TokenBuckets;->access$100()Lorg/isomorphism/util/TokenBucket$SleepStrategy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/isomorphism/util/TokenBuckets$Builder;->withSleepStrategy(Lorg/isomorphism/util/TokenBucket$SleepStrategy;)Lorg/isomorphism/util/TokenBuckets$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withCapacity(J)Lorg/isomorphism/util/TokenBuckets$Builder;
    .locals 3
    .param p1, "numTokens"    # J

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Must specify a positive number of tokens"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 55
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/isomorphism/util/TokenBuckets$Builder;->capacity:Ljava/lang/Long;

    .line 56
    return-object p0

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public withFixedIntervalRefillStrategy(JJLjava/util/concurrent/TimeUnit;)Lorg/isomorphism/util/TokenBuckets$Builder;
    .locals 7
    .param p1, "refillTokens"    # J
    .param p3, "period"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 70
    new-instance v0, Lorg/isomorphism/util/FixedIntervalRefillStrategy;

    iget-object v1, p0, Lorg/isomorphism/util/TokenBuckets$Builder;->ticker:Lcom/google/common/base/Ticker;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/isomorphism/util/FixedIntervalRefillStrategy;-><init>(Lcom/google/common/base/Ticker;JJLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {p0, v0}, Lorg/isomorphism/util/TokenBuckets$Builder;->withRefillStrategy(Lorg/isomorphism/util/TokenBucket$RefillStrategy;)Lorg/isomorphism/util/TokenBuckets$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withInitialTokens(J)Lorg/isomorphism/util/TokenBuckets$Builder;
    .locals 3
    .param p1, "numTokens"    # J

    .prologue
    .line 62
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Must specify a positive number of tokens"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 63
    iput-wide p1, p0, Lorg/isomorphism/util/TokenBuckets$Builder;->initialTokens:J

    .line 64
    return-object p0

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public withRefillStrategy(Lorg/isomorphism/util/TokenBucket$RefillStrategy;)Lorg/isomorphism/util/TokenBuckets$Builder;
    .locals 1
    .param p1, "refillStrategy"    # Lorg/isomorphism/util/TokenBucket$RefillStrategy;

    .prologue
    .line 76
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/isomorphism/util/TokenBucket$RefillStrategy;

    iput-object v0, p0, Lorg/isomorphism/util/TokenBuckets$Builder;->refillStrategy:Lorg/isomorphism/util/TokenBucket$RefillStrategy;

    .line 77
    return-object p0
.end method

.method public withSleepStrategy(Lorg/isomorphism/util/TokenBucket$SleepStrategy;)Lorg/isomorphism/util/TokenBuckets$Builder;
    .locals 1
    .param p1, "sleepStrategy"    # Lorg/isomorphism/util/TokenBucket$SleepStrategy;

    .prologue
    .line 98
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/isomorphism/util/TokenBucket$SleepStrategy;

    iput-object v0, p0, Lorg/isomorphism/util/TokenBuckets$Builder;->sleepStrategy:Lorg/isomorphism/util/TokenBucket$SleepStrategy;

    .line 99
    return-object p0
.end method

.method public withYieldingSleepStrategy()Lorg/isomorphism/util/TokenBuckets$Builder;
    .locals 1

    .prologue
    .line 83
    # getter for: Lorg/isomorphism/util/TokenBuckets;->YIELDING_SLEEP_STRATEGY:Lorg/isomorphism/util/TokenBucket$SleepStrategy;
    invoke-static {}, Lorg/isomorphism/util/TokenBuckets;->access$000()Lorg/isomorphism/util/TokenBucket$SleepStrategy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/isomorphism/util/TokenBuckets$Builder;->withSleepStrategy(Lorg/isomorphism/util/TokenBucket$SleepStrategy;)Lorg/isomorphism/util/TokenBuckets$Builder;

    move-result-object v0

    return-object v0
.end method
