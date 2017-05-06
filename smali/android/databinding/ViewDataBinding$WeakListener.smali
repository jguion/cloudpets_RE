.class Landroid/databinding/ViewDataBinding$WeakListener;
.super Ljava/lang/ref/WeakReference;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<",
        "Landroid/databinding/ViewDataBinding;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mLocalFieldId:I

.field private final mObservable:Landroid/databinding/ViewDataBinding$ObservableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ViewDataBinding$ObservableReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mTarget:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/databinding/ViewDataBinding;ILandroid/databinding/ViewDataBinding$ObservableReference;)V
    .locals 0
    .param p1, "binder"    # Landroid/databinding/ViewDataBinding;
    .param p2, "localFieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ViewDataBinding;",
            "I",
            "Landroid/databinding/ViewDataBinding$ObservableReference",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 672
    .local p0, "this":Landroid/databinding/ViewDataBinding$WeakListener;, "Landroid/databinding/ViewDataBinding$WeakListener<TT;>;"
    .local p3, "observable":Landroid/databinding/ViewDataBinding$ObservableReference;, "Landroid/databinding/ViewDataBinding$ObservableReference<TT;>;"
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 673
    iput p2, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mLocalFieldId:I

    .line 674
    iput-object p3, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mObservable:Landroid/databinding/ViewDataBinding$ObservableReference;

    .line 675
    return-void
.end method


# virtual methods
.method protected getBinder()Landroid/databinding/ViewDataBinding;
    .locals 1

    .prologue
    .line 700
    .local p0, "this":Landroid/databinding/ViewDataBinding$WeakListener;, "Landroid/databinding/ViewDataBinding$WeakListener<TT;>;"
    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding$WeakListener;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/databinding/ViewDataBinding;

    .line 701
    .local v0, "binder":Landroid/databinding/ViewDataBinding;
    if-nez v0, :cond_0

    .line 702
    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding$WeakListener;->unregister()Z

    .line 704
    :cond_0
    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 696
    .local p0, "this":Landroid/databinding/ViewDataBinding$WeakListener;, "Landroid/databinding/ViewDataBinding$WeakListener<TT;>;"
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mTarget:Ljava/lang/Object;

    return-object v0
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 678
    .local p0, "this":Landroid/databinding/ViewDataBinding$WeakListener;, "Landroid/databinding/ViewDataBinding$WeakListener<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding$WeakListener;->unregister()Z

    .line 679
    iput-object p1, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mTarget:Ljava/lang/Object;

    .line 680
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mTarget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mObservable:Landroid/databinding/ViewDataBinding$ObservableReference;

    iget-object v1, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mTarget:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/databinding/ViewDataBinding$ObservableReference;->addListener(Ljava/lang/Object;)V

    .line 683
    :cond_0
    return-void
.end method

.method public unregister()Z
    .locals 3

    .prologue
    .line 686
    .local p0, "this":Landroid/databinding/ViewDataBinding$WeakListener;, "Landroid/databinding/ViewDataBinding$WeakListener<TT;>;"
    const/4 v0, 0x0

    .line 687
    .local v0, "unregistered":Z
    iget-object v1, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mTarget:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 688
    iget-object v1, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mObservable:Landroid/databinding/ViewDataBinding$ObservableReference;

    iget-object v2, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mTarget:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/databinding/ViewDataBinding$ObservableReference;->removeListener(Ljava/lang/Object;)V

    .line 689
    const/4 v0, 0x1

    .line 691
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/databinding/ViewDataBinding$WeakListener;->mTarget:Ljava/lang/Object;

    .line 692
    return v0
.end method
