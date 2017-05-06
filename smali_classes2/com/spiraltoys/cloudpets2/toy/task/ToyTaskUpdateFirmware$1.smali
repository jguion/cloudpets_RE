.class Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$1;
.super Landroid/os/AsyncTask;
.source "ToyTaskUpdateFirmware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->loadFirmware()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x0

    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, "chunkIndex":I
    :try_start_0
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;

    invoke-static {v7}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->access$000(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v6, "A"

    .line 139
    .local v6, "letter":Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "firmware/CloudPets_Img"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "1.0.19"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".bin"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "filePath":Ljava/lang/String;
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;

    invoke-virtual {v7}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v7

    invoke-virtual {v7}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 143
    .local v4, "inputStream":Ljava/io/InputStream;
    :cond_0
    const/16 v7, 0x12

    new-array v0, v7, [B

    .line 144
    .local v0, "chunk":[B
    int-to-short v7, v1

    invoke-static {v7}, Lcom/spiraltoys/cloudpets2/toy/ToyUtil;->getBytes(S)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {v7, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    const/4 v7, 0x2

    const/16 v8, 0x10

    invoke-virtual {v4, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 146
    .local v5, "len":I
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;

    invoke-virtual {v7, v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->addData([B)V

    .line 147
    if-nez v1, :cond_1

    .line 148
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;

    const/16 v8, 0xc

    new-array v8, v8, [B

    invoke-static {v7, v8}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->access$102(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;[B)[B

    .line 149
    const/4 v7, 0x2

    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;

    invoke-static {v8}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->access$100(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;)[B

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0xc

    invoke-static {v0, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 152
    const/4 v7, -0x1

    if-ne v5, v7, :cond_0

    .line 153
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;

    invoke-static {v7, v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->access$202(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;I)I

    .line 159
    .end local v0    # "chunk":[B
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v6    # "letter":Ljava/lang/String;
    :goto_1
    return-object v11

    .line 138
    :cond_2
    :try_start_1
    const-string v6, "B"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 132
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 165
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->access$200(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 166
    new-instance v0, Ljava/lang/Error;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->getPeripheral()Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/ToyPeripheral;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08007b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "error":Ljava/lang/Error;
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->getListener()Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;->onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V

    .line 172
    .end local v0    # "error":Ljava/lang/Error;
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;

    sget-object v2, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;->VERIFY:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    invoke-static {v1, v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->access$302(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;)Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$State;

    .line 170
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware$1;->this$0:Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;->access$400(Lcom/spiraltoys/cloudpets2/toy/task/ToyTaskUpdateFirmware;Z)V

    goto :goto_0
.end method
