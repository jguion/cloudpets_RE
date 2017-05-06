.class final Landroid/databinding/adapters/SearchViewBindingAdapter$2;
.super Ljava/lang/Object;
.source "SearchViewBindingAdapter.java"

# interfaces
.implements Landroid/widget/SearchView$OnSuggestionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/databinding/adapters/SearchViewBindingAdapter;->setListener(Landroid/widget/SearchView;Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$change:Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;

.field final synthetic val$submit:Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;


# direct methods
.method constructor <init>(Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Landroid/databinding/adapters/SearchViewBindingAdapter$2;->val$submit:Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;

    iput-object p2, p0, Landroid/databinding/adapters/SearchViewBindingAdapter$2;->val$change:Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuggestionClick(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 106
    iget-object v0, p0, Landroid/databinding/adapters/SearchViewBindingAdapter$2;->val$change:Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Landroid/databinding/adapters/SearchViewBindingAdapter$2;->val$change:Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;

    invoke-interface {v0, p1}, Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionClick;->onSuggestionClick(I)Z

    move-result v0

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSuggestionSelect(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 97
    iget-object v0, p0, Landroid/databinding/adapters/SearchViewBindingAdapter$2;->val$submit:Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Landroid/databinding/adapters/SearchViewBindingAdapter$2;->val$submit:Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;

    invoke-interface {v0, p1}, Landroid/databinding/adapters/SearchViewBindingAdapter$OnSuggestionSelect;->onSuggestionSelect(I)Z

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
