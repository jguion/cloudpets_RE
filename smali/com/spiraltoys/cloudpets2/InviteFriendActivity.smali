.class public Lcom/spiraltoys/cloudpets2/InviteFriendActivity;
.super Lcom/spiraltoys/cloudpets2/BaseActivity;
.source "InviteFriendActivity.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$OnSelectProfileFragmentInteractionListener;


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;

.field private mCurrentProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

.field private mSelectedProfiles:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/spiraltoys/cloudpets2/InviteFriendActivity;Lcom/spiraltoys/cloudpets2/model/Profile;)Lcom/spiraltoys/cloudpets2/model/Profile;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/InviteFriendActivity;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->mCurrentProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    return-object p1
.end method

.method private showValidationErrors()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 121
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->email:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const v1, 0x7f08008c

    invoke-static {p0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showHintDialog(Landroid/content/Context;I)V

    .line 141
    :goto_0
    return v0

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->email:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->isValidEmailAddress(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    const v1, 0x7f080090

    invoke-static {p0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showHintDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->mSelectedProfiles:Ljava/util/Collection;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->mSelectedProfiles:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    :cond_2
    const v1, 0x7f080092

    invoke-static {p0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showHintDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 136
    :cond_3
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->mCurrentProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->email:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->mCurrentProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/Profile;->getOwner()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    const v1, 0x7f08007c

    invoke-static {p0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showHintDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 141
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 45
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v1, 0x7f040024

    invoke-static {p0, v1}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;

    .line 48
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 50
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->initToolbar()V

    .line 51
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->showToolbarTitle()V

    .line 53
    new-instance v0, Lcom/spiraltoys/cloudpets2/adapters/RelationshipAdapter;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/adapters/RelationshipAdapter;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, "relationshipAdapter":Lcom/spiraltoys/cloudpets2/adapters/RelationshipAdapter;
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->relationshipSpinner:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 55
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->relationshipSpinner:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/adapters/RelationshipAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    .line 57
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f1000aa

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v5, v5, v3, v4}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->newInstance(ZZZLjava/lang/String;)Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 59
    new-instance v1, Lcom/spiraltoys/cloudpets2/InviteFriendActivity$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/InviteFriendActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/InviteFriendActivity;)V

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getLocalAdultProfileInBackground(Lcom/parse/GetCallback;)V

    .line 67
    return-void
.end method

.method public onInviteFriend()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000c0
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->showValidationErrors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->relationshipSpinner:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    .line 91
    .local v1, "relationship":Lcom/spiraltoys/cloudpets2/model/FriendRelationship;
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->email:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "email":Ljava/lang/String;
    const v2, 0x7f0801a6

    invoke-virtual {p0, v2}, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->showProgress(I)Landroid/app/Dialog;

    .line 94
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->mSelectedProfiles:Ljava/util/Collection;

    new-instance v3, Lcom/spiraltoys/cloudpets2/InviteFriendActivity$3;

    invoke-direct {v3, p0}, Lcom/spiraltoys/cloudpets2/InviteFriendActivity$3;-><init>(Lcom/spiraltoys/cloudpets2/InviteFriendActivity;)V

    invoke-static {v2, v0, v0, v1, v3}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->addFriends(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/FriendRelationship;Lcom/parse/SaveCallback;)V

    goto :goto_0
.end method

.method public onProfilesSelected(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "selectedProfiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->mSelectedProfiles:Ljava/util/Collection;

    .line 82
    return-void
.end method

.method public onRefreshProfileList(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 1
    .param p1, "swipeRefreshLayout"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    .prologue
    .line 71
    new-instance v0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/spiraltoys/cloudpets2/InviteFriendActivity$2;-><init>(Lcom/spiraltoys/cloudpets2/InviteFriendActivity;Landroid/support/v4/widget/SwipeRefreshLayout;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllFriendsToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 77
    return-void
.end method
