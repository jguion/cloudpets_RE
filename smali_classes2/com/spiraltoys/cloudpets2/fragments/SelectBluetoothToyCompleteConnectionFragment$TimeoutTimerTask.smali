.class Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$TimeoutTimerTask;
.super Ljava/util/TimerTask;
.source "SelectBluetoothToyCompleteConnectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;


# direct methods
.method private constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$TimeoutTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;
    .param p2, "x1"    # Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$1;

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$TimeoutTimerTask;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$TimeoutTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;)Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$OnConnectionCompletedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$TimeoutTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;)Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$OnConnectionCompletedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$OnConnectionCompletedListener;->onToyConnectionTimeout()V

    .line 239
    :cond_0
    return-void
.end method
