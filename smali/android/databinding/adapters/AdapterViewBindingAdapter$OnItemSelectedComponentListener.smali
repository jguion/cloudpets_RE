.class public Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;
.super Ljava/lang/Object;
.source "AdapterViewBindingAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/adapters/AdapterViewBindingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnItemSelectedComponentListener"
.end annotation


# instance fields
.field private final mNothingSelected:Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;

.field private final mSelected:Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;


# direct methods
.method public constructor <init>(Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;)V
    .locals 0
    .param p1, "selected"    # Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;
    .param p2, "nothingSelected"    # Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mSelected:Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;

    .line 59
    iput-object p2, p0, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mNothingSelected:Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;

    .line 60
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mSelected:Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mSelected:Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 66
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mNothingSelected:Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;->mNothingSelected:Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;

    invoke-interface {v0, p1}, Landroid/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 73
    :cond_0
    return-void
.end method
