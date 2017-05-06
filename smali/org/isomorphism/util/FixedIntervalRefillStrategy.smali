.class public Lorg/isomorphism/util/FixedIntervalRefillStrategy;
.super Ljava/lang/Object;
.source "FixedIntervalRefillStrategy.java"

# interfaces
.implements Lorg/isomorphism/util/TokenBucket$RefillStrategy;


# instance fields
.field private lastRefillTime:J

.field private nextRefillTime:J

.field private final numTokensPerPeriod:J

.field private final periodDurationInNanos:J

.field private final ticker:Lcom/google/common/base/Ticker;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Ticker;JJLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "ticker"    # Lcom/google/common/base/Ticker;
    .param p2, "numTokensPerPeriod"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/isomorphism/util/FixedIntervalRefillStrategy;->ticker:Lcom/google/common/base/Ticker;

    .line 46
    iput-wide p2, p0, Lorg/isomorphism/util/FixedIntervalRefillStrategy;->numTokensPerPeriod:J

    .line 47
    invoke-virtual {p6, p4, p5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/isomorphism/util/FixedIntervalRefillStrategy;->periodDurationInNanos:J

    .line 48
    iget-wide v0, p0, Lorg/isomorphism/util/FixedIntervalRefillStrategy;->periodDurationInNanos:J

    neg-long v0, v0

    iput-wide v0, p0, Lorg/isomorphism/util/FixedIntervalRefillStrategy;->lastRefillTime:J

    .line 49
    iget-wide v0, p0, Lorg/isomorphism/util/FixedIntervalRefillStrategy;->periodDurationInNanos:J

    neg-long v0, v0

    iput-wide v0, p0, Lorg/isomorphism/util/FixedIntervalRefillStrategy;->nextRefillTime:J

    .line 50
    return-void
.end method


# virtual methods
.method public getDurationUntilNextRefill(Ljava/util/concurrent/TimeUnit;)J
    .locals 6
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 76
    iget-object v2, p0, Lorg/isomorphism/util/FixedIntervalRefillStrategy;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v2}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 77
    .local v0, "now":J
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lorg/isomorphism/util/FixedIntervalRefillStrategy;->nextRefillTime:J

    sub-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    return-wide v2
.end method

.method public declared-synchronized refill()J
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lorg/isomorphism/util/FixedIntervalRefillStrategy;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v6}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 56
    .local v0, "now":J
    iget-wide v6, p0, Lorg/isomorphism/util/FixedIntervalRefillStrategy;->nextRefillTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v6, v0, v6

    if-gez v6, :cond_0

    .line 70
    :goto_0
    monitor-exit p0

    return-wide v4

    .line 62
    :cond_0
    const-wide/16 v4, 0x0

    :try_start_1
    iget-wide v6, p0, Lorg/isomorphism/util/FixedIntervalRefillStrategy;->lastRefillTime:J

    sub-long v6, v0, v6

    iget-wide v8, p0, Lorg/isomorphism/util/FixedIntervalRefillStrategy;->periodDurationInNanos:J

    div-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 65
    .local v2, "numPeriods":J
    iget-wide v4, p0, Lorg/isomorphism/util/FixedIntervalRefillStrategy;->lastRefillTime:J

    iget-wide v6, p0, Lorg/isomorphism/util/FixedIntervalRefillStrategy;->periodDurationInNanos:J

    mul-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/isomorphism/util/FixedIntervalRefillStrategy;->lastRefillTime:J

    .line 68
    iget-wide v4, p0, Lorg/isomorphism/util/FixedIntervalRefillStrategy;->lastRefillTime:J

    iget-wide v6, p0, Lorg/isomorphism/util/FixedIntervalRefillStrategy;->periodDurationInNanos:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/isomorphism/util/FixedIntervalRefillStrategy;->nextRefillTime:J

    .line 70
    iget-wide v4, p0, Lorg/isomorphism/util/FixedIntervalRefillStrategy;->numTokensPerPeriod:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    mul-long/2addr v4, v2

    goto :goto_0

    .line 55
    .end local v0    # "now":J
    .end local v2    # "numPeriods":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
