.class Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;

.field final synthetic val$profile:Lcom/spiraltoys/cloudpets2/model/Profile;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;->val$profile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 78
    new-instance v9, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1$1;

    invoke-direct {v9, p0}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1$1;-><init>(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;)V

    .line 85
    .local v9, "saveProfileRunnable":Ljava/lang/Runnable;
    iget-object v11, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;

    iget-object v11, v11, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->val$c:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c00ce

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 86
    .local v10, "width":I
    iget-object v11, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;

    iget-object v11, v11, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->val$c:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c00c3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 88
    .local v4, "height":I
    const/4 v1, 0x0

    .line 90
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v11, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;

    iget-object v11, v11, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->val$c:Landroid/content/Context;

    invoke-static {v11}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v11

    iget-object v12, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;

    iget-object v12, v12, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->val$credentials:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;

    .line 91
    invoke-static {v12}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->access$200(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v11

    .line 92
    invoke-virtual {v11}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v11

    .line 93
    invoke-virtual {v11}, Lcom/bumptech/glide/BitmapTypeRequest;->centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v11

    .line 94
    invoke-virtual {v11, v10, v4}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v11

    .line 95
    invoke-interface {v11}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    .line 100
    :goto_0
    if-nez v1, :cond_0

    .line 101
    new-instance v11, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v11, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    :goto_1
    return-void

    .line 96
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 106
    .local v6, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x55

    invoke-virtual {v1, v11, v12, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 108
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 109
    .local v5, "imageData":[B
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".jpeg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "fileName":Ljava/lang/String;
    new-instance v7, Lcom/parse/ParseFile;

    invoke-direct {v7, v3, v5}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;[B)V

    .line 114
    .local v7, "parseFile":Lcom/parse/ParseFile;
    :try_start_1
    invoke-virtual {v7}, Lcom/parse/ParseFile;->save()V
    :try_end_1
    .catch Lcom/parse/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    new-instance v8, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    invoke-direct {v8}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;-><init>()V

    .line 126
    .local v8, "portrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    invoke-virtual {v8, v7}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->setFile(Lcom/parse/ParseFile;)V

    .line 127
    invoke-virtual {v8, v3}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->setLocalFilename(Ljava/lang/String;)V

    .line 128
    iget-object v11, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;->val$profile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v11, v8}, Lcom/spiraltoys/cloudpets2/model/Profile;->setPortrait(Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;)V

    .line 130
    new-instance v11, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v11, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 115
    .end local v8    # "portrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :catch_1
    move-exception v2

    .line 116
    .local v2, "e":Lcom/parse/ParseException;
    new-instance v11, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v12, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1$2;

    invoke-direct {v12, p0, v2}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1$2;-><init>(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;Lcom/parse/ParseException;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 96
    .end local v2    # "e":Lcom/parse/ParseException;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v5    # "imageData":[B
    .end local v6    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "parseFile":Lcom/parse/ParseFile;
    :catch_2
    move-exception v2

    goto :goto_2
.end method
