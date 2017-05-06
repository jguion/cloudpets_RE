.class Landroid/databinding/ViewDataBinding$WeakMapListener;
.super Landroid/databinding/ObservableMap$OnMapChangedCallback;
.source "ViewDataBinding.java"

# interfaces
.implements Landroid/databinding/ViewDataBinding$ObservableReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakMapListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/databinding/ObservableMap$OnMapChangedCallback;",
        "Landroid/databinding/ViewDataBinding$ObservableReference",
        "<",
        "Landroid/databinding/ObservableMap;",
        ">;"
    }
.end annotation


# instance fields
.field final mListener:Landroid/databinding/ViewDataBinding$WeakListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ViewDataBinding$WeakListener",
            "<",
            "Landroid/databinding/ObservableMap;",
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
    .line 807
    invoke-direct {p0}, Landroid/databinding/ObservableMap$OnMapChangedCallback;-><init>()V

    .line 808
    new-instance v0, Landroid/databinding/ViewDataBinding$WeakListener;

    invoke-direct {v0, p1, p2, p0}, Landroid/databinding/ViewDataBinding$WeakListener;-><init>(Landroid/databinding/ViewDataBinding;ILandroid/databinding/ViewDataBinding$ObservableReference;)V

    iput-object v0, p0, Landroid/databinding/ViewDataBinding$WeakMapListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    .line 809
    return-void
.end method


# virtual methods
.method public addListener(Landroid/databinding/ObservableMap;)V
    .locals 0
    .param p1, "target"    # Landroid/databinding/ObservableMap;

    .prologue
    .line 818
    invoke-interface {p1, p0}, Landroid/databinding/ObservableMap;->addOnMapChangedCallback(Landroid/databinding/ObservableMap$OnMapChangedCallback;)V

    .line 819
    return-void
.end method

.method public bridge synthetic addListener(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 803
    check-cast p1, Landroid/databinding/ObservableMap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/databinding/ViewDataBinding$WeakMapListener;->addListener(Landroid/databinding/ObservableMap;)V

    return-void
.end method

.method public getListener()Landroid/databinding/ViewDataBinding$WeakListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ViewDataBinding$WeakListener",
            "<",
            "Landroid/databinding/ObservableMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 813
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$WeakMapListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    return-object v0
.end method

.method public onMapChanged(Landroid/databinding/ObservableMap;Ljava/lang/Object;)V
    .locals 3
    .param p1, "sender"    # Landroid/databinding/ObservableMap;
    .param p2, "key"    # Ljava/lang/Object;

    .prologue
    .line 828
    iget-object v1, p0, Landroid/databinding/ViewDataBinding$WeakMapListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    invoke-virtual {v1}, Landroid/databinding/ViewDataBinding$WeakListener;->getBinder()Landroid/databinding/ViewDataBinding;

    move-result-object v0

    .line 829
    .local v0, "binder":Landroid/databinding/ViewDataBinding;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/databinding/ViewDataBinding$WeakMapListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    invoke-virtual {v1}, Landroid/databinding/ViewDataBinding$WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    iget-object v1, p0, Landroid/databinding/ViewDataBinding$WeakMapListener;->mListener:Landroid/databinding/ViewDataBinding$WeakListener;

    iget v1, v1, Landroid/databinding/ViewDataBinding$WeakListener;->mLocalFieldId:I

    const/4 v2, 0x0

    # invokes: Landroid/databinding/ViewDataBinding;->handleFieldChange(ILjava/lang/Object;I)V
    invoke-static {v0, v1, p1, v2}, Landroid/databinding/ViewDataBinding;->access$500(Landroid/databinding/ViewDataBinding;ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public removeListener(Landroid/databinding/ObservableMap;)V
    .locals 0
    .param p1, "target"    # Landroid/databinding/ObservableMap;

    .prologue
    .line 823
    invoke-interface {p1, p0}, Landroid/databinding/ObservableMap;->removeOnMapChangedCallback(Landroid/databinding/ObservableMap$OnMapChangedCallback;)V

    .line 824
    return-void
.end method

.method public bridge synthetic removeListener(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 803
    check-cast p1, Landroid/databinding/ObservableMap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/databinding/ViewDataBinding$WeakMapListener;->removeListener(Landroid/databinding/ObservableMap;)V

    return-void
.end method
