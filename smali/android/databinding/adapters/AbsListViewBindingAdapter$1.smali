.class final Landroid/databinding/adapters/AbsListViewBindingAdapter$1;
.super Ljava/lang/Object;
.source "AbsListViewBindingAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/databinding/adapters/AbsListViewBindingAdapter;->setOnScroll(Landroid/widget/AbsListView;Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$scrollListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;

.field final synthetic val$scrollStateListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;


# direct methods
.method constructor <init>(Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Landroid/databinding/adapters/AbsListViewBindingAdapter$1;->val$scrollStateListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;

    iput-object p2, p0, Landroid/databinding/adapters/AbsListViewBindingAdapter$1;->val$scrollListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 56
    iget-object v0, p0, Landroid/databinding/adapters/AbsListViewBindingAdapter$1;->val$scrollListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Landroid/databinding/adapters/AbsListViewBindingAdapter$1;->val$scrollListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScroll;->onScroll(Landroid/widget/AbsListView;III)V

    .line 60
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 48
    iget-object v0, p0, Landroid/databinding/adapters/AbsListViewBindingAdapter$1;->val$scrollStateListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Landroid/databinding/adapters/AbsListViewBindingAdapter$1;->val$scrollStateListener:Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;

    invoke-interface {v0, p1, p2}, Landroid/databinding/adapters/AbsListViewBindingAdapter$OnScrollStateChanged;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 51
    :cond_0
    return-void
.end method
