.class public Landroid/databinding/adapters/CompoundButtonBindingAdapter;
.super Ljava/lang/Object;
.source "CompoundButtonBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:buttonTint"
            method = "setButtonTintList"
            type = Landroid/widget/CompoundButton;
        .end subannotation,
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onCheckedChanged"
            method = "setOnCheckedChangeListener"
            type = Landroid/widget/CompoundButton;
        .end subannotation
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
