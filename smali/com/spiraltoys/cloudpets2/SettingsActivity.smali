.class public Lcom/spiraltoys/cloudpets2/SettingsActivity;
.super Lcom/spiraltoys/cloudpets2/BaseActivity;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$OnSettingsFragmentInteractionListener;
.implements Lcom/spiraltoys/cloudpets2/fragments/SoundSettingsFragment$OnSoundSettingsFragmentInteractionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f04002c

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/SettingsActivity;->setContentView(I)V

    .line 27
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/SettingsActivity;->onPreferenceFragmentRequested(Landroid/preference/PreferenceFragment;)V

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/SettingsActivity;->initToolbar()V

    .line 34
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/SettingsActivity;->showToolbarTitle()V

    .line 35
    return-void
.end method

.method public onPreferenceFragmentRequested(Landroid/preference/PreferenceFragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1000d1

    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 44
    return-void
.end method

.method public onResetPasswordRequested()V
    .locals 2

    .prologue
    .line 53
    const v0, 0x7f08019f

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/SettingsActivity;->showProgress(I)Landroid/app/Dialog;

    .line 55
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getEmail()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/SettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/SettingsActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/SettingsActivity;)V

    invoke-static {v0, v1}, Lcom/parse/ParseUser;->requestPasswordResetInBackground(Ljava/lang/String;Lcom/parse/RequestPasswordResetCallback;)V

    .line 71
    return-void
.end method

.method public onTitleSet(I)V
    .locals 1
    .param p1, "titleResourceId"    # I

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/SettingsActivity;->showToolbarTitle(Ljava/lang/String;)V

    .line 49
    return-void
.end method
