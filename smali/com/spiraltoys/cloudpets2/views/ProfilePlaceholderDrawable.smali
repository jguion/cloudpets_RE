.class public Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProfilePlaceholderDrawable.java"


# static fields
.field private static final FONT_LARGE:Ljava/lang/String; = "fonts/merge_light.otf"

.field private static final FONT_SMALL:Ljava/lang/String; = "fonts/merge_regular.otf"


# instance fields
.field private final mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mText:Ljava/lang/String;

.field private final mTextBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Typeface;II)V
    .locals 4
    .param p1, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "typeface"    # Landroid/graphics/Typeface;
    .param p4, "textColor"    # I
    .param p5, "textSize"    # I

    .prologue
    const/4 v2, 0x1

    .line 85
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->mTextBounds:Landroid/graphics/Rect;

    .line 86
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->mText:Ljava/lang/String;

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 92
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez p3, :cond_0

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p3

    .end local p3    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 93
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 96
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 97
    return-void
.end method

.method public static getFloatingProfileSwitcherInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/merge_regular.otf"

    invoke-static {v2, v3}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f0063

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c00c8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Typeface;II)V

    .line 30
    return-object v0
.end method

.method public static getFloatingProfileSwitcherLargeInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/merge_light.otf"

    invoke-static {v2, v3}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f0063

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c00c7

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Typeface;II)V

    .line 39
    return-object v0
.end method

.method public static getLargeInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/merge_light.otf"

    invoke-static {v2, v3}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f006e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c00c7

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Typeface;II)V

    .line 76
    return-object v0
.end method

.method public static getLargeInstanceAccentBorder(Landroid/content/Context;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/merge_light.otf"

    invoke-static {v2, v3}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f006e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c00c7

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Typeface;II)V

    .line 66
    return-object v0
.end method

.method public static getListItemInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/merge_regular.otf"

    invoke-static {v2, v3}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f006e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c00c8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Typeface;II)V

    .line 48
    return-object v0
.end method

.method public static getListItemInstanceLightBorder(Landroid/content/Context;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020107

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/merge_regular.otf"

    invoke-static {v2, v3}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f006e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c00c8

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Typeface;II)V

    .line 57
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 103
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 108
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 109
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, -0x1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 120
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 115
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 125
    return-void
.end method
