.class public Landroid/databinding/adapters/AdapterViewBindingAdapter;
.super Ljava/lang/Object;
.source "AdapterViewBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onItemClick"
            method = "setOnItemClickListener"
            type = Landroid/widget/AdapterView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onItemLongClick"
            method = "setOnItemLongClickListener"
            type = Landroid/widget/AdapterView;
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;,
        Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;,
        Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static setListener(Landroid/widget/AdapterView;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/AdapterView;
    .param p1, "listener"    # Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onItemSelected"
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/databinding/adapters/AdapterViewBindingAdapter;->setListener(Landroid/widget/AdapterView;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;)V

    .line 34
    return-void
.end method

.method public static setListener(Landroid/widget/AdapterView;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/AdapterView;
    .param p1, "selected"    # Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;
    .param p2, "nothingSelected"    # Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onItemSelected",
            "android:onNothingSelected"
        }
    .end annotation

    .prologue
    .line 44
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v0, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;

    invoke-direct {v0, p1, p2}, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;-><init>(Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;)V

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method public static setListener(Landroid/widget/AdapterView;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/AdapterView;
    .param p1, "listener"    # Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onNothingSelected"
        }
    .end annotation

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/databinding/adapters/AdapterViewBindingAdapter;->setListener(Landroid/widget/AdapterView;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;)V

    .line 39
    return-void
.end method
