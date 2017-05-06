.class public Landroid/databinding/ObservableField;
.super Landroid/databinding/BaseObservable;
.source "ObservableField.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/databinding/BaseObservable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Landroid/databinding/ObservableField;, "Landroid/databinding/ObservableField<TT;>;"
    invoke-direct {p0}, Landroid/databinding/BaseObservable;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Landroid/databinding/ObservableField;, "Landroid/databinding/ObservableField<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroid/databinding/BaseObservable;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/databinding/ObservableField;->mValue:Ljava/lang/Object;

    .line 37
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Landroid/databinding/ObservableField;, "Landroid/databinding/ObservableField<TT;>;"
    iget-object v0, p0, Landroid/databinding/ObservableField;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Landroid/databinding/ObservableField;, "Landroid/databinding/ObservableField<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/databinding/ObservableField;->mValue:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 51
    iput-object p1, p0, Landroid/databinding/ObservableField;->mValue:Ljava/lang/Object;

    .line 52
    invoke-virtual {p0}, Landroid/databinding/ObservableField;->notifyChange()V

    .line 54
    :cond_0
    return-void
.end method
