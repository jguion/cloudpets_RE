.class Landroid/databinding/ViewDataBinding$WeakListListener;
.super Landroid/databinding/ObservableList$OnListChangedCallback;
.source "ViewDataBinding.java"

# interfaces
.implements Landroid/databinding/ViewDataBinding$ObservableReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakListListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/databinding/ObservableList$OnListChangedCallback;",
        "Landroid/databinding/ViewDataBinding$ObservableReference",
        "<",
        "Landroid/databinding/ObservableList;",
        ">;"
    }
.end annotation


# instance fields
.field final mListener:Landroid/databinding/ViewDataBinding$WeakListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ViewDataBinding$WeakListener",
            "<",
            "Landroid/databinding/ObservableList;",
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
    .line 749
    invoke-direct {p0}, Landroid/databinding/ObservableList$OnListChangedCallback;-><init>()V

    .line 750
    new-instance v0, Landroid/databinding/ViewDataBinding$WeakListener;

    invoke-direct {v0, p1, p2, p0}, Landroid/databinding/ViewDataBinding$WeakListener;-><init>(Landroid/databinding/ViewDataBinding;ILandroid/databinding/ViewDataBinding$ObservableReference;)V

    iput-object v0, p0, Landroid/databinding/ViewDataBinding$WeakListListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    .line 751
    return-void
.end method


# virtual methods
.method public addListener(Landroid/databinding/ObservableList;)V
    .locals 0
    .param p1, "target"    # Landroid/databinding/ObservableList;

    .prologue
    .line 760
    invoke-interface {p1, p0}, Landroid/databinding/ObservableList;->addOnListChangedCallback(Landroid/databinding/ObservableList$OnListChangedCallback;)V

    .line 761
    return-void
.end method

.method public bridge synthetic addListener(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 745
    check-cast p1, Landroid/databinding/ObservableList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/databinding/ViewDataBinding$WeakListListener;->addListener(Landroid/databinding/ObservableList;)V

    return-void
.end method

.method public getListener()Landroid/databinding/ViewDataBinding$WeakListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ViewDataBinding$WeakListener",
            "<",
            "Landroid/databinding/ObservableList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 755
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$WeakListListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    return-object v0
.end method

.method public onChanged(Landroid/databinding/ObservableList;)V
    .locals 4
    .param p1, "sender"    # Landroid/databinding/ObservableList;

    .prologue
    .line 770
    iget-object v2, p0, Landroid/databinding/ViewDataBinding$WeakListListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    invoke-virtual {v2}, Landroid/databinding/ViewDataBinding$WeakListener;->getBinder()Landroid/databinding/ViewDataBinding;

    move-result-object v0

    .line 771
    .local v0, "binder":Landroid/databinding/ViewDataBinding;
    if-nez v0, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    iget-object v2, p0, Landroid/databinding/ViewDataBinding$WeakListListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    invoke-virtual {v2}, Landroid/databinding/ViewDataBinding$WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/databinding/ObservableList;

    .line 775
    .local v1, "target":Landroid/databinding/ObservableList;
    if-ne v1, p1, :cond_0

    .line 778
    iget-object v2, p0, Landroid/databinding/ViewDataBinding$WeakListListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    iget v2, v2, Landroid/databinding/ViewDataBinding$WeakListener;->mLocalFieldId:I

    const/4 v3, 0x0

    # invokes: Landroid/databinding/ViewDataBinding;->handleFieldChange(ILjava/lang/Object;I)V
    invoke-static {v0, v2, v1, v3}, Landroid/databinding/ViewDataBinding;->access$500(Landroid/databinding/ViewDataBinding;ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onItemRangeChanged(Landroid/databinding/ObservableList;II)V
    .locals 0
    .param p1, "sender"    # Landroid/databinding/ObservableList;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 783
    invoke-virtual {p0, p1}, Landroid/databinding/ViewDataBinding$WeakListListener;->onChanged(Landroid/databinding/ObservableList;)V

    .line 784
    return-void
.end method

.method public onItemRangeInserted(Landroid/databinding/ObservableList;II)V
    .locals 0
    .param p1, "sender"    # Landroid/databinding/ObservableList;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 788
    invoke-virtual {p0, p1}, Landroid/databinding/ViewDataBinding$WeakListListener;->onChanged(Landroid/databinding/ObservableList;)V

    .line 789
    return-void
.end method

.method public onItemRangeMoved(Landroid/databinding/ObservableList;III)V
    .locals 0
    .param p1, "sender"    # Landroid/databinding/ObservableList;
    .param p2, "fromPosition"    # I
    .param p3, "toPosition"    # I
    .param p4, "itemCount"    # I

    .prologue
    .line 794
    invoke-virtual {p0, p1}, Landroid/databinding/ViewDataBinding$WeakListListener;->onChanged(Landroid/databinding/ObservableList;)V

    .line 795
    return-void
.end method

.method public onItemRangeRemoved(Landroid/databinding/ObservableList;II)V
    .locals 0
    .param p1, "sender"    # Landroid/databinding/ObservableList;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 799
    invoke-virtual {p0, p1}, Landroid/databinding/ViewDataBinding$WeakListListener;->onChanged(Landroid/databinding/ObservableList;)V

    .line 800
    return-void
.end method

.method public removeListener(Landroid/databinding/ObservableList;)V
    .locals 0
    .param p1, "target"    # Landroid/databinding/ObservableList;

    .prologue
    .line 765
    invoke-interface {p1, p0}, Landroid/databinding/ObservableList;->removeOnListChangedCallback(Landroid/databinding/ObservableList$OnListChangedCallback;)V

    .line 766
    return-void
.end method

.method public bridge synthetic removeListener(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 745
    check-cast p1, Landroid/databinding/ObservableList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/databinding/ViewDataBinding$WeakListListener;->removeListener(Landroid/databinding/ObservableList;)V

    return-void
.end method
