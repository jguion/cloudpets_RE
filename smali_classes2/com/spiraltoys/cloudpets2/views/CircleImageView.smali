.class public Lcom/spiraltoys/cloudpets2/views/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BACKGROUND_COLOR:I = 0x0

.field private static final DEFAULT_BORDER_OVERLAY:Z = false

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

.field private static final SHADOW_OFFSET_Y_DP:F = 0.0f

.field private static final SHADOW_RADIUS_DP:F = 2.0f


# instance fields
.field private mBackgroundColor:I

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mBorderOverlay:Z

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDrawableRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mInnerBorderColor:I

.field private final mInnerBorderPaint:Landroid/graphics/Paint;

.field private mInnerBorderRadius:F

.field private mInnerBorderWidth:I

.field private mOuterBorderColor:I

.field private final mOuterBorderPaint:Landroid/graphics/Paint;

.field private mOuterBorderRadius:F

.field private mOuterBorderWidth:I

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 46
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 57
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mInnerBorderPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 88
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->init()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 55
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 57
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 58
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 59
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mInnerBorderPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 98
    sget-object v1, Lcom/spiraltoys/cloudpets2/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderWidth:I

    .line 101
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderColor:I

    .line 102
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mInnerBorderWidth:I

    .line 103
    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mInnerBorderColor:I

    .line 104
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBackgroundColor:I

    .line 105
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBorderOverlay:Z

    .line 107
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->init()V

    .line 110
    return-void
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 253
    if-nez p1, :cond_0

    move-object v0, v3

    .line 275
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 257
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 258
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 264
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_0
    instance-of v4, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_2

    .line 265
    const/4 v4, 0x2

    const/4 v5, 0x2

    sget-object v6, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 270
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 271
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 272
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 274
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/OutOfMemoryError;
    move-object v0, v3

    .line 275
    goto :goto_0

    .line 267
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

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
    .line 113
    sget-object v0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mReady:Z

    .line 116
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mSetupPending:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->setup()V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mSetupPending:Z

    .line 120
    :cond_0
    return-void
.end method

.method private setup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x1

    .line 280
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mReady:Z

    if-nez v0, :cond_1

    .line 281
    iput-boolean v5, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mSetupPending:Z

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 291
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 292
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 295
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 296
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 297
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 299
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 300
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 301
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 304
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mInnerBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 305
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mInnerBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 306
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mInnerBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mInnerBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mInnerBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mInnerBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 308
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mInnerBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/spiraltoys/cloudpets2/util/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/spiraltoys/cloudpets2/util/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 310
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mInnerBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v5, v0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 312
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmapHeight:I

    .line 313
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmapWidth:I

    .line 315
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 316
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v6

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderRadius:F

    .line 317
    iget v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderRadius:F

    iget v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mInnerBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mInnerBorderRadius:F

    .line 319
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 321
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBorderOverlay:Z

    if-nez v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderWidth:I

    iget v2, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mInnerBorderWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderWidth:I

    iget v3, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mInnerBorderWidth:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v6

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mDrawableRadius:F

    .line 327
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->updateShaderMatrix()V

    .line 328
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->invalidate()V

    goto/16 :goto_0
.end method

.method private updateShaderMatrix()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 336
    .local v1, "dy":F
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 338
    iget v3, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmapWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 339
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmapHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 340
    .local v2, "scale":F
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v0, v3, v6

    .line 346
    :goto_0
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 347
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float v4, v0, v6

    float-to-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    add-float v5, v1, v6

    float-to-int v5, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 349
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 350
    return-void

    .line 342
    .end local v2    # "scale":F
    :cond_0
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmapWidth:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 343
    .restart local v2    # "scale":F
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmapHeight:I

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
    .line 169
    iget v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderColor:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderWidth:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isBorderOverlay()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBorderOverlay:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBackgroundColor:I

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mDrawableRadius:F

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 151
    :cond_2
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mDrawableRadius:F

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 153
    iget v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mInnerBorderWidth:I

    if-eqz v0, :cond_3

    .line 154
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mInnerBorderRadius:F

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mInnerBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 157
    :cond_3
    iget v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderWidth:I

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderRadius:F

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderPaint:Landroid/graphics/Paint;

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
    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 165
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->setup()V

    .line 166
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 2
    .param p1, "adjustViewBounds"    # Z

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adjustViewBounds not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 2
    .param p1, "borderColor"    # I

    .prologue
    .line 173
    iget v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderColor:I

    if-ne p1, v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 177
    :cond_0
    iput p1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderColor:I

    .line 178
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mInnerBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mInnerBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setBorderColorResource(I)V
    .locals 1
    .param p1, "borderColorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->setBorderColor(I)V

    .line 185
    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1
    .param p1, "borderOverlay"    # Z

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBorderOverlay:Z

    if-ne p1, v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBorderOverlay:Z

    .line 210
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->setup()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1, "borderWidth"    # I

    .prologue
    .line 192
    iget v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderWidth:I

    if-ne p1, v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iput p1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mOuterBorderWidth:I

    .line 197
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->setup()V

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 248
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 249
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 216
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 217
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->setup()V

    .line 218
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 224
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->setup()V

    .line 225
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 231
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->setup()V

    .line 232
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 237
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 238
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->setup()V

    .line 239
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 4
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 129
    sget-object v0, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ScaleType %s not supported."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    return-void
.end method
