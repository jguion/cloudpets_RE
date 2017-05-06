.class public Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;
.super Ljava/lang/Object;
.source "RoundedRectTransformation.java"

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

.field private static final NUMBER_OF_SCRIM_GRADIENT_STOPS:I = 0xa

.field private static final PAINT_FLAGS:I = 0x6

.field private static final SCRIM_BASE_COLOR:I = 0x44000000


# instance fields
.field private mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final mBorderWidth:F

.field private final mCornerRadius:F

.field private mInnerBorderColor:I

.field private mInnerBorderPaint:Landroid/graphics/Paint;

.field private mOuterBorderColor:I

.field private mOuterBorderPaint:Landroid/graphics/Paint;

.field private final mUseScrim:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x7

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->CIRCLE_CROP_SHAPE_PAINT:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->CIRCLE_CROP_BITMAP_PAINT:Landroid/graphics/Paint;

    .line 33
    sget-object v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->CIRCLE_CROP_BITMAP_PAINT:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IIFZ)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p3, "outerBorderColor"    # I
    .param p4, "innerBorderColor"    # I
    .param p5, "cornerRadius"    # F
    .param p6, "useScrim"    # Z

    .prologue
    const/4 v3, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p3, p0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mOuterBorderColor:I

    .line 50
    iput p4, p0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mInnerBorderColor:I

    .line 51
    iput p5, p0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mCornerRadius:F

    .line 53
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mBorderWidth:F

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mInnerBorderPaint:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mInnerBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mInnerBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mInnerBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mInnerBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mBorderWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mOuterBorderPaint:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mOuterBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mOuterBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mOuterBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mOuterBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    iput-boolean p6, p0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mUseScrim:Z

    .line 71
    return-void
.end method

.method private static getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 148
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method private getScrimPaint(I)Landroid/graphics/Paint;
    .locals 20
    .param p1, "height"    # I

    .prologue
    .line 122
    const/16 v2, 0xa

    new-array v7, v2, [I

    .line 124
    .local v7, "stopColors":[I
    const/high16 v2, 0x44000000    # 512.0f

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v15

    .line 125
    .local v15, "red":I
    const/high16 v2, 0x44000000    # 512.0f

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v12

    .line 126
    .local v12, "green":I
    const/high16 v2, 0x44000000    # 512.0f

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    .line 127
    .local v11, "blue":I
    const/high16 v2, 0x44000000    # 512.0f

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    .line 129
    .local v10, "alpha":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v13, v2, :cond_0

    .line 130
    int-to-float v2, v13

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x41100000    # 9.0f

    div-float v17, v2, v3

    .line 131
    .local v17, "x":F
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    move/from16 v0, v17

    float-to-double v8, v0

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    move-wide/from16 v0, v18

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-float v14, v2

    .line 132
    .local v14, "opacity":F
    int-to-float v2, v10

    mul-float/2addr v2, v14

    float-to-int v2, v2

    invoke-static {v2, v15, v12, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v7, v13

    .line 129
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 135
    .end local v14    # "opacity":F
    .end local v17    # "x":F
    :cond_0
    new-instance v16, Landroid/graphics/Paint;

    const/4 v2, 0x7

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 136
    .local v16, "scrimPaint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, p1

    int-to-float v6, v0

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 138
    return-object v16
.end method

.method private static setAlphaIfAvailable(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hasAlpha"    # Z

    .prologue
    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DoubleBorderCropCircleTransformation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mOuterBorderColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mInnerBorderColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mUseScrim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 19
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
    .line 75
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Landroid/graphics/Bitmap;>;"
    invoke-interface/range {p1 .. p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    .line 76
    .local v12, "source":Landroid/graphics/Bitmap;
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 77
    .local v3, "destMinEdge":I
    int-to-float v13, v3

    const/high16 v14, 0x40000000    # 2.0f

    div-float v9, v13, v14

    .line 79
    .local v9, "radius":F
    const/4 v4, 0x0

    .local v4, "dx":F
    const/4 v5, 0x0

    .line 80
    .local v5, "dy":F
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 82
    .local v8, "m":Landroid/graphics/Matrix;
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    mul-int v13, v13, p3

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    mul-int v14, v14, p2

    if-le v13, v14, :cond_2

    .line 83
    move/from16 v0, p3

    int-to-float v13, v0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v11, v13, v14

    .line 84
    .local v11, "scale":F
    move/from16 v0, p2

    int-to-float v13, v0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v11

    sub-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v4, v13, v14

    .line 90
    :goto_0
    invoke-virtual {v8, v11, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 91
    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v13, v4

    float-to-int v13, v13

    int-to-float v13, v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v14, v5

    float-to-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v8, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 93
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v12}, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v14

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v13, v0, v1, v14}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 94
    .local v10, "result":Landroid/graphics/Bitmap;
    if-nez v10, :cond_0

    .line 95
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 98
    :cond_0
    const/4 v13, 0x1

    invoke-static {v10, v13}, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->setAlphaIfAvailable(Landroid/graphics/Bitmap;Z)V

    .line 99
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 102
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mBorderWidth:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mBorderWidth:F

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mBorderWidth:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mBorderWidth:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-direct/range {v13 .. v17}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mCornerRadius:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mCornerRadius:F

    sget-object v16, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->CIRCLE_CROP_SHAPE_PAINT:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 105
    sget-object v13, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->CIRCLE_CROP_BITMAP_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v2, v12, v8, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 107
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mUseScrim:Z

    if-eqz v13, :cond_1

    .line 108
    new-instance v13, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mBorderWidth:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mBorderWidth:F

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mBorderWidth:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mBorderWidth:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-direct/range {v13 .. v17}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mCornerRadius:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mCornerRadius:F

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->getScrimPaint(I)Landroid/graphics/Paint;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 111
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mOuterBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float v7, v13, v14

    .line 112
    .local v7, "halfOuterBorderWidth":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mInnerBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float v6, v13, v14

    .line 115
    .local v6, "halfInnerBorderWidth":F
    new-instance v13, Landroid/graphics/RectF;

    move/from16 v0, p2

    int-to-float v14, v0

    sub-float/2addr v14, v6

    move/from16 v0, p3

    int-to-float v15, v0

    sub-float/2addr v15, v6

    invoke-direct {v13, v6, v6, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mCornerRadius:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mCornerRadius:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mInnerBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 116
    new-instance v13, Landroid/graphics/RectF;

    move/from16 v0, p2

    int-to-float v14, v0

    sub-float/2addr v14, v7

    move/from16 v0, p3

    int-to-float v15, v0

    sub-float/2addr v15, v7

    invoke-direct {v13, v7, v7, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mCornerRadius:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mCornerRadius:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mOuterBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;->mBitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v10, v13}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object v13

    return-object v13

    .line 86
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "halfInnerBorderWidth":F
    .end local v7    # "halfOuterBorderWidth":F
    .end local v10    # "result":Landroid/graphics/Bitmap;
    .end local v11    # "scale":F
    :cond_2
    move/from16 v0, p2

    int-to-float v13, v0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float v11, v13, v14

    .line 87
    .restart local v11    # "scale":F
    move/from16 v0, p3

    int-to-float v13, v0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v11

    sub-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v5, v13, v14

    goto/16 :goto_0
.end method
