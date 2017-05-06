.class public Landroid/databinding/adapters/TabHostBindingAdapter;
.super Ljava/lang/Object;
.source "TabHostBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onTabChanged"
            method = "setOnTabChangedListener"
            type = Landroid/widget/TabHost;
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
