.class public Landroid/databinding/adapters/ViewGroupBindingAdapter;
.super Ljava/lang/Object;
.source "ViewGroupBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:alwaysDrawnWithCache"
            method = "setAlwaysDrawnWithCacheEnabled"
            type = Landroid/view/ViewGroup;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:animationCache"
            method = "setAnimationCacheEnabled"
            type = Landroid/view/ViewGroup;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:splitMotionEvents"
            method = "setMotionEventSplittingEnabled"
            type = Landroid/view/ViewGroup;
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;,
        Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;,
        Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;,
        Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;,
        Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    return-void
.end method

.method public static setAnimateLayoutChanges(Landroid/view/ViewGroup;Z)V
    .locals 1
    .param p0, "view"    # Landroid/view/ViewGroup;
    .param p1, "animate"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:animateLayoutChanges"
        }
    .end annotation

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public static setListener(Landroid/view/ViewGroup;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;)V
    .locals 1
    .param p0, "view"    # Landroid/view/ViewGroup;
    .param p1, "end"    # Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onAnimationEnd"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-static {p0, v0, p1, v0}, Landroid/databinding/adapters/ViewGroupBindingAdapter;->setListener(Landroid/view/ViewGroup;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;)V

    .line 139
    return-void
.end method

.method public static setListener(Landroid/view/ViewGroup;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;)V
    .locals 1
    .param p0, "view"    # Landroid/view/ViewGroup;
    .param p1, "end"    # Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;
    .param p2, "repeat"    # Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onAnimationEnd",
            "android:onAnimationRepeat"
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/databinding/adapters/ViewGroupBindingAdapter;->setListener(Landroid/view/ViewGroup;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;)V

    .line 123
    return-void
.end method

.method public static setListener(Landroid/view/ViewGroup;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;)V
    .locals 1
    .param p0, "view"    # Landroid/view/ViewGroup;
    .param p1, "repeat"    # Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onAnimationRepeat"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-static {p0, v0, v0, p1}, Landroid/databinding/adapters/ViewGroupBindingAdapter;->setListener(Landroid/view/ViewGroup;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;)V

    .line 144
    return-void
.end method

.method public static setListener(Landroid/view/ViewGroup;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;)V
    .locals 1
    .param p0, "view"    # Landroid/view/ViewGroup;
    .param p1, "start"    # Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onAnimationStart"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-static {p0, p1, v0, v0}, Landroid/databinding/adapters/ViewGroupBindingAdapter;->setListener(Landroid/view/ViewGroup;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;)V

    .line 134
    return-void
.end method

.method public static setListener(Landroid/view/ViewGroup;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;)V
    .locals 1
    .param p0, "view"    # Landroid/view/ViewGroup;
    .param p1, "start"    # Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;
    .param p2, "end"    # Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onAnimationStart",
            "android:onAnimationEnd"
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/databinding/adapters/ViewGroupBindingAdapter;->setListener(Landroid/view/ViewGroup;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;)V

    .line 117
    return-void
.end method

.method public static setListener(Landroid/view/ViewGroup;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;)V
    .locals 1
    .param p0, "view"    # Landroid/view/ViewGroup;
    .param p1, "start"    # Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;
    .param p2, "end"    # Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;
    .param p3, "repeat"    # Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onAnimationStart",
            "android:onAnimationEnd",
            "android:onAnimationRepeat"
        }
    .end annotation

    .prologue
    .line 85
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 111
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v0, Landroid/databinding/adapters/ViewGroupBindingAdapter$2;

    invoke-direct {v0, p1, p2, p3}, Landroid/databinding/adapters/ViewGroupBindingAdapter$2;-><init>(Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public static setListener(Landroid/view/ViewGroup;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;)V
    .locals 1
    .param p0, "view"    # Landroid/view/ViewGroup;
    .param p1, "start"    # Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;
    .param p2, "repeat"    # Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onAnimationStart",
            "android:onAnimationRepeat"
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/databinding/adapters/ViewGroupBindingAdapter;->setListener(Landroid/view/ViewGroup;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationStart;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationEnd;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnAnimationRepeat;)V

    .line 129
    return-void
.end method

.method public static setListener(Landroid/view/ViewGroup;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;)V
    .locals 1
    .param p0, "view"    # Landroid/view/ViewGroup;
    .param p1, "listener"    # Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onChildViewAdded"
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/databinding/adapters/ViewGroupBindingAdapter;->setListener(Landroid/view/ViewGroup;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;)V

    .line 50
    return-void
.end method

.method public static setListener(Landroid/view/ViewGroup;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;)V
    .locals 1
    .param p0, "view"    # Landroid/view/ViewGroup;
    .param p1, "added"    # Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;
    .param p2, "removed"    # Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onChildViewAdded",
            "android:onChildViewRemoved"
        }
    .end annotation

    .prologue
    .line 60
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 79
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Landroid/databinding/adapters/ViewGroupBindingAdapter$1;

    invoke-direct {v0, p1, p2}, Landroid/databinding/adapters/ViewGroupBindingAdapter$1;-><init>(Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    goto :goto_0
.end method

.method public static setListener(Landroid/view/ViewGroup;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;)V
    .locals 1
    .param p0, "view"    # Landroid/view/ViewGroup;
    .param p1, "listener"    # Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onChildViewRemoved"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/databinding/adapters/ViewGroupBindingAdapter;->setListener(Landroid/view/ViewGroup;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewAdded;Landroid/databinding/adapters/ViewGroupBindingAdapter$OnChildViewRemoved;)V

    .line 55
    return-void
.end method
