.class public Lcom/spiraltoys/cloudpets2/views/AdImageView;
.super Landroid/widget/ImageView;
.source "AdImageView.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLOR_DRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_OVERLAY:Z = false

.field private static final DEFAULT_BORDER_WIDTH:I = 0x0

.field private static final RADIUS_WIDTH_MULTIPLIER:F = 0.65f

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderColor:I

.field private mBorderOverlay:Z

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDrawableRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 29
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 44
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderColor:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderWidth:I

    .line 64
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->init()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v3, -0x1000000

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 38
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 40
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 41
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 44
    iput v3, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderColor:I

    .line 45
    iput v2, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderWidth:I

    .line 74
    sget-object v1, Lcom/spiraltoys/cloudpets2/R$styleable;->AdImageView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderWidth:I

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderColor:I

    .line 78
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderOverlay:Z

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->init()V

    .line 83
    return-void
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 202
    if-nez p1, :cond_0

    move-object v0, v3

    .line 224
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 206
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 207
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 213
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_0
    instance-of v4, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_2

    .line 214
    const/4 v4, 0x2

    const/4 v5, 0x2

    sget-object v6, Lcom/spiraltoys/cloudpets2/views/AdImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 220
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 221
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 223
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/OutOfMemoryError;
    move-object v0, v3

    .line 224
    goto :goto_0

    .line 216
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Lcom/spiraltoys/cloudpets2/views/AdImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mReady:Z

    .line 89
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mSetupPending:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->setup()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mSetupPending:Z

    .line 93
    :cond_0
    return-void
.end method

.method private setup()V
    .locals 7

    .prologue
    const v6, 0x3f266666    # 0.65f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 229
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mReady:Z

    if-nez v0, :cond_1

    .line 230
    iput-boolean v4, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mSetupPending:Z

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 240
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 241
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 243
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 244
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 245
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 248
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmapHeight:I

    .line 249
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmapWidth:I

    .line 251
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 252
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderRadius:F

    .line 254
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 255
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderOverlay:Z

    if-nez v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mDrawableRadius:F

    .line 260
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->updateShaderMatrix()V

    .line 261
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->invalidate()V

    goto/16 :goto_0
.end method

.method private updateShaderMatrix()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 269
    .local v1, "dy":F
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 271
    iget v3, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmapWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 272
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmapHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 273
    .local v2, "scale":F
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v0, v3, v6

    .line 279
    :goto_0
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 280
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float v4, v0, v6

    float-to-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    add-float v5, v1, v6

    float-to-int v5, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 282
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 283
    return-void

    .line 275
    .end local v2    # "scale":F
    :cond_0
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmapWidth:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 276
    .restart local v2    # "scale":F
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v1, v3, v6

    goto :goto_0
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderWidth:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isBorderOverlay()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderOverlay:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mDrawableRadius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mDrawableRadius:F

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 107
    iget v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderWidth:I

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderRadius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderRadius:F

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 115
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->setup()V

    .line 116
    return-void
.end method

.method public setBorderColor(I)V
    .locals 2
    .param p1, "borderColor"    # I

    .prologue
    .line 123
    iget v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderColor:I

    if-ne p1, v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    iput p1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderColor:I

    .line 128
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->invalidate()V

    goto :goto_0
.end method

.method public setBorderColorResource(I)V
    .locals 1
    .param p1, "borderColorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->setBorderColor(I)V

    .line 134
    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1
    .param p1, "borderOverlay"    # Z

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderOverlay:Z

    if-ne p1, v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderOverlay:Z

    .line 159
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->setup()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1, "borderWidth"    # I

    .prologue
    .line 141
    iget v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderWidth:I

    if-ne p1, v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iput p1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBorderWidth:I

    .line 146
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->setup()V

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 197
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 198
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->invalidate()V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 165
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 166
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->setup()V

    .line 167
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 173
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->setup()V

    .line 174
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 180
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->setup()V

    .line 181
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 186
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/AdImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 187
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/AdImageView;->setup()V

    .line 188
    return-void
.end method
