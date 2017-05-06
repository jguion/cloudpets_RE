.class public Landroid/databinding/adapters/NumberPickerBindingAdapter;
.super Ljava/lang/Object;
.source "NumberPickerBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:format"
            method = "setFormatter"
            type = Landroid/widget/NumberPicker;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onScrollStateChange"
            method = "setOnScrollListener"
            type = Landroid/widget/NumberPicker;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onValueChange"
            method = "setOnValueChangedListener"
            type = Landroid/widget/NumberPicker;
        .end subannotation
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
