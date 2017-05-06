.class public Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;
.super Lcom/spiraltoys/cloudpets2/BaseActivity;
.source "ManageProfilesActivity.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment$OnProfileInteractionListener;
.implements Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment$OnFriendRequestInteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/ManageProfilesActivity$ManageProfileAdapter;
    }
.end annotation


# static fields
.field private static final FETCH_ALL_DELAY_MS:I = 0xfa

.field private static final NUMBER_OF_TABS:I = 0x2

.field private static final TAB_TITLES:[I


# instance fields
.field binding:Lcom/spiraltoys/cloudpets2/databinding/ActivityManageProfileBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;->TAB_TITLES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0800e0
        0x7f0800da
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;->TAB_TITLES:[I

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 44
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f040026

    invoke-static {p0, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityManageProfileBinding;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;->binding:Lcom/spiraltoys/cloudpets2/databinding/ActivityManageProfileBinding;

    .line 47
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 49
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;->binding:Lcom/spiraltoys/cloudpets2/databinding/ActivityManageProfileBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityManageProfileBinding;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity$ManageProfileAdapter;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity$ManageProfileAdapter;-><init>(Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;Landroid/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 50
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;->binding:Lcom/spiraltoys/cloudpets2/databinding/ActivityManageProfileBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityManageProfileBinding;->tabs:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;->binding:Lcom/spiraltoys/cloudpets2/databinding/ActivityManageProfileBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityManageProfileBinding;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 52
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 53
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;->binding:Lcom/spiraltoys/cloudpets2/databinding/ActivityManageProfileBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityManageProfileBinding;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;->initToolbar()V

    .line 57
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;->showToolbarTitle()V

    .line 59
    if-nez p1, :cond_1

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    :cond_1
    return-void
.end method

.method public onInviteFriend()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void
.end method

.method public onRefreshFriendRequestList(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 1
    .param p1, "swipeRefreshLayout"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    .prologue
    .line 83
    new-instance v0, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity$3;-><init>(Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;Landroid/support/v4/widget/SwipeRefreshLayout;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllFriendsToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 89
    return-void
.end method

.method public onRefreshProfileList(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 1
    .param p1, "swipeRefreshLayout"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    .prologue
    .line 73
    new-instance v0, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity$2;-><init>(Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;Landroid/support/v4/widget/SwipeRefreshLayout;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllProfilesToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 79
    return-void
.end method
