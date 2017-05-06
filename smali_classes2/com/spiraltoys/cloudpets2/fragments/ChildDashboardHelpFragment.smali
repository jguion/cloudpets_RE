.class public Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;
.super Landroid/app/Fragment;
.source "ChildDashboardHelpFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment$HelpPagerAdapter;
    }
.end annotation


# static fields
.field private static final TAB_LABELS:[I

.field private static final TAB_LAYOUTS:[I


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardHelpBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 22
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;->TAB_LAYOUTS:[I

    .line 23
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;->TAB_LABELS:[I

    return-void

    .line 22
    :array_0
    .array-data 4
        0x7f040041
        0x7f040042
    .end array-data

    .line 23
    :array_1
    .array-data 4
        0x7f080187
        0x7f0801a3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;->TAB_LABELS:[I

    return-object v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;->TAB_LAYOUTS:[I

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 30
    const v0, 0x7f040040

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardHelpBinding;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardHelpBinding;

    .line 32
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardHelpBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardHelpBinding;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardHelpBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardHelpBinding;->tabs:Landroid/support/design/widget/TabLayout;

    invoke-direct {v1, v2}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 33
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardHelpBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardHelpBinding;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment$HelpPagerAdapter;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment$HelpPagerAdapter;-><init>(Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;Landroid/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 34
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardHelpBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardHelpBinding;->tabs:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardHelpBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardHelpBinding;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 36
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardHelpBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardHelpBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
