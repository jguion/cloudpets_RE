.class public Landroid/databinding/adapters/ViewBindingAdapter;
.super Ljava/lang/Object;
.source "ViewBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:backgroundTint"
            method = "setBackgroundTintList"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:fadeScrollbars"
            method = "setScrollbarFadingEnabled"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:getOutline"
            method = "setOutlineProvider"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:nextFocusForward"
            method = "setNextFocusForwardId"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:nextFocusLeft"
            method = "setNextFocusLeftId"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:nextFocusRight"
            method = "setNextFocusRightId"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:nextFocusUp"
            method = "setNextFocusUpId"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:nextFocusDown"
            method = "setNextFocusDownId"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:requiresFadingEdge"
            method = "setVerticalFadingEdgeEnabled"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:scrollbarDefaultDelayBeforeFade"
            method = "setScrollBarDefaultDelayBeforeFade"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:scrollbarFadeDuration"
            method = "setScrollBarFadeDuration"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:scrollbarSize"
            method = "setScrollBarSize"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:scrollbarStyle"
            method = "setScrollBarStyle"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:transformPivotX"
            method = "setPivotX"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:transformPivotY"
            method = "setPivotY"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onDrag"
            method = "setOnDragListener"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onClick"
            method = "setOnClickListener"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onApplyWindowInsets"
            method = "setOnApplyWindowInsetsListener"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onCreateContextMenu"
            method = "setOnCreateContextMenuListener"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onFocusChange"
            method = "setOnFocusChangeListener"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onGenericMotion"
            method = "setOnGenericMotionListener"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onHover"
            method = "setOnHoverListener"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onKey"
            method = "setOnKeyListener"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onLongClick"
            method = "setOnLongClickListener"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onSystemUiVisibilityChange"
            method = "setOnSystemUiVisibilityChangeListener"
            type = Landroid/view/View;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onTouch"
            method = "setOnTouchListener"
            type = Landroid/view/View;
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;,
        Landroid/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;
    }
.end annotation


# static fields
.field public static FADING_EDGE_HORIZONTAL:I

.field public static FADING_EDGE_NONE:I

.field public static FADING_EDGE_VERTICAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput v0, Landroid/databinding/adapters/ViewBindingAdapter;->FADING_EDGE_NONE:I

    .line 59
    const/4 v0, 0x1

    sput v0, Landroid/databinding/adapters/ViewBindingAdapter;->FADING_EDGE_HORIZONTAL:I

    .line 60
    const/4 v0, 0x2

    sput v0, Landroid/databinding/adapters/ViewBindingAdapter;->FADING_EDGE_VERTICAL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    return-void
.end method

.method public static setClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;
    .param p2, "clickable"    # Z
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onClickListener",
            "android:clickable"
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    .line 126
    return-void
.end method

.method public static setListener(Landroid/view/View;Landroid/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "attached"    # Landroid/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onViewAttachedToWindow"
        }
    .end annotation

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/databinding/adapters/ViewBindingAdapter;->setListener(Landroid/view/View;Landroid/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;Landroid/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;)V

    .line 152
    return-void
.end method

.method public static setListener(Landroid/view/View;Landroid/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "detached"    # Landroid/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onViewDetachedFromWindow"
        }
    .end annotation

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/databinding/adapters/ViewBindingAdapter;->setListener(Landroid/view/View;Landroid/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;Landroid/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;)V

    .line 157
    return-void
.end method

.method public static setListener(Landroid/view/View;Landroid/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;Landroid/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "detach"    # Landroid/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;
    .param p2, "attach"    # Landroid/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onViewDetachedFromWindow",
            "android:onViewAttachedToWindow"
        }
    .end annotation

    .prologue
    .line 162
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_1

    .line 164
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 165
    const/4 v0, 0x0

    .line 183
    .local v0, "newListener":Landroid/view/View$OnAttachStateChangeListener;
    :goto_0
    sget v2, Lcom/android/databinding/library/baseAdapters/R$id;->onAttachStateChangeListener:I

    invoke-static {p0, v0, v2}, Landroid/databinding/adapters/ListenerUtil;->trackListener(Landroid/view/View;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnAttachStateChangeListener;

    .line 185
    .local v1, "oldListener":Landroid/view/View$OnAttachStateChangeListener;
    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {p0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 188
    :cond_0
    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 192
    .end local v0    # "newListener":Landroid/view/View$OnAttachStateChangeListener;
    .end local v1    # "oldListener":Landroid/view/View$OnAttachStateChangeListener;
    :cond_1
    return-void

    .line 167
    :cond_2
    new-instance v0, Landroid/databinding/adapters/ViewBindingAdapter$1;

    invoke-direct {v0, p2, p1}, Landroid/databinding/adapters/ViewBindingAdapter$1;-><init>(Landroid/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;Landroid/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;)V

    .restart local v0    # "newListener":Landroid/view/View$OnAttachStateChangeListener;
    goto :goto_0
.end method

.method public static setListener(Landroid/view/View;Landroid/view/View$OnLongClickListener;Z)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clickListener"    # Landroid/view/View$OnLongClickListener;
    .param p2, "clickable"    # Z
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onLongClickListener",
            "android:longClickable"
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 139
    invoke-virtual {p0, p2}, Landroid/view/View;->setLongClickable(Z)V

    .line 140
    return-void
.end method

.method public static setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;
    .param p2, "clickable"    # Z
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onClick",
            "android:clickable"
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    .line 133
    return-void
.end method

.method public static setOnLayoutChangeListener(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;Landroid/view/View$OnLayoutChangeListener;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "oldValue"    # Landroid/view/View$OnLayoutChangeListener;
    .param p2, "newValue"    # Landroid/view/View$OnLayoutChangeListener;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onLayoutChange"
        }
    .end annotation

    .prologue
    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 198
    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p0, p1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 201
    :cond_0
    if-eqz p2, :cond_1

    .line 202
    invoke-virtual {p0, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 205
    :cond_1
    return-void
.end method

.method public static setOnLongClick(Landroid/view/View;Landroid/view/View$OnLongClickListener;Z)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clickListener"    # Landroid/view/View$OnLongClickListener;
    .param p2, "clickable"    # Z
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onLongClick",
            "android:longClickable"
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 146
    invoke-virtual {p0, p2}, Landroid/view/View;->setLongClickable(Z)V

    .line 147
    return-void
.end method

.method public static setPadding(Landroid/view/View;I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "padding"    # I
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:padding"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 65
    return-void
.end method

.method public static setPaddingBottom(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "padding"    # I
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:paddingBottom"
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 71
    return-void
.end method

.method public static setPaddingEnd(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "padding"    # I
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:paddingEnd"
        }
    .end annotation

    .prologue
    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static setPaddingLeft(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "padding"    # I
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:paddingLeft"
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 88
    return-void
.end method

.method public static setPaddingRight(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "padding"    # I
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:paddingRight"
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 94
    return-void
.end method

.method public static setPaddingStart(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "padding"    # I
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:paddingStart"
        }
    .end annotation

    .prologue
    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static setPaddingTop(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "padding"    # I
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:paddingTop"
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 111
    return-void
.end method

.method public static setRequiresFadingEdge(Landroid/view/View;I)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # I
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:requiresFadingEdge"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 115
    sget v4, Landroid/databinding/adapters/ViewBindingAdapter;->FADING_EDGE_VERTICAL:I

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    move v1, v2

    .line 116
    .local v1, "vertical":Z
    :goto_0
    sget v4, Landroid/databinding/adapters/ViewBindingAdapter;->FADING_EDGE_HORIZONTAL:I

    and-int/2addr v4, p1

    if-eqz v4, :cond_1

    move v0, v2

    .line 117
    .local v0, "horizontal":Z
    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 118
    invoke-virtual {p0, v0}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 119
    return-void

    .end local v0    # "horizontal":Z
    .end local v1    # "vertical":Z
    :cond_0
    move v1, v3

    .line 115
    goto :goto_0

    .restart local v1    # "vertical":Z
    :cond_1
    move v0, v3

    .line 116
    goto :goto_1
.end method
