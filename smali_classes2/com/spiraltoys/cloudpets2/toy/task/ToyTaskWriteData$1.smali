.class Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$1;
.super Ljava/lang/Object;
.source "ToyTaskWriteData.java"

# interfaces
.implements Lorg/isomorphism/util/TokenBucket$SleepStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;-><init>(Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;Ljava/util/UUID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sleep()V
    .locals 3

    .prologue
    .line 57
    const-wide/16 v0, 0x7

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Uninterruptibles;->sleepUninterruptibly(JLjava/util/concurrent/TimeUnit;)V

    .line 58
    return-void
.end method
