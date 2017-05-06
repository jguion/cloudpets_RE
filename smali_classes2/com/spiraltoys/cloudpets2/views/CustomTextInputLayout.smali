.class public Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;
.super Landroid/support/design/widget/TextInputLayout;
.source "CustomTextInputLayout.java"


# instance fields
.field private mHint:Ljava/lang/CharSequence;

.field private mIsHintSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 33
    instance-of v5, p1, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    move-object v5, p1

    .line 35
    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;->mHint:Ljava/lang/CharSequence;

    .line 37
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/TextInputLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "fonts/merge_light.otf"

    invoke-static {v5, v6}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 42
    .local v4, "typeface":Landroid/graphics/Typeface;
    :try_start_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mCollapsingTextHelper"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 46
    .local v1, "collapsingTextHelperField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, "collapsingTextHelper":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mTextPaint"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 51
    .local v3, "textPaintField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 54
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/TextPaint;

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    .end local v0    # "collapsingTextHelper":Ljava/lang/Object;
    .end local v1    # "collapsingTextHelperField":Ljava/lang/reflect/Field;
    .end local v3    # "textPaintField":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 76
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mHint"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 77
    .local v1, "hintField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 78
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    .end local v1    # "hintField":Ljava/lang/reflect/Field;
    :goto_0
    return-object v2

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 83
    const/4 v2, 0x0

    goto :goto_0

    .line 79
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/support/design/widget/TextInputLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;->mIsHintSet:Z

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 108
    .local v0, "currentEditTextHint":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 109
    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;->mHint:Ljava/lang/CharSequence;

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;->mIsHintSet:Z

    .line 114
    .end local v0    # "currentEditTextHint":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/design/widget/TextInputLayout;->removeView(Landroid/view/View;)V

    .line 64
    :try_start_0
    instance-of v2, p1, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mEditText"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 66
    .local v1, "editTextField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 67
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    .end local v1    # "editTextField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setTextWithoutAnimation(Ljava/lang/String;)V
    .locals 3
    .param p1, "textToSet"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 89
    .local v0, "hint":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 91
    .local v1, "input":Landroid/widget/EditText;
    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;->removeView(Landroid/view/View;)V

    .line 92
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;->addView(Landroid/view/View;)V

    .line 96
    return-void
.end method
