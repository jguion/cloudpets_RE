.class Landroid/databinding/ViewStubProxy$1;
.super Ljava/lang/Object;
.source "ViewStubProxy.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ViewStubProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/databinding/ViewStubProxy;


# direct methods
.method constructor <init>(Landroid/databinding/ViewStubProxy;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Landroid/databinding/ViewStubProxy$1;->this$0:Landroid/databinding/ViewStubProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 3
    .param p1, "stub"    # Landroid/view/ViewStub;
    .param p2, "inflated"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 37
    iget-object v0, p0, Landroid/databinding/ViewStubProxy$1;->this$0:Landroid/databinding/ViewStubProxy;

    # setter for: Landroid/databinding/ViewStubProxy;->mRoot:Landroid/view/View;
    invoke-static {v0, p2}, Landroid/databinding/ViewStubProxy;->access$002(Landroid/databinding/ViewStubProxy;Landroid/view/View;)Landroid/view/View;

    .line 38
    iget-object v0, p0, Landroid/databinding/ViewStubProxy$1;->this$0:Landroid/databinding/ViewStubProxy;

    invoke-virtual {p1}, Landroid/view/ViewStub;->getLayoutResource()I

    move-result v1

    invoke-static {p2, v1}, Landroid/databinding/DataBindingUtil;->bind(Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object v1

    # setter for: Landroid/databinding/ViewStubProxy;->mViewDataBinding:Landroid/databinding/ViewDataBinding;
    invoke-static {v0, v1}, Landroid/databinding/ViewStubProxy;->access$102(Landroid/databinding/ViewStubProxy;Landroid/databinding/ViewDataBinding;)Landroid/databinding/ViewDataBinding;

    .line 39
    iget-object v0, p0, Landroid/databinding/ViewStubProxy$1;->this$0:Landroid/databinding/ViewStubProxy;

    # setter for: Landroid/databinding/ViewStubProxy;->mViewStub:Landroid/view/ViewStub;
    invoke-static {v0, v2}, Landroid/databinding/ViewStubProxy;->access$202(Landroid/databinding/ViewStubProxy;Landroid/view/ViewStub;)Landroid/view/ViewStub;

    .line 41
    iget-object v0, p0, Landroid/databinding/ViewStubProxy$1;->this$0:Landroid/databinding/ViewStubProxy;

    # getter for: Landroid/databinding/ViewStubProxy;->mOnInflateListener:Landroid/view/ViewStub$OnInflateListener;
    invoke-static {v0}, Landroid/databinding/ViewStubProxy;->access$300(Landroid/databinding/ViewStubProxy;)Landroid/view/ViewStub$OnInflateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Landroid/databinding/ViewStubProxy$1;->this$0:Landroid/databinding/ViewStubProxy;

    # getter for: Landroid/databinding/ViewStubProxy;->mOnInflateListener:Landroid/view/ViewStub$OnInflateListener;
    invoke-static {v0}, Landroid/databinding/ViewStubProxy;->access$300(Landroid/databinding/ViewStubProxy;)Landroid/view/ViewStub$OnInflateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewStub$OnInflateListener;->onInflate(Landroid/view/ViewStub;Landroid/view/View;)V

    .line 43
    iget-object v0, p0, Landroid/databinding/ViewStubProxy$1;->this$0:Landroid/databinding/ViewStubProxy;

    # setter for: Landroid/databinding/ViewStubProxy;->mOnInflateListener:Landroid/view/ViewStub$OnInflateListener;
    invoke-static {v0, v2}, Landroid/databinding/ViewStubProxy;->access$302(Landroid/databinding/ViewStubProxy;Landroid/view/ViewStub$OnInflateListener;)Landroid/view/ViewStub$OnInflateListener;

    .line 45
    :cond_0
    iget-object v0, p0, Landroid/databinding/ViewStubProxy$1;->this$0:Landroid/databinding/ViewStubProxy;

    # getter for: Landroid/databinding/ViewStubProxy;->mContainingBinding:Landroid/databinding/ViewDataBinding;
    invoke-static {v0}, Landroid/databinding/ViewStubProxy;->access$400(Landroid/databinding/ViewStubProxy;)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroid/databinding/ViewDataBinding;->invalidateAll()V

    .line 46
    iget-object v0, p0, Landroid/databinding/ViewStubProxy$1;->this$0:Landroid/databinding/ViewStubProxy;

    # getter for: Landroid/databinding/ViewStubProxy;->mContainingBinding:Landroid/databinding/ViewDataBinding;
    invoke-static {v0}, Landroid/databinding/ViewStubProxy;->access$400(Landroid/databinding/ViewStubProxy;)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroid/databinding/ViewDataBinding;->forceExecuteBindings()V

    .line 47
    return-void
.end method
