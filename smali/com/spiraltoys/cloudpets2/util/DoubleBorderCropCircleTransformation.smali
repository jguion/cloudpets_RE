.class public Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;
.super Ljava/lang/Object;
.source "DoubleBorderCropCircleTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Transformation",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final CIRCLE_CROP_BITMAP_PAINT:Landroid/graphics/Paint;

.field private static final CIRCLE_CROP_PAINT_FLAGS:I = 0x7

.field private static final CIRCLE_CROP_SHAPE_PAINT:Landroid/graphics/Paint;

.field private static final PAINT_FLAGS:I = 0x6


# instance fields
.field private mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final mBorderWidth:I

.field private mInnerBorderColor:I

.field private mInnerBorderPaint:Landroid/graphics/Paint;

.field private mOuterBorderColor:I

.field private mOuterBorderPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x7

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->CIRCLE_CROP_SHAPE_PAINT:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->CIRCLE_CROP_BITMAP_PAINT:Landroid/graphics/Paint;

    .line 27
    sget-object v0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->CIRCLE_CROP_BITMAP_PAINT:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p3, "outerBorderColor"    # I
    .param p4, "innerBorderColor"    # I

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p3, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mOuterBorderColor:I

    .line 41
    iput p4, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mInnerBorderColor:I

    .line 43
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mBorderWidth:I

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mInnerBorderPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mInnerBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mInnerBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mInnerBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mInnerBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mOuterBorderPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mOuterBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mOuterBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mOuterBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mOuterBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    return-void
.end method

.method private static getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 110
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method private static setAlphaIfAvailable(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hasAlpha"    # Z

    .prologue
    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DoubleBorderCropCircleTransformation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mOuterBorderColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mInnerBorderColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 11
    .param p2, "destWidth"    # I
    .param p3, "destHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 64
    .local v8, "source":Landroid/graphics/Bitmap;
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 65
    .local v1, "destMinEdge":I
    int-to-float v9, v1

    const/high16 v10, 0x40000000    # 2.0f

    div-float v5, v9, v10

    .line 67
    .local v5, "radius":F
    const/4 v2, 0x0

    .local v2, "dx":F
    const/4 v3, 0x0

    .line 68
    .local v3, "dy":F
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 70
    .local v4, "m":Landroid/graphics/Matrix;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    mul-int/2addr v9, p3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int/2addr v10, p2

    if-le v9, v10, :cond_1

    .line 71
    int-to-float v9, p3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v7, v9, v10

    .line 72
    .local v7, "scale":F
    int-to-float v9, p2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v7

    sub-float/2addr v9, v10

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v2, v9, v10

    .line 78
    :goto_0
    invoke-virtual {v4, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 79
    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v9, v2

    float-to-int v9, v9

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v10, v3

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 81
    iget-object v9, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v8}, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-interface {v9, p2, p3, v10}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 82
    .local v6, "result":Landroid/graphics/Bitmap;
    if-nez v6, :cond_0

    .line 83
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 86
    :cond_0
    const/4 v9, 0x1

    invoke-static {v6, v9}, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->setAlphaIfAvailable(Landroid/graphics/Bitmap;Z)V

    .line 87
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 90
    .local v0, "canvas":Landroid/graphics/Canvas;
    sget-object v9, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->CIRCLE_CROP_SHAPE_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v5, v5, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 94
    sget-object v9, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->CIRCLE_CROP_BITMAP_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v8, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 97
    iget v9, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mBorderWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x3fa00000    # 1.25f

    mul-float/2addr v9, v10

    sub-float v9, v5, v9

    iget-object v10, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mInnerBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v5, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 98
    iget v9, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mBorderWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float v9, v5, v9

    iget-object v10, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mOuterBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v5, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 100
    iget-object v9, p0, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v6, v9}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object v9

    return-object v9

    .line 74
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "result":Landroid/graphics/Bitmap;
    .end local v7    # "scale":F
    :cond_1
    int-to-float v9, p2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v7, v9, v10

    .line 75
    .restart local v7    # "scale":F
    int-to-float v9, p3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v7

    sub-float/2addr v9, v10

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v3, v9, v10

    goto :goto_0
.end method
