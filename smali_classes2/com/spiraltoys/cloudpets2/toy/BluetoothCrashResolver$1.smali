.class Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothCrashResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 307
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$100(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 311
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$200(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "BluetoothCrashResolver"

    const-string v3, "Bluetooth discovery finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$300(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)V

    .line 318
    :cond_1
    :goto_0
    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 319
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$100(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 320
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$402(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;Z)Z

    .line 321
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$200(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "BluetoothCrashResolver"

    const-string v3, "Bluetooth discovery started"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_2
    :goto_1
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 329
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 331
    .local v1, "state":I
    sparse-switch v1, :sswitch_data_0

    .line 354
    .end local v1    # "state":I
    :cond_3
    :goto_2
    :sswitch_0
    return-void

    .line 315
    :cond_4
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$200(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "BluetoothCrashResolver"

    const-string v3, "Bluetooth discovery finished (external)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 324
    :cond_5
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$200(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "BluetoothCrashResolver"

    const-string v3, "Bluetooth discovery started (external)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 333
    .restart local v1    # "state":I
    :sswitch_1
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$200(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "BluetoothCrashResolver"

    const-string v3, "Bluetooth state is ERROR"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 336
    :sswitch_2
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$200(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "BluetoothCrashResolver"

    const-string v3, "Bluetooth state is OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_6
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$502(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;J)J

    goto :goto_2

    .line 342
    :sswitch_3
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$200(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "BluetoothCrashResolver"

    const-string v3, "Bluetooth state is ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_7
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$200(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "BluetoothCrashResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bluetooth was turned off for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$600(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-static {v6}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$500(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " milliseconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_8
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$600(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$500(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x258

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 345
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->crashDetected()V

    goto/16 :goto_2

    .line 349
    :sswitch_4
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$602(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;J)J

    .line 350
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$200(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "BluetoothCrashResolver"

    const-string v3, "Bluetooth state is TURNING_ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 331
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_0
    .end sparse-switch
.end method
