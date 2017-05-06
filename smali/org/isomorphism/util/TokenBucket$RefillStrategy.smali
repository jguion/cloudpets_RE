.class public interface abstract Lorg/isomorphism/util/TokenBucket$RefillStrategy;
.super Ljava/lang/Object;
.source "TokenBucket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/isomorphism/util/TokenBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RefillStrategy"
.end annotation


# virtual methods
.method public abstract getDurationUntilNextRefill(Ljava/util/concurrent/TimeUnit;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract refill()J
.end method
