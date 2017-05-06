.class public Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;
.super Landroid/app/DialogFragment;
.source "PremiumDialogFragment.java"


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentPremiumDialogBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;
    .locals 2

    .prologue
    .line 31
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;-><init>()V

    .line 32
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    return-object v1
.end method


# virtual methods
.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    :try_start_0
    const-class v2, Landroid/app/DialogFragment;

    const-string v3, "mDialog"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 83
    .local v1, "mDialog":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 86
    .end local v1    # "mDialog":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x2

    const v1, 0x7f0d0096

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;->setStyle(II)V

    .line 41
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 71
    new-instance v0, Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 73
    .local v0, "dialog":Landroid/support/v7/app/AppCompatDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    .line 74
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AppCompatDialog;->setCanceledOnTouchOutside(Z)V

    .line 75
    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 46
    const v0, 0x7f040054

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentPremiumDialogBinding;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentPremiumDialogBinding;

    .line 48
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentPremiumDialogBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentPremiumDialogBinding;->bgGetPremium:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentPremiumDialogBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentPremiumDialogBinding;->getPremiumButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment$2;-><init>(Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/PremiumDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentPremiumDialogBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentPremiumDialogBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
