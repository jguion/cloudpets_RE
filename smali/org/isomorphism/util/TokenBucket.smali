.class public interface abstract Lorg/isomorphism/util/TokenBucket;
.super Ljava/lang/Object;
.source "TokenBucket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/isomorphism/util/TokenBucket$SleepStrategy;,
        Lorg/isomorphism/util/TokenBucket$RefillStrategy;
    }
.end annotation


# virtual methods
.method public abstract consume()V
.end method

.method public abstract consume(J)V
.end method

.method public abstract getCapacity()J
.end method

.method public abstract getDurationUntilNextRefill(Ljava/util/concurrent/TimeUnit;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract getNumTokens()J
.end method

.method public abstract tryConsume()Z
.end method

.method public abstract tryConsume(J)Z
.end method
