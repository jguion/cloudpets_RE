.class Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$2;
.super Landroid/support/v7/app/AppCompatDialog;
.source "ChildDashboardDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 172
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-direct {p0, p2, p3}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 177
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mTitleStack:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mTitleIconStack:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;->toolbarTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mTitleStack:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;->toolbarTitleIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mTitleIconStack:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDialog;->onBackPressed()V

    goto :goto_0
.end method
