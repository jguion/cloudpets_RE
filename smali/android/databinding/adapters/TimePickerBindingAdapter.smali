.class public Landroid/databinding/adapters/TimePickerBindingAdapter;
.super Ljava/lang/Object;
.source "TimePickerBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onTimeChanged"
            method = "setOnTimeChangedListener"
            type = Landroid/widget/TimePicker;
        .end subannotation
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
