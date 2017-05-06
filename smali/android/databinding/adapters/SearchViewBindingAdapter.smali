.class public Landroid/databinding/adapters/SearchViewBindingAdapter;
.super Ljava/lang/Object;
.source "SearchViewBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onQueryTextFocusChange"
            method = "setOnQueryTextFocusChangeListener"
            type = Landroid/widget/SearchView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onSearchClick"
            method = "setOnSearchClickListener"
            type = Landroid/widget/SearchView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onClose"
            method = "setOnCloseListener"
            type = Landroid/widget/SearchView;
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;,
        Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;,
        Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;,
        Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method public static setListener(Landroid/widget/SearchView;Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/SearchView;
    .param p1, "listener"    # Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onQueryTextChange"
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/databinding/adapters/SearchViewBindingAdapter;->setListener(Landroid/widget/SearchView;Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;)V

    .line 40
    return-void
.end method

.method public static setListener(Landroid/widget/SearchView;Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/SearchView;
    .param p1, "listener"    # Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onQueryTextSubmit"
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/databinding/adapters/SearchViewBindingAdapter;->setListener(Landroid/widget/SearchView;Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;)V

    .line 45
    return-void
.end method

.method public static setListener(Landroid/widget/SearchView;Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;)V
    .locals 2
    .param p0, "view"    # Landroid/widget/SearchView;
    .param p1, "submit"    # Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;
    .param p2, "change"    # Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onQueryTextSubmit",
            "android:onQueryTextChange"
        }
    .end annotation

    .prologue
    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 51
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    new-instance v0, Landroid/databinding/adapters/SearchViewBindingAdapter$1;

    invoke-direct {v0, p1, p2}, Landroid/databinding/adapters/SearchViewBindingAdapter$1;-><init>(Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextSubmit;Landroid/databinding/adapters/SearchViewBindingAdapter$OnQueryTextChange;)V

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    goto :goto_0
.end method

.method public static setListener(Landroid/widget/SearchView;Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/SearchView;
    .param p1, "listener"    # Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onSuggestionClick"
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/databinding/adapters/SearchViewBindingAdapter;->setListener(Landroid/widget/SearchView;Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;)V

    .line 80
    return-void
.end method

.method public static setListener(Landroid/widget/SearchView;Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/SearchView;
    .param p1, "listener"    # Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onSuggestionSelect"
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/databinding/adapters/SearchViewBindingAdapter;->setListener(Landroid/widget/SearchView;Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;)V

    .line 85
    return-void
.end method

.method public static setListener(Landroid/widget/SearchView;Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;)V
    .locals 2
    .param p0, "view"    # Landroid/widget/SearchView;
    .param p1, "submit"    # Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;
    .param p2, "change"    # Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onSuggestionSelect",
            "android:onSuggestionClick"
        }
    .end annotation

    .prologue
    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 91
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    new-instance v0, Landroid/databinding/adapters/SearchViewBindingAdapter$2;

    invoke-direct {v0, p1, p2}, Landroid/databinding/adapters/SearchViewBindingAdapter$2;-><init>(Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;)V

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    goto :goto_0
.end method
