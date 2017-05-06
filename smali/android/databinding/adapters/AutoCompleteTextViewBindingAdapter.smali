.class public Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter;
.super Ljava/lang/Object;
.source "AutoCompleteTextViewBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:completionThreshold"
            method = "setThreshold"
            type = Landroid/widget/AutoCompleteTextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:popupBackground"
            method = "setDropDownBackgroundDrawable"
            type = Landroid/widget/AutoCompleteTextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onDismiss"
            method = "setOnDismissListener"
            type = Landroid/widget/AutoCompleteTextView;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onItemClick"
            method = "setOnItemClickListener"
            type = Landroid/widget/AutoCompleteTextView;
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;,
        Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method public static setListener(Landroid/widget/AutoCompleteTextView;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/AutoCompleteTextView;
    .param p1, "listener"    # Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onItemSelected"
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter;->setListener(Landroid/widget/AutoCompleteTextView;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;)V

    .line 76
    return-void
.end method

.method public static setListener(Landroid/widget/AutoCompleteTextView;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/AutoCompleteTextView;
    .param p1, "selected"    # Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;
    .param p2, "nothingSelected"    # Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onItemSelected",
            "android:onNothingSelected"
        }
    .end annotation

    .prologue
    .line 86
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v0, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;

    invoke-direct {v0, p1, p2}, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;-><init>(Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;)V

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method public static setListener(Landroid/widget/AutoCompleteTextView;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/AutoCompleteTextView;
    .param p1, "listener"    # Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onNothingSelected"
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter;->setListener(Landroid/widget/AutoCompleteTextView;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;)V

    .line 81
    return-void
.end method

.method public static setListener(Landroid/widget/AutoCompleteTextView;Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/AutoCompleteTextView;
    .param p1, "listener"    # Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:fixText"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter;->setListener(Landroid/widget/AutoCompleteTextView;Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;)V

    .line 38
    return-void
.end method

.method public static setListener(Landroid/widget/AutoCompleteTextView;Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/AutoCompleteTextView;
    .param p1, "fixText"    # Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;
    .param p2, "isValid"    # Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:fixText",
            "android:isValid"
        }
    .end annotation

    .prologue
    .line 48
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 71
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter$1;

    invoke-direct {v0, p2, p1}, Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter$1;-><init>(Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;)V

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    goto :goto_0
.end method

.method public static setListener(Landroid/widget/AutoCompleteTextView;Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/AutoCompleteTextView;
    .param p1, "listener"    # Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:isValid"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter;->setListener(Landroid/widget/AutoCompleteTextView;Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;Landroid/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;)V

    .line 43
    return-void
.end method
