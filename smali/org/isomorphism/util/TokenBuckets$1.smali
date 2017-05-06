.class final Lorg/isomorphism/util/TokenBuckets$1;
.super Ljava/lang/Object;
.source "TokenBuckets.java"

# interfaces
.implements Lorg/isomorphism/util/TokenBucket$SleepStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/isomorphism/util/TokenBuckets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sleep()V
    .locals 3

    .prologue
    .line 119
    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Uninterruptibles;->sleepUninterruptibly(JLjava/util/concurrent/TimeUnit;)V

    .line 120
    return-void
.end method
