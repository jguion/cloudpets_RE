.class public Lcom/spiraltoys/cloudpets2/views/ClippedCornerImageView;
.super Landroid/widget/ImageView;
.source "ClippedCornerImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public static getRoundedCornerBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIIZZZZ)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Landroid/graphics/Bitmap;
    .param p2, "pixels"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "squareTL"    # Z
    .param p6, "squareTR"    # Z
    .param p7, "squareBL"    # Z
    .param p8, "squareBR"    # Z

    .prologue
    .line 51
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 52
    .local v10, "output":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 53
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v9, v3, Landroid/util/DisplayMetrics;->density:F

    .line 55
    .local v9, "densityMultiplier":F
    const v8, -0xbdbdbe

    .line 56
    .local v8, "color":I
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 57
    .local v7, "paint":Landroid/graphics/Paint;
    new-instance v11, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v11, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 58
    .local v11, "rect":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 61
    .local v12, "rectF":Landroid/graphics/RectF;
    move/from16 v0, p2

    int-to-float v3, v0

    mul-float v13, v3, v9

    .line 63
    .local v13, "roundPx":F
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 65
    const v3, -0xbdbdbe

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    invoke-virtual {v2, v12, v13, v13, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 70
    if-eqz p5, :cond_0

    .line 71
    const/4 v3, 0x0

    const/4 v4, 0x0

    div-int/lit8 v5, p3, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, p4, 0x2

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 73
    :cond_0
    if-eqz p6, :cond_1

    .line 74
    div-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    move/from16 v0, p3

    int-to-float v5, v0

    div-int/lit8 v6, p4, 0x2

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    :cond_1
    if-eqz p7, :cond_2

    .line 77
    const/4 v3, 0x0

    div-int/lit8 v4, p4, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, p3, 0x2

    int-to-float v5, v5

    move/from16 v0, p4

    int-to-float v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 79
    :cond_2
    if-eqz p8, :cond_3

    .line 80
    div-int/lit8 v3, p3, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p4, 0x2

    int-to-float v4, v4

    move/from16 v0, p3

    int-to-float v5, v0

    move/from16 v0, p4

    int-to-float v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 83
    :cond_3
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 84
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 86
    return-object v10
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/ClippedCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 38
    .local v10, "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    .end local v10    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 39
    .local v9, "b":Landroid/graphics/Bitmap;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v9, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 41
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/ClippedCornerImageView;->getWidth()I

    move-result v3

    .local v3, "w":I
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/ClippedCornerImageView;->getHeight()I

    move-result v4

    .line 44
    .local v4, "h":I
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/ClippedCornerImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x8

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcom/spiraltoys/cloudpets2/views/ClippedCornerImageView;->getRoundedCornerBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIIZZZZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 45
    .local v11, "roundBitmap":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    invoke-virtual {p1, v11, v12, v12, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 46
    return-void
.end method
