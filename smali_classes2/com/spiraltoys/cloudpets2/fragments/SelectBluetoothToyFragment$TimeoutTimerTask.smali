.class Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$TimeoutTimerTask;
.super Ljava/util/TimerTask;
.source "SelectBluetoothToyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;


# direct methods
.method private constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$TimeoutTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;
    .param p2, "x1"    # Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$1;

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$TimeoutTimerTask;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$TimeoutTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;)Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$OnToySelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$TimeoutTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->access$300(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$TimeoutTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->access$400(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 423
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$TimeoutTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;)Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$OnToySelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$TimeoutTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->access$400(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$OnToySelectedListener;->onToyScanTimeout(I)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$TimeoutTimerTask;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;)Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$OnToySelectedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$OnToySelectedListener;->onToyConnectionTimeout()V

    goto :goto_0
.end method
