.class public Lcom/afollestad/materialdialogs/util/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afollestad/materialdialogs/util/DialogUtils$3;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method public static adjustAlpha(IF)I
    .locals 5
    .param p0, "color"    # I
    .param p1, "factor"    # F

    .prologue
    .line 38
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 39
    .local v0, "alpha":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 40
    .local v3, "red":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 41
    .local v2, "green":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 42
    .local v1, "blue":I
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method public static getActionTextColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 84
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 85
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 86
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 87
    iget v1, v0, Landroid/util/TypedValue;->data:I

    invoke-static {p0, v1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 94
    :goto_0
    return-object v1

    .line 90
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-gt v1, v2, :cond_1

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_0
.end method

.method public static getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newPrimaryColor"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 237
    const v3, 0x1010036

    invoke-static {p0, v3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v1

    .line 238
    .local v1, "fallBackButtonColor":I
    if-nez p1, :cond_0

    move p1, v1

    .line 239
    :cond_0
    new-array v2, v7, [[I

    new-array v3, v6, [I

    const v4, -0x101009e

    aput v4, v3, v5

    aput-object v3, v2, v5

    new-array v3, v5, [I

    aput-object v3, v2, v6

    .line 243
    .local v2, "states":[[I
    new-array v0, v7, [I

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {p1, v3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->adjustAlpha(IF)I

    move-result v3

    aput v3, v0, v5

    aput p1, v0, v6

    .line 247
    .local v0, "colors":[I
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 115
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getColorArray(Landroid/content/Context;I)[I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "array"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param

    .prologue
    .line 251
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 257
    :goto_0
    return-object v0

    .line 252
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 253
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v0, v3, [I

    .line 254
    .local v0, "colors":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 255
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    aput v3, v0, v1

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 256
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private static gravityEnumToAttrInt(Lcom/afollestad/materialdialogs/GravityEnum;)I
    .locals 2
    .param p0, "value"    # Lcom/afollestad/materialdialogs/GravityEnum;

    .prologue
    .line 126
    sget-object v0, Lcom/afollestad/materialdialogs/util/DialogUtils$3;->$SwitchMap$com$afollestad$materialdialogs$GravityEnum:[I

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/GravityEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 128
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static hideKeyboard(Landroid/content/DialogInterface;Lcom/afollestad/materialdialogs/MaterialDialog$Builder;)V
    .locals 3
    .param p0, "di"    # Landroid/content/DialogInterface;
    .param p1, "builder"    # Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .prologue
    .line 223
    move-object v0, p0

    check-cast v0, Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 224
    .local v0, "dialog":Lcom/afollestad/materialdialogs/MaterialDialog;
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getInputEditText()Landroid/widget/EditText;

    move-result-object v1

    if-nez v1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getInputEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/afollestad/materialdialogs/util/DialogUtils$2;

    invoke-direct {v2, v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils$2;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/MaterialDialog$Builder;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static isColorDark(I)Z
    .locals 10
    .param p0, "color"    # I

    .prologue
    .line 195
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x3fd322d0e5604189L    # 0.299

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    const-wide v6, 0x3fe2c8b439581062L    # 0.587

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x3fbd2f1a9fbe76c9L    # 0.114

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    div-double/2addr v4, v6

    sub-double v0, v2, v4

    .line 196
    .local v0, "darkness":D
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static resolveActionTextColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p2, "fallback"    # Landroid/content/res/ColorStateList;

    .prologue
    const/4 v5, 0x0

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    aput p1, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 63
    .local v2, "value":Landroid/util/TypedValue;
    if-nez v2, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .end local p2    # "fallback":Landroid/content/res/ColorStateList;
    :goto_0
    return-object p2

    .line 66
    .restart local p2    # "fallback":Landroid/content/res/ColorStateList;
    :cond_0
    :try_start_1
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_1

    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_1

    .line 67
    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-static {p0, v3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p2

    .line 77
    .end local p2    # "fallback":Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 69
    .restart local p2    # "fallback":Landroid/content/res/ColorStateList;
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 70
    .local v1, "stateList":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    move-object p2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .end local v1    # "stateList":Landroid/content/res/ColorStateList;
    .end local v2    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method public static resolveBoolean(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static resolveBoolean(Landroid/content/Context;IZ)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p2, "fallback"    # Z

    .prologue
    const/4 v3, 0x0

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 184
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 186
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public static resolveColor(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static resolveColor(Landroid/content/Context;II)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p2, "fallback"    # I

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public static resolveDimension(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 169
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveDimension(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method private static resolveDimension(Landroid/content/Context;II)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p2, "fallback"    # I

    .prologue
    const/4 v3, 0x0

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 175
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 177
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public static resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveDrawable(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static resolveDrawable(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p2, "fallback"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput p1, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 159
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 160
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 161
    move-object v1, p2

    .line 164
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method public static resolveFloat(Landroid/content/Context;I)F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .prologue
    const/4 v3, 0x0

    .line 29
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public static resolveGravityEnum(Landroid/content/Context;ILcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/GravityEnum;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p2, "defaultGravity"    # Lcom/afollestad/materialdialogs/GravityEnum;

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 139
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->gravityEnumToAttrInt(Lcom/afollestad/materialdialogs/GravityEnum;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 145
    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    return-object v1

    .line 141
    :pswitch_0
    :try_start_1
    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->CENTER:Lcom/afollestad/materialdialogs/GravityEnum;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 143
    :pswitch_1
    :try_start_2
    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static resolveString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 120
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 121
    .local v0, "v":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 122
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 202
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static showKeyboard(Landroid/content/DialogInterface;Lcom/afollestad/materialdialogs/MaterialDialog$Builder;)V
    .locals 3
    .param p0, "di"    # Landroid/content/DialogInterface;
    .param p1, "builder"    # Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .prologue
    .line 209
    move-object v0, p0

    check-cast v0, Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 210
    .local v0, "dialog":Lcom/afollestad/materialdialogs/MaterialDialog;
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getInputEditText()Landroid/widget/EditText;

    move-result-object v1

    if-nez v1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getInputEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/afollestad/materialdialogs/util/DialogUtils$1;

    invoke-direct {v2, v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils$1;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/MaterialDialog$Builder;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
