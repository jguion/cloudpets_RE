.class public final Lorg/isomorphism/util/TokenBuckets;
.super Ljava/lang/Object;
.source "TokenBuckets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/isomorphism/util/TokenBuckets$Builder;
    }
.end annotation


# static fields
.field private static final BUSY_WAIT_SLEEP_STRATEGY:Lorg/isomorphism/util/TokenBucket$SleepStrategy;

.field private static final YIELDING_SLEEP_STRATEGY:Lorg/isomorphism/util/TokenBucket$SleepStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lorg/isomorphism/util/TokenBuckets$1;

    invoke-direct {v0}, Lorg/isomorphism/util/TokenBuckets$1;-><init>()V

    sput-object v0, Lorg/isomorphism/util/TokenBuckets;->YIELDING_SLEEP_STRATEGY:Lorg/isomorphism/util/TokenBucket$SleepStrategy;

    .line 123
    new-instance v0, Lorg/isomorphism/util/TokenBuckets$2;

    invoke-direct {v0}, Lorg/isomorphism/util/TokenBuckets$2;-><init>()V

    sput-object v0, Lorg/isomorphism/util/TokenBuckets;->BUSY_WAIT_SLEEP_STRATEGY:Lorg/isomorphism/util/TokenBucket$SleepStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/isomorphism/util/TokenBucket$SleepStrategy;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/isomorphism/util/TokenBuckets;->YIELDING_SLEEP_STRATEGY:Lorg/isomorphism/util/TokenBucket$SleepStrategy;

    return-object v0
.end method

.method static synthetic access$100()Lorg/isomorphism/util/TokenBucket$SleepStrategy;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/isomorphism/util/TokenBuckets;->BUSY_WAIT_SLEEP_STRATEGY:Lorg/isomorphism/util/TokenBucket$SleepStrategy;

    return-object v0
.end method

.method public static builder()Lorg/isomorphism/util/TokenBuckets$Builder;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/isomorphism/util/TokenBuckets$Builder;

    invoke-direct {v0}, Lorg/isomorphism/util/TokenBuckets$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
