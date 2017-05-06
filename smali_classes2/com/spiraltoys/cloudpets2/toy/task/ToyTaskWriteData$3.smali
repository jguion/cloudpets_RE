.class Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$3;
.super Ljava/lang/Object;
.source "ToyTaskWriteData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;
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
    .line 167
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$3;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 170
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Writing data hung. onCharacteristicWrite() has not been called for 10000 ms. Cancelling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$3;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->stopWriting()V

    .line 172
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$3;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    new-instance v2, Ljava/lang/Error;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData$3;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08009b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskWriteData;->onCompleted(Ljava/lang/Error;)V

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v0, "dimensions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "BRAND"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v1, "DEVICE"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "MANUFACTURER"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "PRODUCT"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v1, "MODEL"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v1, "RADIO"

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v1, "RELEASE"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v1, "BLEWriteDataHung"

    invoke-static {v1, v0}, Lcom/parse/ParseAnalytics;->trackEventInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;

    .line 184
    return-void
.end method
