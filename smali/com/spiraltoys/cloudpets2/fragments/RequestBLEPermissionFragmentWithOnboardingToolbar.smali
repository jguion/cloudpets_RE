.class public Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragmentWithOnboardingToolbar;
.super Landroid/app/Fragment;
.source "RequestBLEPermissionFragmentWithOnboardingToolbar.java"


# static fields
.field private static final ARG_PLUSH_TOY_CHARACTER_TYPE:Ljava/lang/String; = "plush_toy_character_type"


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionWithOnboardingToolbarBinding;

.field private mCharacterType:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragmentWithOnboardingToolbar;
    .locals 4
    .param p0, "character"    # Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .prologue
    .line 31
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragmentWithOnboardingToolbar;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragmentWithOnboardingToolbar;-><init>()V

    .line 32
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragmentWithOnboardingToolbar;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "plush_toy_character_type"

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragmentWithOnboardingToolbar;->setArguments(Landroid/os/Bundle;)V

    .line 35
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragmentWithOnboardingToolbar;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragmentWithOnboardingToolbar;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "plush_toy_character_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->getCharacter(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragmentWithOnboardingToolbar;->mCharacterType:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .line 45
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    const v2, 0x7f040059

    invoke-static {p1, v2, p2, v4}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionWithOnboardingToolbarBinding;

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragmentWithOnboardingToolbar;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionWithOnboardingToolbarBinding;

    .line 52
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragmentWithOnboardingToolbar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    .line 53
    .local v1, "activity":Landroid/support/v7/app/AppCompatActivity;
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragmentWithOnboardingToolbar;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionWithOnboardingToolbarBinding;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionWithOnboardingToolbarBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f10008e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 54
    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 56
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 58
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 59
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragmentWithOnboardingToolbar;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionWithOnboardingToolbarBinding;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionWithOnboardingToolbarBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1000d2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragmentWithOnboardingToolbar;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/spiraltoys/cloudpets2/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragmentWithOnboardingToolbar;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f100087

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragmentWithOnboardingToolbar;->mCharacterType:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .line 66
    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;->newInstance(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 69
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragmentWithOnboardingToolbar;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionWithOnboardingToolbarBinding;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionWithOnboardingToolbarBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    return-object v2
.end method
