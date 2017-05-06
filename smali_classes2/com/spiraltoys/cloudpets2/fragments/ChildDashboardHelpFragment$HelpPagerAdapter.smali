.class Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment$HelpPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "ChildDashboardHelpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;Landroid/app/FragmentManager;)V
    .locals 0
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment$HelpPagerAdapter;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;

    .line 41
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    # getter for: Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;->TAB_LABELS:[I
    invoke-static {}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;->access$000()[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 51
    # getter for: Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;->TAB_LAYOUTS:[I
    invoke-static {}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;->access$100()[I

    move-result-object v0

    aget v0, v0, p1

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/LayoutFragment;->newInstance(I)Lcom/spiraltoys/cloudpets2/fragments/LayoutFragment;

    move-result-object v0

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment$HelpPagerAdapter;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;

    # getter for: Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;->TAB_LABELS:[I
    invoke-static {}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;->access$000()[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
