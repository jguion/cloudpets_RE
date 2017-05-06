.class public Landroid/databinding/ObservableArrayList;
.super Ljava/util/ArrayList;
.source "ObservableArrayList.java"

# interfaces
.implements Landroid/databinding/ObservableList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;",
        "Landroid/databinding/ObservableList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private transient mListeners:Landroid/databinding/ListChangeRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Landroid/databinding/ObservableArrayList;, "Landroid/databinding/ObservableArrayList<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v0, Landroid/databinding/ListChangeRegistry;

    invoke-direct {v0}, Landroid/databinding/ListChangeRegistry;-><init>()V

    iput-object v0, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/ListChangeRegistry;

    return-void
.end method

.method private notifyAdd(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 114
    .local p0, "this":Landroid/databinding/ObservableArrayList;, "Landroid/databinding/ObservableArrayList<TT;>;"
    iget-object v0, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/ListChangeRegistry;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/ListChangeRegistry;

    invoke-virtual {v0, p0, p1, p2}, Landroid/databinding/ListChangeRegistry;->notifyInserted(Landroid/databinding/ObservableList;II)V

    .line 117
    :cond_0
    return-void
.end method

.method private notifyRemove(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 120
    .local p0, "this":Landroid/databinding/ObservableArrayList;, "Landroid/databinding/ObservableArrayList<TT;>;"
    iget-object v0, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/ListChangeRegistry;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/ListChangeRegistry;

    invoke-virtual {v0, p0, p1, p2}, Landroid/databinding/ListChangeRegistry;->notifyRemoved(Landroid/databinding/ObservableList;II)V

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Landroid/databinding/ObservableArrayList;, "Landroid/databinding/ObservableArrayList<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 49
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/databinding/ObservableArrayList;->notifyAdd(II)V

    .line 50
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/databinding/ObservableArrayList;, "Landroid/databinding/ObservableArrayList<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    .line 41
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {p0}, Landroid/databinding/ObservableArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v1}, Landroid/databinding/ObservableArrayList;->notifyAdd(II)V

    .line 43
    return v1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Landroid/databinding/ObservableArrayList;, "Landroid/databinding/ObservableArrayList<TT;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 65
    .local v0, "added":Z
    if-eqz v0, :cond_0

    .line 66
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/databinding/ObservableArrayList;->notifyAdd(II)V

    .line 68
    :cond_0
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Landroid/databinding/ObservableArrayList;, "Landroid/databinding/ObservableArrayList<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-virtual {p0}, Landroid/databinding/ObservableArrayList;->size()I

    move-result v1

    .line 55
    .local v1, "oldSize":I
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 56
    .local v0, "added":Z
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/databinding/ObservableArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-direct {p0, v1, v2}, Landroid/databinding/ObservableArrayList;->notifyAdd(II)V

    .line 59
    :cond_0
    return v0
.end method

.method public addOnListChangedCallback(Landroid/databinding/ObservableList$OnListChangedCallback;)V
    .locals 1
    .param p1, "listener"    # Landroid/databinding/ObservableList$OnListChangedCallback;

    .prologue
    .line 26
    .local p0, "this":Landroid/databinding/ObservableArrayList;, "Landroid/databinding/ObservableArrayList<TT;>;"
    iget-object v0, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/ListChangeRegistry;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Landroid/databinding/ListChangeRegistry;

    invoke-direct {v0}, Landroid/databinding/ListChangeRegistry;-><init>()V

    iput-object v0, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/ListChangeRegistry;

    .line 29
    :cond_0
    iget-object v0, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/ListChangeRegistry;

    invoke-virtual {v0, p1}, Landroid/databinding/ListChangeRegistry;->add(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 73
    .local p0, "this":Landroid/databinding/ObservableArrayList;, "Landroid/databinding/ObservableArrayList<TT;>;"
    invoke-virtual {p0}, Landroid/databinding/ObservableArrayList;->size()I

    move-result v0

    .line 74
    .local v0, "oldSize":I
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 75
    if-eqz v0, :cond_0

    .line 76
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/databinding/ObservableArrayList;->notifyRemove(II)V

    .line 78
    :cond_0
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Landroid/databinding/ObservableArrayList;, "Landroid/databinding/ObservableArrayList<TT;>;"
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, "val":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/databinding/ObservableArrayList;->notifyRemove(II)V

    .line 84
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 89
    .local p0, "this":Landroid/databinding/ObservableArrayList;, "Landroid/databinding/ObservableArrayList<TT;>;"
    invoke-virtual {p0, p1}, Landroid/databinding/ObservableArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 90
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 91
    invoke-virtual {p0, v0}, Landroid/databinding/ObservableArrayList;->remove(I)Ljava/lang/Object;

    .line 92
    const/4 v1, 0x1

    .line 94
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeOnListChangedCallback(Landroid/databinding/ObservableList$OnListChangedCallback;)V
    .locals 1
    .param p1, "listener"    # Landroid/databinding/ObservableList$OnListChangedCallback;

    .prologue
    .line 34
    .local p0, "this":Landroid/databinding/ObservableArrayList;, "Landroid/databinding/ObservableArrayList<TT;>;"
    iget-object v0, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/ListChangeRegistry;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/ListChangeRegistry;

    invoke-virtual {v0, p1}, Landroid/databinding/ListChangeRegistry;->remove(Ljava/lang/Object;)V

    .line 37
    :cond_0
    return-void
.end method

.method protected removeRange(II)V
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 109
    .local p0, "this":Landroid/databinding/ObservableArrayList;, "Landroid/databinding/ObservableArrayList<TT;>;"
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    .line 110
    sub-int v0, p2, p1

    invoke-direct {p0, p1, v0}, Landroid/databinding/ObservableArrayList;->notifyRemove(II)V

    .line 111
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Landroid/databinding/ObservableArrayList;, "Landroid/databinding/ObservableArrayList<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    .local v0, "val":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/ListChangeRegistry;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Landroid/databinding/ObservableArrayList;->mListeners:Landroid/databinding/ListChangeRegistry;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Landroid/databinding/ListChangeRegistry;->notifyChanged(Landroid/databinding/ObservableList;II)V

    .line 104
    :cond_0
    return-object v0
.end method
