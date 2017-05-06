.class Landroid/databinding/ViewDataBinding$6;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/databinding/ViewDataBinding;


# direct methods
.method constructor <init>(Landroid/databinding/ViewDataBinding;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Landroid/databinding/ViewDataBinding$6;->this$0:Landroid/databinding/ViewDataBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$6;->this$0:Landroid/databinding/ViewDataBinding;

    const/4 v1, 0x0

    # setter for: Landroid/databinding/ViewDataBinding;->mPendingRebind:Z
    invoke-static {v0, v1}, Landroid/databinding/ViewDataBinding;->access$202(Landroid/databinding/ViewDataBinding;Z)Z

    .line 144
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$6;->this$0:Landroid/databinding/ViewDataBinding;

    # getter for: Landroid/databinding/ViewDataBinding;->mRoot:Landroid/view/View;
    invoke-static {v0}, Landroid/databinding/ViewDataBinding;->access$300(Landroid/databinding/ViewDataBinding;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$6;->this$0:Landroid/databinding/ViewDataBinding;

    # getter for: Landroid/databinding/ViewDataBinding;->mRoot:Landroid/view/View;
    invoke-static {v0}, Landroid/databinding/ViewDataBinding;->access$300(Landroid/databinding/ViewDataBinding;)Landroid/view/View;

    move-result-object v0

    # getter for: Landroid/databinding/ViewDataBinding;->ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;
    invoke-static {}, Landroid/databinding/ViewDataBinding;->access$400()Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 151
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$6;->this$0:Landroid/databinding/ViewDataBinding;

    # getter for: Landroid/databinding/ViewDataBinding;->mRoot:Landroid/view/View;
    invoke-static {v0}, Landroid/databinding/ViewDataBinding;->access$300(Landroid/databinding/ViewDataBinding;)Landroid/view/View;

    move-result-object v0

    # getter for: Landroid/databinding/ViewDataBinding;->ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;
    invoke-static {}, Landroid/databinding/ViewDataBinding;->access$400()Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 156
    :goto_0
    return-void

    .line 144
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 155
    :cond_0
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$6;->this$0:Landroid/databinding/ViewDataBinding;

    invoke-virtual {v0}, Landroid/databinding/ViewDataBinding;->executePendingBindings()V

    goto :goto_0
.end method
