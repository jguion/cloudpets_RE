.class public Landroid/databinding/adapters/RadioGroupBindingAdapter;
.super Ljava/lang/Object;
.source "RadioGroupBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:checkedButton"
            method = "check"
            type = Landroid/widget/RadioGroup;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onCheckedChanged"
            method = "setOnCheckedChangeListener"
            type = Landroid/widget/RadioGroup;
        .end subannotation
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
