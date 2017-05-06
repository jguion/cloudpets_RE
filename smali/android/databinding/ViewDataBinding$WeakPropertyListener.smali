.class Landroid/databinding/ViewDataBinding$WeakPropertyListener;
.super Landroid/databinding/Observable$OnPropertyChangedCallback;
.source "ViewDataBinding.java"

# interfaces
.implements Landroid/databinding/ViewDataBinding$ObservableReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakPropertyListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/databinding/Observable$OnPropertyChangedCallback;",
        "Landroid/databinding/ViewDataBinding$ObservableReference",
        "<",
        "Landroid/databinding/Observable;",
        ">;"
    }
.end annotation


# instance fields
.field final mListener:Landroid/databinding/ViewDataBinding$WeakListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ViewDataBinding$WeakListener",
            "<",
            "Landroid/databinding/Observable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/databinding/ViewDataBinding;I)V
    .locals 1
    .param p1, "binder"    # Landroid/databinding/ViewDataBinding;
    .param p2, "localFieldId"    # I

    .prologue
    .line 712
    invoke-direct {p0}, Landroid/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    .line 713
    new-instance v0, Landroid/databinding/ViewDataBinding$WeakListener;

    invoke-direct {v0, p1, p2, p0}, Landroid/databinding/ViewDataBinding$WeakListener;-><init>(Landroid/databinding/ViewDataBinding;ILandroid/databinding/ViewDataBinding$ObservableReference;)V

    iput-object v0, p0, Landroid/databinding/ViewDataBinding$WeakPropertyListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    .line 714
    return-void
.end method


# virtual methods
.method public addListener(Landroid/databinding/Observable;)V
    .locals 0
    .param p1, "target"    # Landroid/databinding/Observable;

    .prologue
    .line 723
    invoke-interface {p1, p0}, Landroid/databinding/Observable;->addOnPropertyChangedCallback(Landroid/databinding/Observable$OnPropertyChangedCallback;)V

    .line 724
    return-void
.end method

.method public bridge synthetic addListener(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 708
    check-cast p1, Landroid/databinding/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/databinding/ViewDataBinding$WeakPropertyListener;->addListener(Landroid/databinding/Observable;)V

    return-void
.end method

.method public getListener()Landroid/databinding/ViewDataBinding$WeakListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ViewDataBinding$WeakListener",
            "<",
            "Landroid/databinding/Observable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$WeakPropertyListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    return-object v0
.end method

.method public onPropertyChanged(Landroid/databinding/Observable;I)V
    .locals 3
    .param p1, "sender"    # Landroid/databinding/Observable;
    .param p2, "propertyId"    # I

    .prologue
    .line 733
    iget-object v2, p0, Landroid/databinding/ViewDataBinding$WeakPropertyListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    invoke-virtual {v2}, Landroid/databinding/ViewDataBinding$WeakListener;->getBinder()Landroid/databinding/ViewDataBinding;

    move-result-object v0

    .line 734
    .local v0, "binder":Landroid/databinding/ViewDataBinding;
    if-nez v0, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    iget-object v2, p0, Landroid/databinding/ViewDataBinding$WeakPropertyListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    invoke-virtual {v2}, Landroid/databinding/ViewDataBinding$WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/databinding/Observable;

    .line 738
    .local v1, "obj":Landroid/databinding/Observable;
    if-ne v1, p1, :cond_0

    .line 741
    iget-object v2, p0, Landroid/databinding/ViewDataBinding$WeakPropertyListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    iget v2, v2, Landroid/databinding/ViewDataBinding$WeakListener;->mLocalFieldId:I

    # invokes: Landroid/databinding/ViewDataBinding;->handleFieldChange(ILjava/lang/Object;I)V
    invoke-static {v0, v2, p1, p2}, Landroid/databinding/ViewDataBinding;->access$500(Landroid/databinding/ViewDataBinding;ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public removeListener(Landroid/databinding/Observable;)V
    .locals 0
    .param p1, "target"    # Landroid/databinding/Observable;

    .prologue
    .line 728
    invoke-interface {p1, p0}, Landroid/databinding/Observable;->removeOnPropertyChangedCallback(Landroid/databinding/Observable$OnPropertyChangedCallback;)V

    .line 729
    return-void
.end method

.method public bridge synthetic removeListener(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 708
    check-cast p1, Landroid/databinding/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/databinding/ViewDataBinding$WeakPropertyListener;->removeListener(Landroid/databinding/Observable;)V

    return-void
.end method
