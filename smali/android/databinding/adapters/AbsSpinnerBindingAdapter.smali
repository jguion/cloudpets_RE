.class public Landroid/databinding/adapters/AbsSpinnerBindingAdapter;
.super Ljava/lang/Object;
.source "AbsSpinnerBindingAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setEntries(Landroid/widget/AbsSpinner;[Ljava/lang/CharSequence;)V
    .locals 6
    .param p0, "view"    # Landroid/widget/AbsSpinner;
    .param p1, "entries"    # [Ljava/lang/CharSequence;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:entries"
        }
    .end annotation

    .prologue
    .line 27
    if-eqz p1, :cond_3

    .line 28
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    .line 29
    .local v3, "oldAdapter":Landroid/widget/SpinnerAdapter;
    const/4 v1, 0x1

    .line 30
    .local v1, "changed":Z
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    array-length v5, p1

    if-ne v4, v5, :cond_0

    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 33
    aget-object v4, p1, v2

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 34
    const/4 v1, 0x1

    .line 39
    .end local v2    # "i":I
    :cond_0
    if-eqz v1, :cond_1

    .line 40
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1090008

    invoke-direct {v0, v4, v5, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 43
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 49
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v1    # "changed":Z
    .end local v3    # "oldAdapter":Landroid/widget/SpinnerAdapter;
    :cond_1
    :goto_1
    return-void

    .line 32
    .restart local v1    # "changed":Z
    .restart local v2    # "i":I
    .restart local v3    # "oldAdapter":Landroid/widget/SpinnerAdapter;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    .end local v1    # "changed":Z
    .end local v2    # "i":I
    .end local v3    # "oldAdapter":Landroid/widget/SpinnerAdapter;
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_1
.end method
