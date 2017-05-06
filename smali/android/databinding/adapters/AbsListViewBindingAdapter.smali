.class public Landroid/databinding/adapters/AbsListViewBindingAdapter;
.super Ljava/lang/Object;
.source "AbsListViewBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:listSelector"
            method = "setSelector"
            type = Landroid/widget/AbsListView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:scrollingCache"
            method = "setScrollingCacheEnabled"
            type = Landroid/widget/AbsListView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:smoothScrollbar"
            method = "setSmoothScrollbarEnabled"
            type = Landroid/widget/AbsListView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onMovedToScrapHeap"
            method = "setRecyclerListener"
            type = Landroid/widget/AbsListView;
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;,
        Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static setOnScroll(Landroid/widget/AbsListView;Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "listener"    # Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onScroll"
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/databinding/adapters/AbsListViewBindingAdapter;->setOnScroll(Landroid/widget/AbsListView;Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;)V

    .line 35
    return-void
.end method

.method public static setOnScroll(Landroid/widget/AbsListView;Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "scrollListener"    # Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;
    .param p2, "scrollStateListener"    # Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onScroll",
            "android:onScrollStateChanged"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Landroid/databinding/adapters/AbsListViewBindingAdapter$1;

    invoke-direct {v0, p2, p1}, Landroid/databinding/adapters/AbsListViewBindingAdapter$1;-><init>(Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 62
    return-void
.end method

.method public static setOnScroll(Landroid/widget/AbsListView;Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "listener"    # Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onScrollStateChanged"
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/databinding/adapters/AbsListViewBindingAdapter;->setOnScroll(Landroid/widget/AbsListView;Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;)V

    .line 40
    return-void
.end method
