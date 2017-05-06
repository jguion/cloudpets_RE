.class public Landroid/databinding/adapters/RatingBarBindingAdapter;
.super Ljava/lang/Object;
.source "RatingBarBindingAdapter.java"


# annotations
.annotation build Landroid/databinding/BindingMethods;
    value = {
        .subannotation Landroid/databinding/BindingMethod;
            attribute = "android:onRatingChanged"
            method = "setOnRatingBarChangeListener"
            type = Landroid/widget/RatingBar;
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
