.class public Landroid/databinding/BaseObservable;
.super Ljava/lang/Object;
.source "BaseObservable.java"

# interfaces
.implements Landroid/databinding/Observable;


# instance fields
.field private transient mCallbacks:Landroid/databinding/PropertyChangeRegistry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public declared-synchronized addOnPropertyChangedCallback(Landroid/databinding/Observable$OnPropertyChangedCallback;)V
    .locals 1
    .param p1, "listener"    # Landroid/databinding/Observable$OnPropertyChangedCallback;

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/databinding/BaseObservable;->mCallbacks:Landroid/databinding/PropertyChangeRegistry;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/databinding/PropertyChangeRegistry;

    invoke-direct {v0}, Landroid/databinding/PropertyChangeRegistry;-><init>()V

    iput-object v0, p0, Landroid/databinding/BaseObservable;->mCallbacks:Landroid/databinding/PropertyChangeRegistry;

    .line 34
    :cond_0
    iget-object v0, p0, Landroid/databinding/BaseObservable;->mCallbacks:Landroid/databinding/PropertyChangeRegistry;

    invoke-virtual {v0, p1}, Landroid/databinding/PropertyChangeRegistry;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyChange()V
    .locals 3

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/databinding/BaseObservable;->mCallbacks:Landroid/databinding/PropertyChangeRegistry;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Landroid/databinding/BaseObservable;->mCallbacks:Landroid/databinding/PropertyChangeRegistry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/databinding/PropertyChangeRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_0
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyPropertyChanged(I)V
    .locals 2
    .param p1, "fieldId"    # I

    .prologue
    .line 51
    iget-object v0, p0, Landroid/databinding/BaseObservable;->mCallbacks:Landroid/databinding/PropertyChangeRegistry;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Landroid/databinding/BaseObservable;->mCallbacks:Landroid/databinding/PropertyChangeRegistry;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/databinding/PropertyChangeRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 54
    :cond_0
    return-void
.end method

.method public declared-synchronized removeOnPropertyChangedCallback(Landroid/databinding/Observable$OnPropertyChangedCallback;)V
    .locals 1
    .param p1, "listener"    # Landroid/databinding/Observable$OnPropertyChangedCallback;

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/databinding/BaseObservable;->mCallbacks:Landroid/databinding/PropertyChangeRegistry;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Landroid/databinding/BaseObservable;->mCallbacks:Landroid/databinding/PropertyChangeRegistry;

    invoke-virtual {v0, p1}, Landroid/databinding/PropertyChangeRegistry;->remove(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
