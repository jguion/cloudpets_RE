.class public Landroid/databinding/adapters/TextViewBindingAdapter;
.super Ljava/lang/Object;
.source "TextViewBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:autoLink"
            method = "setAutoLinkMask"
            type = Landroid/widget/TextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:drawablePadding"
            method = "setCompoundDrawablePadding"
            type = Landroid/widget/TextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:editorExtras"
            method = "setInputExtras"
            type = Landroid/widget/TextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:inputType"
            method = "setRawInputType"
            type = Landroid/widget/TextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:scrollHorizontally"
            method = "setHorizontallyScrolling"
            type = Landroid/widget/TextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:textAllCaps"
            method = "setAllCaps"
            type = Landroid/widget/TextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:textColorHighlight"
            method = "setHighlightColor"
            type = Landroid/widget/TextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:textColorHint"
            method = "setHintTextColor"
            type = Landroid/widget/TextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:textColorLink"
            method = "setLinkTextColor"
            type = Landroid/widget/TextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onEditorAction"
            method = "setOnEditorActionListener"
            type = Landroid/widget/TextView;
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;,
        Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;,
        Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;
    }
.end annotation


# static fields
.field public static final DECIMAL:I = 0x5

.field public static final INTEGER:I = 0x1

.field public static final SIGNED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TextViewBindingAdapters"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    return-void
.end method

.method public static setAutoText(Landroid/widget/TextView;Z)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "autoText"    # Z
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:autoText"
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    .line 64
    .local v2, "listener":Landroid/text/method/KeyListener;
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 66
    .local v0, "capitalize":Landroid/text/method/TextKeyListener$Capitalize;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v1

    .line 67
    .local v1, "inputType":I
    :goto_0
    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_2

    .line 68
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 74
    :cond_0
    :goto_1
    invoke-static {p1, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 75
    return-void

    .line 66
    .end local v1    # "inputType":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 69
    .restart local v1    # "inputType":I
    :cond_2
    and-int/lit16 v3, v1, 0x2000

    if-eqz v3, :cond_3

    .line 70
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_1

    .line 71
    :cond_3
    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_0

    .line 72
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_1
.end method

.method public static setBufferType(Landroid/widget/TextView;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "bufferType"    # Landroid/widget/TextView$BufferType;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:bufferType"
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 89
    return-void
.end method

.method public static setCapitalize(Landroid/widget/TextView;Landroid/text/method/TextKeyListener$Capitalize;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "capitalize"    # Landroid/text/method/TextKeyListener$Capitalize;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:capitalize"
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    .line 81
    .local v2, "listener":Landroid/text/method/KeyListener;
    invoke-interface {v2}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v1

    .line 82
    .local v1, "inputType":I
    const v3, 0x8000

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 83
    .local v0, "autoText":Z
    :goto_0
    invoke-static {v0, p1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 84
    return-void

    .line 82
    .end local v0    # "autoText":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDigits(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "digits"    # Ljava/lang/CharSequence;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:digits"
        }
    .end annotation

    .prologue
    .line 93
    if-eqz p1, :cond_1

    .line 94
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/DigitsKeyListener;

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_0
.end method

.method public static setDrawableBottom(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:drawableBottom"
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {p0, v1, v2, v3, p1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 119
    return-void
.end method

.method public static setDrawableEnd(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:drawableEnd"
        }
    .end annotation

    .prologue
    .line 151
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    .line 152
    invoke-static {p0, p1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setDrawableRight(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 155
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {p0, v1, v2, p1, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setDrawableLeft(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:drawableLeft"
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 124
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {p0, p1, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 125
    return-void
.end method

.method public static setDrawableRight(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:drawableRight"
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {p0, v1, v2, p1, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 131
    return-void
.end method

.method public static setDrawableStart(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:drawableStart"
        }
    .end annotation

    .prologue
    .line 141
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    .line 142
    invoke-static {p0, p1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setDrawableLeft(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {p0, p1, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setDrawableTop(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:drawableTop"
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 136
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {p0, v1, p1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 137
    return-void
.end method

.method public static setImeActionLabel(Landroid/widget/TextView;I)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "value"    # I
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:imeActionId"
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/widget/TextView;->getImeActionLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 167
    return-void
.end method

.method public static setImeActionLabel(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "value"    # Ljava/lang/CharSequence;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:imeActionLabel"
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/widget/TextView;->getImeActionId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 162
    return-void
.end method

.method public static setInputMethod(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "inputMethod"    # Ljava/lang/CharSequence;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:inputMethod"
        }
    .end annotation

    .prologue
    .line 172
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 173
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/method/KeyListener;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 181
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "TextViewBindingAdapters"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create input method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 176
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/InstantiationException;
    const-string v2, "TextViewBindingAdapters"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create input method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 178
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "TextViewBindingAdapters"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create input method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setLineSpacingExtra(Landroid/widget/TextView;F)V
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "value"    # F
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:lineSpacingExtra"
        }
    .end annotation

    .prologue
    .line 185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 186
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto :goto_0
.end method

.method public static setLineSpacingMultiplier(Landroid/widget/TextView;F)V
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "value"    # F
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:lineSpacingMultiplier"
        }
    .end annotation

    .prologue
    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 195
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto :goto_0
.end method

.method public static setListener(Landroid/widget/TextView;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "after"    # Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:afterTextChanged"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 291
    invoke-static {p0, v0, v0, p1}, Landroid/databinding/adapters/TextViewBindingAdapter;->setListener(Landroid/widget/TextView;Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V

    .line 292
    return-void
.end method

.method public static setListener(Landroid/widget/TextView;Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "before"    # Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:beforeTextChanged"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 296
    invoke-static {p0, p1, v0, v0}, Landroid/databinding/adapters/TextViewBindingAdapter;->setListener(Landroid/widget/TextView;Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V

    .line 297
    return-void
.end method

.method public static setListener(Landroid/widget/TextView;Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "before"    # Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;
    .param p2, "after"    # Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:beforeTextChanged",
            "android:afterTextChanged"
        }
    .end annotation

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/databinding/adapters/TextViewBindingAdapter;->setListener(Landroid/widget/TextView;Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V

    .line 308
    return-void
.end method

.method public static setListener(Landroid/widget/TextView;Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "before"    # Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;
    .param p2, "on"    # Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:beforeTextChanged",
            "android:onTextChanged"
        }
    .end annotation

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/databinding/adapters/TextViewBindingAdapter;->setListener(Landroid/widget/TextView;Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V

    .line 314
    return-void
.end method

.method public static setListener(Landroid/widget/TextView;Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V
    .locals 3
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "before"    # Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;
    .param p2, "on"    # Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;
    .param p3, "after"    # Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:beforeTextChanged",
            "android:onTextChanged",
            "android:afterTextChanged"
        }
    .end annotation

    .prologue
    .line 326
    if-nez p1, :cond_2

    if-nez p3, :cond_2

    if-nez p2, :cond_2

    .line 327
    const/4 v0, 0x0

    .line 352
    .local v0, "newValue":Landroid/text/TextWatcher;
    :goto_0
    sget v2, Lcom/android/databinding/library/baseAdapters/R$id;->textWatcher:I

    invoke-static {p0, v0, v2}, Landroid/databinding/adapters/ListenerUtil;->trackListener(Landroid/view/View;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    .line 353
    .local v1, "oldValue":Landroid/text/TextWatcher;
    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 356
    :cond_0
    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 359
    :cond_1
    return-void

    .line 329
    .end local v0    # "newValue":Landroid/text/TextWatcher;
    .end local v1    # "oldValue":Landroid/text/TextWatcher;
    :cond_2
    new-instance v0, Landroid/databinding/adapters/TextViewBindingAdapter$1;

    invoke-direct {v0, p1, p2, p3}, Landroid/databinding/adapters/TextViewBindingAdapter$1;-><init>(Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V

    .restart local v0    # "newValue":Landroid/text/TextWatcher;
    goto :goto_0
.end method

.method public static setListener(Landroid/widget/TextView;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "onTextChanged"    # Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onTextChanged"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 301
    invoke-static {p0, v0, p1, v0}, Landroid/databinding/adapters/TextViewBindingAdapter;->setListener(Landroid/widget/TextView;Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V

    .line 302
    return-void
.end method

.method public static setListener(Landroid/widget/TextView;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "on"    # Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;
    .param p2, "after"    # Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onTextChanged",
            "android:afterTextChanged"
        }
    .end annotation

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/databinding/adapters/TextViewBindingAdapter;->setListener(Landroid/widget/TextView;Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V

    .line 320
    return-void
.end method

.method public static setMaxLength(Landroid/widget/TextView;I)V
    .locals 10
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "value"    # I
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:maxLength"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 203
    invoke-virtual {p0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    .line 204
    .local v1, "filters":[Landroid/text/InputFilter;
    if-nez v1, :cond_1

    .line 205
    new-array v1, v6, [Landroid/text/InputFilter;

    .end local v1    # "filters":[Landroid/text/InputFilter;
    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v1, v7

    .line 232
    .restart local v1    # "filters":[Landroid/text/InputFilter;
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 233
    return-void

    .line 209
    :cond_1
    const/4 v2, 0x0

    .line 210
    .local v2, "foundMaxLength":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v1

    if-ge v3, v8, :cond_3

    .line 211
    aget-object v0, v1, v3

    .line 212
    .local v0, "filter":Landroid/text/InputFilter;
    instance-of v8, v0, Landroid/text/InputFilter$LengthFilter;

    if-eqz v8, :cond_5

    .line 213
    const/4 v2, 0x1

    .line 214
    const/4 v5, 0x1

    .line 215
    .local v5, "replace":Z
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_2

    .line 216
    check-cast v0, Landroid/text/InputFilter$LengthFilter;

    .end local v0    # "filter":Landroid/text/InputFilter;
    invoke-virtual {v0}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v8

    if-eq v8, p1, :cond_4

    move v5, v6

    .line 218
    :cond_2
    :goto_2
    if-eqz v5, :cond_3

    .line 219
    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v1, v3

    .line 224
    .end local v5    # "replace":Z
    :cond_3
    if-nez v2, :cond_0

    .line 226
    move-object v4, v1

    .line 227
    .local v4, "oldFilters":[Landroid/text/InputFilter;
    array-length v6, v4

    add-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Landroid/text/InputFilter;

    .line 228
    array-length v6, v4

    invoke-static {v4, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v7, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v1, v6

    goto :goto_0

    .end local v4    # "oldFilters":[Landroid/text/InputFilter;
    .restart local v5    # "replace":Z
    :cond_4
    move v5, v7

    .line 216
    goto :goto_2

    .line 210
    .end local v5    # "replace":Z
    .restart local v0    # "filter":Landroid/text/InputFilter;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static setNumeric(Landroid/widget/TextView;I)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "numeric"    # I
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:numeric"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    and-int/lit8 v2, p1, 0x3

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    and-int/lit8 v3, p1, 0x5

    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v2, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 104
    return-void

    :cond_0
    move v2, v1

    .line 102
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static setPassword(Landroid/widget/TextView;Z)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "password"    # Z
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:password"
        }
    .end annotation

    .prologue
    .line 237
    if-eqz p1, :cond_1

    .line 238
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public static setPhoneNumber(Landroid/widget/TextView;Z)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "phoneNumber"    # Z
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:phoneNumber"
        }
    .end annotation

    .prologue
    .line 108
    if-eqz p1, :cond_1

    .line 109
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/DialerKeyListener;

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_0
.end method

.method public static setShadowColor(Landroid/widget/TextView;I)V
    .locals 5
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "color"    # I
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:shadowColor"
        }
    .end annotation

    .prologue
    .line 246
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 247
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    move-result v0

    .line 248
    .local v0, "dx":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    move-result v1

    .line 249
    .local v1, "dy":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    .line 250
    .local v2, "r":F
    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 252
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "r":F
    :cond_0
    return-void
.end method

.method public static setShadowDx(Landroid/widget/TextView;F)V
    .locals 5
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "dx"    # F
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:shadowDx"
        }
    .end annotation

    .prologue
    .line 256
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 257
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowColor()I

    move-result v0

    .line 258
    .local v0, "color":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    move-result v1

    .line 259
    .local v1, "dy":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    .line 260
    .local v2, "r":F
    invoke-virtual {p0, v2, p1, v1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 262
    .end local v0    # "color":I
    .end local v1    # "dy":F
    .end local v2    # "r":F
    :cond_0
    return-void
.end method

.method public static setShadowDy(Landroid/widget/TextView;F)V
    .locals 5
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "dy"    # F
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:shadowDy"
        }
    .end annotation

    .prologue
    .line 266
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 267
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowColor()I

    move-result v0

    .line 268
    .local v0, "color":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    move-result v1

    .line 269
    .local v1, "dx":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    .line 270
    .local v2, "r":F
    invoke-virtual {p0, v2, v1, p1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 272
    .end local v0    # "color":I
    .end local v1    # "dx":F
    .end local v2    # "r":F
    :cond_0
    return-void
.end method

.method public static setShadowRadius(Landroid/widget/TextView;F)V
    .locals 5
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "r"    # F
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:shadowRadius"
        }
    .end annotation

    .prologue
    .line 276
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 277
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowColor()I

    move-result v0

    .line 278
    .local v0, "color":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    move-result v1

    .line 279
    .local v1, "dx":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    move-result v2

    .line 280
    .local v2, "dy":F
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 282
    .end local v0    # "color":I
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :cond_0
    return-void
.end method

.method public static setTextSize(Landroid/widget/TextView;F)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "size"    # F
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:textSize"
        }
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 287
    return-void
.end method
