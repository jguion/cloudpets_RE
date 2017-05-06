.class public Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;
.super Lcom/spiraltoys/cloudpets2/BaseActivity;
.source "EditParentProfileActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;


# static fields
.field public static final EXTRA_PROFILE_ID:Ljava/lang/String; = "extra_profile_id"


# instance fields
.field mDisplayName:Ljava/lang/String;
    .annotation build Licepick/State;
    .end annotation
.end field

.field mEmailAddress:Ljava/lang/String;
    .annotation build Licepick/State;
    .end annotation
.end field

.field mHasUnsavedChanges:Z
    .annotation build Licepick/State;
    .end annotation
.end field

.field mIsDataPopulated:Z
    .annotation build Licepick/State;
    .end annotation
.end field

.field private mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

.field mProfilePhotoUri:Landroid/net/Uri;
    .annotation build Licepick/State;
    .end annotation
.end field

.field mSaveProfileButton:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1000ae
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->goBack()V

    return-void
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;)Lcom/spiraltoys/cloudpets2/model/Profile;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    return-object v0
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->saveProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    return-void
.end method

.method private backRequested()V
    .locals 3

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mHasUnsavedChanges:Z

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08017d

    .line 121
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f0800fe

    .line 122
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f08003d

    new-instance v2, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$1;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;)V

    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080034

    const/4 v2, 0x0

    .line 129
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->goBack()V

    goto :goto_0
.end method

.method private getProfileId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_profile_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private goBack()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->hideSoftKeyboard()V

    .line 138
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onBackPressed()V

    .line 139
    return-void
.end method

.method private hideSoftKeyboard()V
    .locals 4

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 262
    .local v0, "currentFocus":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 263
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 264
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 266
    .end local v1    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private isProfileValid()Z
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mDisplayName:Ljava/lang/String;

    const/4 v1, 0x1

    const/16 v2, 0x20

    invoke-direct {p0, v0, v1, v2}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->isWithinLength(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private isWithinLength(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I

    .prologue
    .line 254
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private populateProfileData()V
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mIsDataPopulated:Z

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mDisplayName:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getOwner()Lcom/parse/ParseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mEmailAddress:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPortrait()Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 176
    :goto_0
    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfilePhotoUri:Landroid/net/Uri;

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mIsDataPopulated:Z

    .line 182
    :goto_1
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 176
    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPortrait()Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->getFile()Lcom/parse/ParseFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_1
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->updateButtonState()V

    goto :goto_1
.end method

.method private saveProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 1
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 273
    new-instance v0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$3;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$3;-><init>(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;)V

    invoke-static {p1, v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->saveProfile(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/SaveCallback;)V

    .line 293
    return-void
.end method

.method public static startWithProfile(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 72
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForEditEvent;

    invoke-direct {v2, p1}, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForEditEvent;-><init>(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_profile_id"

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method private updateButtonState()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mSaveProfileButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->isProfileValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 186
    return-void
.end method


# virtual methods
.method public onAdultProfileChanged()V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mHasUnsavedChanges:Z

    .line 316
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->backRequested()V

    .line 116
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->updateButtonState()V

    .line 144
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    const-class v3, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForEditEvent;

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForEditEvent;

    .line 84
    .local v1, "profileSelectedForEditEvent":Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForEditEvent;
    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForEditEvent;->getSelectedProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v2

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    if-nez v2, :cond_1

    .line 91
    :try_start_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->getProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfileFromLocalDatastore(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v2

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_1
    const v2, 0x7f040021

    invoke-virtual {p0, v2}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->setContentView(I)V

    .line 98
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 100
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 102
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->populateProfileData()V

    .line 104
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f100087

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mDisplayName:Ljava/lang/String;

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mEmailAddress:Ljava/lang/String;

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfilePhotoUri:Landroid/net/Uri;

    .line 106
    invoke-static {v4, v5, v6}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 109
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->initToolbar()V

    .line 110
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->showToolbarTitle()V

    .line 111
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lcom/parse/ParseException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 149
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onDestroy()V

    .line 150
    return-void
.end method

.method public onDisplayNameChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "displayName"    # Ljava/lang/CharSequence;

    .prologue
    .line 309
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mDisplayName:Ljava/lang/String;

    .line 310
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->updateButtonState()V

    .line 311
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 155
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 160
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 157
    :pswitch_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->backRequested()V

    .line 158
    const/4 v0, 0x1

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPasswordResetRequested()V
    .locals 2

    .prologue
    .line 320
    const v0, 0x7f08019f

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->showProgress(I)Landroid/app/Dialog;

    .line 322
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getOwner()Lcom/parse/ParseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getEmail()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$4;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$4;-><init>(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;)V

    invoke-static {v0, v1}, Lcom/parse/ParseUser;->requestPasswordResetInBackground(Ljava/lang/String;Lcom/parse/RequestPasswordResetCallback;)V

    .line 339
    return-void
.end method

.method public onProfilePhotoUriChanged(Landroid/net/Uri;)V
    .locals 0
    .param p1, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfilePhotoUri:Landroid/net/Uri;

    .line 304
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->updateButtonState()V

    .line 305
    return-void
.end method

.method onSaveProfileClicked()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000ae
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->isProfileValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->updateAndSaveProfile()V

    .line 169
    :cond_0
    return-void
.end method

.method updateAndSaveProfile()V
    .locals 2

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->isProfileValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 193
    :cond_0
    const v0, 0x7f0801a0

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->showProgress(I)Landroid/app/Dialog;

    .line 195
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/model/Profile;->setDisplayName(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfilePhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPortrait()Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfilePhotoUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPortrait()Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->getFile()Lcom/parse/ParseFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2;-><init>(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 243
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->saveProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    goto :goto_0
.end method
