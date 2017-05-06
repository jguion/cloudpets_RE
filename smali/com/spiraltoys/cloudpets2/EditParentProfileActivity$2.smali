.class Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2;
.super Ljava/lang/Object;
.source "EditParentProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->updateAndSaveProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 202
    new-instance v9, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2$1;

    invoke-direct {v9, p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2$1;-><init>(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2;)V

    .line 209
    .local v9, "saveProfileRunnable":Ljava/lang/Runnable;
    iget-object v11, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-virtual {v11}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c00ce

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 210
    .local v10, "width":I
    iget-object v11, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-virtual {v11}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c00c3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 212
    .local v4, "height":I
    const/4 v1, 0x0

    .line 214
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v11, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-static {v11}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v11

    iget-object v12, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    iget-object v12, v12, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfilePhotoUri:Landroid/net/Uri;

    .line 215
    invoke-virtual {v11, v12}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v11

    .line 216
    invoke-virtual {v11}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v11

    .line 217
    invoke-virtual {v11}, Lcom/bumptech/glide/BitmapTypeRequest;->centerCrop()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v11

    .line 218
    invoke-virtual {v11, v10, v4}, Lcom/bumptech/glide/BitmapRequestBuilder;->into(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v11

    .line 219
    invoke-interface {v11}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    :goto_0
    if-nez v1, :cond_0

    .line 225
    new-instance v11, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v11, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    :goto_1
    return-void

    .line 220
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 229
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 230
    .local v6, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x55

    invoke-virtual {v1, v11, v12, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 232
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 233
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

    .line 235
    .local v3, "fileName":Ljava/lang/String;
    new-instance v7, Lcom/parse/ParseFile;

    invoke-direct {v7, v3, v5}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;[B)V

    .line 236
    .local v7, "parseFile":Lcom/parse/ParseFile;
    new-instance v8, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    invoke-direct {v8}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;-><init>()V

    .line 237
    .local v8, "portrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    invoke-virtual {v8, v7}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->setFile(Lcom/parse/ParseFile;)V

    .line 238
    invoke-virtual {v8, v3}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->setLocalFilename(Ljava/lang/String;)V

    .line 239
    iget-object v11, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;
    invoke-static {v11}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->access$100(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/spiraltoys/cloudpets2/model/Profile;->setPortrait(Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;)V

    .line 241
    new-instance v11, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v11, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 220
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v5    # "imageData":[B
    .end local v6    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "parseFile":Lcom/parse/ParseFile;
    .end local v8    # "portrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :catch_1
    move-exception v2

    goto :goto_2
.end method
