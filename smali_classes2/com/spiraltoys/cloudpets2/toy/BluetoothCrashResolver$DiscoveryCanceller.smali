.class Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$DiscoveryCanceller;
.super Landroid/os/AsyncTask;
.source "BluetoothCrashResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiscoveryCanceller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;


# direct methods
.method private constructor <init>(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$DiscoveryCanceller;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;
    .param p2, "x1"    # Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$1;

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$DiscoveryCanceller;-><init>(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 438
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$DiscoveryCanceller;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 442
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 443
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$DiscoveryCanceller;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$400(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 444
    const-string v2, "BluetoothCrashResolver"

    const-string v3, "BluetoothAdapter.ACTION_DISCOVERY_STARTED never received.  Recovery may fail."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 448
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 449
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$DiscoveryCanceller;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$200(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "BluetoothCrashResolver"

    const-string v3, "Cancelling discovery"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 458
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_2
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 453
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_3
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$DiscoveryCanceller;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$200(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "BluetoothCrashResolver"

    const-string v3, "Discovery not running.  Won\'t cancel it"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 455
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v1

    .line 456
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$DiscoveryCanceller;->this$0:Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;->access$200(Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "BluetoothCrashResolver"

    const-string v3, "DiscoveryCanceller sleep interrupted."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 438
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$DiscoveryCanceller;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 463
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 467
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 438
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/BluetoothCrashResolver$DiscoveryCanceller;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Void;

    .prologue
    .line 471
    return-void
.end method
