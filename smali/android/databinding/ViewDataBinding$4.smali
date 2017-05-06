.class final Landroid/databinding/ViewDataBinding$4;
.super Landroid/databinding/CallbackRegistry$NotifierCallback;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/databinding/CallbackRegistry$NotifierCallback",
        "<",
        "Landroid/databinding/OnRebindCallback;",
        "Landroid/databinding/ViewDataBinding;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/databinding/CallbackRegistry$NotifierCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyCallback(Landroid/databinding/OnRebindCallback;Landroid/databinding/ViewDataBinding;ILjava/lang/Void;)V
    .locals 1
    .param p1, "callback"    # Landroid/databinding/OnRebindCallback;
    .param p2, "sender"    # Landroid/databinding/ViewDataBinding;
    .param p3, "mode"    # I
    .param p4, "arg2"    # Ljava/lang/Void;

    .prologue
    .line 97
    packed-switch p3, :pswitch_data_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 99
    :pswitch_0
    invoke-virtual {p1, p2}, Landroid/databinding/OnRebindCallback;->onPreBind(Landroid/databinding/ViewDataBinding;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x1

    # setter for: Landroid/databinding/ViewDataBinding;->mRebindHalted:Z
    invoke-static {p2, v0}, Landroid/databinding/ViewDataBinding;->access$002(Landroid/databinding/ViewDataBinding;Z)Z

    goto :goto_0

    .line 104
    :pswitch_1
    invoke-virtual {p1, p2}, Landroid/databinding/OnRebindCallback;->onCanceled(Landroid/databinding/ViewDataBinding;)V

    goto :goto_0

    .line 107
    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/databinding/OnRebindCallback;->onBound(Landroid/databinding/ViewDataBinding;)V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 93
    check-cast p1, Landroid/databinding/OnRebindCallback;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/databinding/ViewDataBinding;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p4, Ljava/lang/Void;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/databinding/ViewDataBinding$4;->onNotifyCallback(Landroid/databinding/OnRebindCallback;Landroid/databinding/ViewDataBinding;ILjava/lang/Void;)V

    return-void
.end method
