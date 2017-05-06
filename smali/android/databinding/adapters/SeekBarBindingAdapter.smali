.class public Landroid/databinding/adapters/SeekBarBindingAdapter;
.super Ljava/lang/Object;
.source "SeekBarBindingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;,
        Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;,
        Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static setListener(Landroid/widget/SeekBar;Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/SeekBar;
    .param p1, "listener"    # Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onProgressChanged"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-static {p0, v0, v0, p1}, Landroid/databinding/adapters/SeekBarBindingAdapter;->setListener(Landroid/widget/SeekBar;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;)V

    .line 26
    return-void
.end method

.method public static setListener(Landroid/widget/SeekBar;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/SeekBar;
    .param p1, "listener"    # Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onStartTrackingTouch"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-static {p0, p1, v0, v0}, Landroid/databinding/adapters/SeekBarBindingAdapter;->setListener(Landroid/widget/SeekBar;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;)V

    .line 31
    return-void
.end method

.method public static setListener(Landroid/widget/SeekBar;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/SeekBar;
    .param p1, "start"    # Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;
    .param p2, "progressChanged"    # Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onStartTrackingTouch",
            "android:onProgressChanged"
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/databinding/adapters/SeekBarBindingAdapter;->setListener(Landroid/widget/SeekBar;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;)V

    .line 48
    return-void
.end method

.method public static setListener(Landroid/widget/SeekBar;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/SeekBar;
    .param p1, "start"    # Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;
    .param p2, "stop"    # Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onStartTrackingTouch",
            "android:onStopTrackingTouch"
        }
    .end annotation

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/databinding/adapters/SeekBarBindingAdapter;->setListener(Landroid/widget/SeekBar;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;)V

    .line 42
    return-void
.end method

.method public static setListener(Landroid/widget/SeekBar;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/SeekBar;
    .param p1, "start"    # Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;
    .param p2, "stop"    # Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;
    .param p3, "progressChanged"    # Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onStartTrackingTouch",
            "android:onStopTrackingTouch",
            "android:onProgressChanged"
        }
    .end annotation

    .prologue
    .line 59
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 85
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v0, Landroid/databinding/adapters/SeekBarBindingAdapter$1;

    invoke-direct {v0, p3, p1, p2}, Landroid/databinding/adapters/SeekBarBindingAdapter$1;-><init>(Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;)V

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_0
.end method

.method public static setListener(Landroid/widget/SeekBar;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/SeekBar;
    .param p1, "listener"    # Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onStopTrackingTouch"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-static {p0, v0, p1, v0}, Landroid/databinding/adapters/SeekBarBindingAdapter;->setListener(Landroid/widget/SeekBar;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;)V

    .line 36
    return-void
.end method

.method public static setListener(Landroid/widget/SeekBar;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/SeekBar;
    .param p1, "stop"    # Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;
    .param p2, "progressChanged"    # Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:onStopTrackingTouch",
            "android:onProgressChanged"
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/databinding/adapters/SeekBarBindingAdapter;->setListener(Landroid/widget/SeekBar;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStartTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnStopTrackingTouch;Landroid/databinding/adapters/SeekBarBindingAdapter$OnProgressChanged;)V

    .line 54
    return-void
.end method
