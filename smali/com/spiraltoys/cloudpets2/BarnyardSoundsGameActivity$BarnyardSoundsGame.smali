.class Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;
.super Ljava/lang/Object;
.source "BarnyardSoundsGameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BarnyardSoundsGame"
.end annotation


# static fields
.field private static final NUM_SOUNDS_AT_MAX_DIFFICULTY:I = 0x6

.field private static final NUM_SOUNDS_AT_MIN_DIFFICULTY:I = 0x2


# instance fields
.field private mCurrentDifficultyNumSounds:I

.field private mCurrentSequence:[I

.field private final mNumberOfCharacters:I

.field private mRandom:Ljava/util/Random;

.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;I)V
    .locals 1
    .param p2, "numberOfCharacters"    # I

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->this$0:Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1300
    iput p2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->mNumberOfCharacters:I

    .line 1301
    const/4 v0, 0x1

    iput v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->mCurrentDifficultyNumSounds:I

    .line 1302
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->mRandom:Ljava/util/Random;

    .line 1303
    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentSequence()[I
    .locals 1

    .prologue
    .line 1306
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->mCurrentSequence:[I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->nextSequence()[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->mCurrentSequence:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nextSequence()[I
    .locals 4

    .prologue
    .line 1310
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->mCurrentDifficultyNumSounds:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->mCurrentDifficultyNumSounds:I

    .line 1311
    iget v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->mCurrentDifficultyNumSounds:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->mCurrentSequence:[I

    .line 1313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->mCurrentSequence:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1314
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->mCurrentSequence:[I

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->mRandom:Ljava/util/Random;

    iget v3, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->mNumberOfCharacters:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aput v2, v1, v0

    .line 1313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1317
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/BarnyardSoundsGameActivity$BarnyardSoundsGame;->mCurrentSequence:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1310
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
