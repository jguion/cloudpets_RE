.class final Landroid/databinding/MapChangeRegistry$1;
.super Landroid/databinding/CallbackRegistry$NotifierCallback;
.source "MapChangeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/MapChangeRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/databinding/CallbackRegistry$NotifierCallback",
        "<",
        "Landroid/databinding/ObservableMap$OnMapChangedCallback;",
        "Landroid/databinding/ObservableMap;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/databinding/CallbackRegistry$NotifierCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyCallback(Landroid/databinding/ObservableMap$OnMapChangedCallback;Landroid/databinding/ObservableMap;ILjava/lang/Object;)V
    .locals 0
    .param p1, "callback"    # Landroid/databinding/ObservableMap$OnMapChangedCallback;
    .param p2, "sender"    # Landroid/databinding/ObservableMap;
    .param p3, "arg"    # I
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 26
    invoke-virtual {p1, p2, p4}, Landroid/databinding/ObservableMap$OnMapChangedCallback;->onMapChanged(Landroid/databinding/ObservableMap;Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public bridge synthetic onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 22
    check-cast p1, Landroid/databinding/ObservableMap$OnMapChangedCallback;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/databinding/ObservableMap;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/databinding/MapChangeRegistry$1;->onNotifyCallback(Landroid/databinding/ObservableMap$OnMapChangedCallback;Landroid/databinding/ObservableMap;ILjava/lang/Object;)V

    return-void
.end method
