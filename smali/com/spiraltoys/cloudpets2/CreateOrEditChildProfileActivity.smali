.class public Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;
.super Lcom/spiraltoys/cloudpets2/BaseActivity;
.source "CreateOrEditChildProfileActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;
.implements Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$OnPetAvatarChangeListener;
.implements Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$OnToySelectedListener;
.implements Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$OnConnectionCompletedListener;
.implements Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$OnBluetoothToyErrorFragmentInteractionListener;
.implements Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment$OnRequestBLEPermissionFragmentInteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;
    }
.end annotation


# static fields
.field private static final PERMISSIONS_REQUEST_LOCATION_ACCESS:I = 0x2a

.field public static final PROFILE_OBJECT_ID:Ljava/lang/String; = "profile_object_id"


# instance fields
.field private isNewChild:Z

.field mBirthDayOfMonth:I
    .annotation build Licepick/State;
    .end annotation
.end field

.field mBirthMonth:I
    .annotation build Licepick/State;
    .end annotation
.end field

.field mDisplayName:Ljava/lang/String;
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

.field mNextButton:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1000a6
    .end annotation
.end field

.field mPetNickname:Ljava/lang/String;
    .annotation build Licepick/State;
    .end annotation
.end field

.field private mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

.field mProfilePhotoUri:Landroid/net/Uri;
    .annotation build Licepick/State;
    .end annotation
.end field

.field private mQueuedFragmentTransaction:Landroid/app/FragmentTransaction;

.field mSaveButton:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1000a8
    .end annotation
.end field

.field mSaveDeleteButtons:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1000a7
    .end annotation
.end field

.field mSelectedCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;
    .annotation build Licepick/State;
    .end annotation
.end field

.field mToyIdentifier:Ljava/lang/String;
    .annotation build Licepick/State;
    .end annotation
.end field

.field private mUpdateRequiredEvent:Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;

.field mUsername:Ljava/lang/String;
    .annotation build Licepick/State;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->goBack()V

    return-void
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;)Lcom/spiraltoys/cloudpets2/model/Profile;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    return-object v0
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->saveProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    return-void
.end method

.method static synthetic access$300(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->isNewChild:Z

    return v0
.end method

.method private backRequested()V
    .locals 3

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mHasUnsavedChanges:Z

    if-eqz v0, :cond_2

    .line 290
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$6;->$SwitchMap$com$spiraltoys$cloudpets2$CreateOrEditChildProfileActivity$Step:[I

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getCurrentStep()Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->goBack()V

    .line 333
    :goto_0
    return-void

    .line 292
    :pswitch_0
    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08017d

    .line 293
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f0800fe

    .line 294
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f08003d

    new-instance v2, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$1;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;)V

    .line 295
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080034

    const/4 v2, 0x0

    .line 301
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    goto :goto_0

    .line 305
    :pswitch_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mPetNickname:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mPetNickname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->onPetNicknameChanged(Ljava/lang/CharSequence;)V

    .line 308
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->goBack()V

    goto :goto_0

    .line 331
    :cond_2
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->goBack()V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private continueToSelectBluetoothToy()V
    .locals 5

    .prologue
    .line 619
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSelectedCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->newInstance(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;

    move-result-object v0

    .line 620
    .local v0, "newFragment":Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;
    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getStepForFragment(Landroid/app/Fragment;)Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    move-result-object v1

    .line 621
    .local v1, "newStep":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 622
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const/16 v3, 0x1001

    .line 623
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 624
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f100087

    .line 625
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 626
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 627
    return-void
.end method

.method private getCurrentStep()Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f100087

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getStepForFragment(Landroid/app/Fragment;)Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    move-result-object v0

    return-object v0
.end method

.method private getStepForFragment(Landroid/app/Fragment;)Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 223
    :cond_0
    instance-of v0, p1, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;

    if-eqz v0, :cond_1

    .line 224
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->SELECT_CHARACTER:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    .line 234
    :goto_0
    return-object v0

    .line 225
    :cond_1
    instance-of v0, p1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;

    if-eqz v0, :cond_2

    .line 226
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->CONFIGURE_TOY_ERROR:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    goto :goto_0

    .line 227
    :cond_2
    instance-of v0, p1, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;

    if-eqz v0, :cond_3

    .line 228
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->REQUEST_BLE_PERMISSION:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    goto :goto_0

    .line 229
    :cond_3
    instance-of v0, p1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;

    if-eqz v0, :cond_4

    .line 230
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->CONFIGURE_TOY_COMPLETE_CONNECTION:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    goto :goto_0

    .line 231
    :cond_4
    instance-of v0, p1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;

    if-eqz v0, :cond_5

    .line 232
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->CONFIGURE_TOY:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    goto :goto_0

    .line 233
    :cond_5
    instance-of v0, p1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    if-eqz v0, :cond_6

    .line 234
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->CONFIGURE_PROFILE:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    goto :goto_0

    .line 236
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private goBack()V
    .locals 3

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->hideSoftKeyboard()V

    .line 337
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$6;->$SwitchMap$com$spiraltoys$cloudpets2$CreateOrEditChildProfileActivity$Step:[I

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getCurrentStep()Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 351
    :pswitch_0
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onBackPressed()V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 346
    :pswitch_1
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->CONFIGURE_TOY:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onBackPressed()V

    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private hideSoftKeyboard()V
    .locals 4

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 393
    .local v0, "currentFocus":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 394
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 395
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 397
    .end local v1    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private initProfileIfEmpty()V
    .locals 3

    .prologue
    .line 241
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/model/Profile;-><init>()V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v1

    if-nez v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    new-instance v2, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    invoke-direct {v2}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;-><init>()V

    invoke-virtual {v1, v2}, Lcom/spiraltoys/cloudpets2/model/Profile;->setPrivateProfile(Lcom/spiraltoys/cloudpets2/model/PrivateProfile;)V

    .line 247
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v1

    sget-object v2, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->CHILD:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    invoke-virtual {v1, v2}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->setProfileType(Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;)V

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->getProfileType()Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    move-result-object v1

    sget-object v2, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->ADULT:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    if-ne v1, v2, :cond_2

    .line 251
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid ProfileType. ProfileType must be of type CHILD"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :cond_2
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v1

    if-nez v1, :cond_3

    .line 255
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/PlushToy;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy;-><init>()V

    .line 256
    .local v0, "plushToy":Lcom/spiraltoys/cloudpets2/model/PlushToy;
    sget-object v1, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->STARBURST_THE_UNICORN:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->setCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)V

    .line 257
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->setPlushToy(Lcom/spiraltoys/cloudpets2/model/PlushToy;)V

    .line 259
    .end local v0    # "plushToy":Lcom/spiraltoys/cloudpets2/model/PlushToy;
    :cond_3
    return-void
.end method

.method private isAvatarValid()Z
    .locals 3

    .prologue
    .line 650
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mPetNickname:Ljava/lang/String;

    const/4 v1, 0x1

    const/16 v2, 0x20

    invoke-direct {p0, v0, v1, v2}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->isWithinLength(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private isEditMode()Z
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlushToyValid()Z
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mToyIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProfileValid()Z
    .locals 3

    .prologue
    const/16 v2, 0x20

    const/4 v0, 0x1

    .line 654
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mDisplayName:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->isWithinLength(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mUsername:Ljava/lang/String;

    .line 655
    invoke-direct {p0, v1, v0, v2}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->isWithinLength(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mPetNickname:Ljava/lang/String;

    .line 656
    invoke-direct {p0, v1, v0, v2}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->isWithinLength(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    :goto_0
    return v0

    .line 656
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWithinLength(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I

    .prologue
    .line 664
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

.method private onContinueToCompleteTheConnectionClicked()V
    .locals 5

    .prologue
    .line 552
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mUpdateRequiredEvent:Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mUpdateRequiredEvent:Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;->getToyIdentifier()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mToyIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 553
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mUpdateRequiredEvent:Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;

    invoke-super {p0, v2}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;)V

    .line 554
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mUpdateRequiredEvent:Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;

    .line 566
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSelectedCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mToyIdentifier:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->newInstance(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;

    move-result-object v0

    .line 559
    .local v0, "newFragment":Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;
    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getStepForFragment(Landroid/app/Fragment;)Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    move-result-object v1

    .line 560
    .local v1, "newStep":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 561
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const/16 v3, 0x1001

    .line 562
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 563
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f100087

    .line 564
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 565
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method private onContinueToSelectBluetoothToyClicked()V
    .locals 5

    .prologue
    .line 582
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v2}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 583
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSelectedCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;->newInstance(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;

    move-result-object v0

    .line 584
    .local v0, "newFragment":Landroid/app/Fragment;
    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getStepForFragment(Landroid/app/Fragment;)Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    move-result-object v1

    .line 585
    .local v1, "newStep":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 586
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const/16 v3, 0x1001

    .line 587
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v2

    const/4 v3, 0x0

    .line 588
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f100087

    .line 589
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 590
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 596
    .end local v0    # "newFragment":Landroid/app/Fragment;
    .end local v1    # "newStep":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;
    :goto_0
    return-void

    .line 595
    :cond_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->continueToSelectBluetoothToy()V

    goto :goto_0
.end method

.method private onContinueToSetupChildProfileClicked()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 569
    sget-object v9, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->CONFIGURE_PROFILE:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    .line 570
    .local v9, "newStep":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v9}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mDisplayName:Ljava/lang/String;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mUsername:Ljava/lang/String;

    iget v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mBirthMonth:I

    iget v3, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mBirthDayOfMonth:I

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfilePhotoUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mPetNickname:Ljava/lang/String;

    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSelectedCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-static/range {v0 .. v7}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;IILandroid/net/Uri;ZLjava/lang/String;Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    move-result-object v8

    .line 572
    .local v8, "newFragment":Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1001

    .line 574
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 575
    invoke-virtual {v9}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f100087

    .line 576
    invoke-virtual {v9}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 577
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 579
    .end local v8    # "newFragment":Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;
    :cond_0
    return-void
.end method

.method private onCreateProfile()V
    .locals 5

    .prologue
    .line 640
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSelectedCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mPetNickname:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->newInstance(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;

    move-result-object v0

    .line 641
    .local v0, "newFragment":Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;
    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getStepForFragment(Landroid/app/Fragment;)Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    move-result-object v1

    .line 642
    .local v1, "newStep":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 643
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 644
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f100087

    .line 645
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 646
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 647
    return-void
.end method

.method private onEditProfile()V
    .locals 10

    .prologue
    .line 630
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mDisplayName:Ljava/lang/String;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mUsername:Ljava/lang/String;

    iget v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mBirthMonth:I

    iget v3, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mBirthDayOfMonth:I

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfilePhotoUri:Landroid/net/Uri;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mPetNickname:Ljava/lang/String;

    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSelectedCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-static/range {v0 .. v7}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;IILandroid/net/Uri;ZLjava/lang/String;Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    move-result-object v8

    .line 631
    .local v8, "newFragment":Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;
    invoke-direct {p0, v8}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getStepForFragment(Landroid/app/Fragment;)Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    move-result-object v9

    .line 632
    .local v9, "newStep":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 634
    invoke-virtual {v9}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f100087

    .line 635
    invoke-virtual {v9}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 636
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 637
    return-void
.end method

.method private populateProfileData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mIsDataPopulated:Z

    if-nez v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->getBirthMonth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mBirthMonth:I

    .line 264
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->getBirthDayOfMonth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mBirthDayOfMonth:I

    .line 265
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPortrait()Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfilePhotoUri:Landroid/net/Uri;

    .line 266
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mDisplayName:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mUsername:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getNickName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mPetNickname:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getConfigID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mToyIdentifier:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getCharacter()Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSelectedCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mIsDataPopulated:Z

    .line 274
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSelectedCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->setCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)V

    .line 275
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->updateCloudPetDetails()V

    .line 277
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mToyIdentifier:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 278
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->onCreateProfile()V

    .line 285
    :goto_1
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPortrait()Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->getFile()Lcom/parse/ParseFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_1
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->onEditProfile()V

    goto :goto_1

    .line 283
    :cond_2
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->updateButtonStates()V

    goto :goto_1
.end method

.method private saveProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 1
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 768
    new-instance v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$5;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$5;-><init>(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;)V

    invoke-static {p1, v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->saveProfile(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/SaveCallback;)V

    .line 793
    return-void
.end method

.method private setCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)V
    .locals 1
    .param p1, "character"    # Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .prologue
    .line 830
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSelectedCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .line 831
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSelectedCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getAppThemeResourceForCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->setTheme(I)V

    .line 832
    return-void
.end method

.method private showToyError(Ljava/lang/String;)V
    .locals 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 534
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const/16 v2, 0x1001

    .line 535
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    .line 536
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f100087

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSelectedCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .line 537
    invoke-static {p1, v3}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;->newInstance(Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 539
    .local v0, "displayErrorTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 544
    :goto_0
    return-void

    .line 542
    :cond_0
    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mQueuedFragmentTransaction:Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public static startWithProfile(Landroid/app/Activity;Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "profile_object_id"

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 132
    return-void
.end method

.method public static startWithProfileForResult(Landroid/app/Activity;Lcom/spiraltoys/cloudpets2/model/Profile;I)V
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p2, "requestCode"    # I

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "profile_object_id"

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 138
    return-void
.end method

.method private updateButtonStates()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 804
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$6;->$SwitchMap$com$spiraltoys$cloudpets2$CreateOrEditChildProfileActivity$Step:[I

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getCurrentStep()Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 823
    :goto_0
    return-void

    .line 806
    :pswitch_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mNextButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->isAvatarValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 807
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 808
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSaveDeleteButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 814
    :pswitch_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSaveDeleteButtons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 818
    :pswitch_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 819
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSaveButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->isProfileValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 820
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSaveDeleteButtons:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 804
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateCloudPetDetails()V
    .locals 3

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->CONFIGURE_PROFILE:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    .line 797
    .local v0, "createOrEditChildProfileFragment":Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;
    if-eqz v0, :cond_0

    .line 798
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSelectedCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->setPlushToyCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)V

    .line 799
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mPetNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->setPlushToyCharacterName(Ljava/lang/String;)V

    .line 801
    :cond_0
    return-void
.end method


# virtual methods
.method createAndSaveChildProfile()V
    .locals 5

    .prologue
    .line 668
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->isProfileValid()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->isPlushToyValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    iget v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mBirthMonth:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mBirthDayOfMonth:I

    if-nez v2, :cond_2

    .line 673
    new-instance v2, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {v2, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08017c

    .line 674
    invoke-virtual {v2, v3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v2

    const v3, 0x7f080100

    .line 675
    invoke-virtual {v2, v3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v2

    const v3, 0x7f08004d

    new-instance v4, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$3;

    invoke-direct {v4, p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$3;-><init>(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;)V

    .line 676
    invoke-virtual {v2, v3, v4}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v2

    .line 682
    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    goto :goto_0

    .line 686
    :cond_2
    const v2, 0x7f0801a0

    invoke-virtual {p0, v2}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->showProgress(I)Landroid/app/Dialog;

    .line 689
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v1

    .line 690
    .local v1, "privateProfile":Lcom/spiraltoys/cloudpets2/model/PrivateProfile;
    sget-object v2, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->CHILD:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    invoke-virtual {v1, v2}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->setProfileType(Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;)V

    .line 692
    iget v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mBirthMonth:I

    if-nez v2, :cond_4

    .line 693
    const-string v2, "birthMonth"

    invoke-virtual {v1, v2}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->remove(Ljava/lang/String;)V

    .line 694
    const-string v2, "birthDayOfMonth"

    invoke-virtual {v1, v2}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->remove(Ljava/lang/String;)V

    .line 701
    :goto_1
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v0

    .line 702
    .local v0, "plushToy":Lcom/spiraltoys/cloudpets2/model/PlushToy;
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mPetNickname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->setNickName(Ljava/lang/String;)V

    .line 703
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSelectedCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-virtual {v0, v2}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->setCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)V

    .line 704
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mToyIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->setConfigID(Ljava/lang/String;)V

    .line 707
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/spiraltoys/cloudpets2/model/Profile;->setDisplayName(Ljava/lang/String;)V

    .line 708
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mUsername:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/spiraltoys/cloudpets2/model/Profile;->setUsername(Ljava/lang/String;)V

    .line 709
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v2, v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->setPlushToy(Lcom/spiraltoys/cloudpets2/model/PlushToy;)V

    .line 710
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spiraltoys/cloudpets2/model/Profile;->setOwner(Lcom/parse/ParseUser;)V

    .line 711
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v2, v1}, Lcom/spiraltoys/cloudpets2/model/Profile;->setPrivateProfile(Lcom/spiraltoys/cloudpets2/model/PrivateProfile;)V

    .line 712
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/Profile;->getACL()Lcom/parse/ParseACL;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/parse/ParseACL;->setPublicReadAccess(Z)V

    .line 715
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfilePhotoUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPortrait()Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfilePhotoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPortrait()Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->getFile()Lcom/parse/ParseFile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 716
    :cond_3
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$4;

    invoke-direct {v3, p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$4;-><init>(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 760
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 696
    .end local v0    # "plushToy":Lcom/spiraltoys/cloudpets2/model/PlushToy;
    :cond_4
    iget v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mBirthMonth:I

    invoke-virtual {v1, v2}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->setBirthMonth(I)V

    .line 697
    iget v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mBirthDayOfMonth:I

    invoke-virtual {v1, v2}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->setBirthDayOfMonth(I)V

    goto :goto_1

    .line 762
    .restart local v0    # "plushToy":Lcom/spiraltoys/cloudpets2/model/PlushToy;
    :cond_5
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-direct {p0, v2}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->saveProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->backRequested()V

    .line 359
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->updateButtonStates()V

    .line 549
    return-void
.end method

.method public onBirthDayOfMonthSelected(I)V
    .locals 1
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 450
    iget v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mBirthDayOfMonth:I

    if-eq p1, v0, :cond_0

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mHasUnsavedChanges:Z

    .line 454
    :cond_0
    iput p1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mBirthDayOfMonth:I

    .line 455
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->updateButtonStates()V

    .line 456
    return-void
.end method

.method public onBirthMonthSelected(I)V
    .locals 1
    .param p1, "month"    # I

    .prologue
    .line 438
    iget v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mBirthMonth:I

    if-eq p1, v0, :cond_0

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mHasUnsavedChanges:Z

    .line 442
    :cond_0
    iput p1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mBirthMonth:I

    .line 443
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->updateButtonStates()V

    .line 444
    return-void
.end method

.method public onCancelBluetoothScanClicked()V
    .locals 3

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->SELECT_CHARACTER:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 407
    return-void
.end method

.method public onChildNameChanged(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "displayName"    # Ljava/lang/CharSequence;

    .prologue
    .line 416
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mHasUnsavedChanges:Z

    .line 420
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mDisplayName:Ljava/lang/String;

    .line 421
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->updateButtonStates()V

    .line 422
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 142
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 145
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "profile_object_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "profileId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "profile_object_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfileFromLocalDatastore(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v2

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f04001f

    :goto_1
    invoke-virtual {p0, v2}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->setContentView(I)V

    .line 156
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 158
    if-nez p1, :cond_4

    .line 159
    iput v4, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mBirthMonth:I

    .line 160
    iput v4, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mBirthDayOfMonth:I

    .line 166
    :goto_2
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 168
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->initProfileIfEmpty()V

    .line 169
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->populateProfileData()V

    .line 170
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->initToolbar()V

    .line 172
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const v3, 0x7f08015e

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 174
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->showToolbarTitle()V

    .line 177
    :cond_1
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->isEditMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 178
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->isNewChild:Z

    .line 180
    :cond_2
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Lcom/parse/ParseException;
    invoke-virtual {v0}, Lcom/parse/ParseException;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v0    # "e":Lcom/parse/ParseException;
    :cond_3
    const v2, 0x7f04001e

    goto :goto_1

    .line 162
    :cond_4
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSelectedCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-direct {p0, v2}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->setCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)V

    .line 163
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->updateCloudPetDetails()V

    goto :goto_2
.end method

.method public onDeleteProfileClicked()V
    .locals 5

    .prologue
    .line 491
    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080178

    .line 492
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f0800fa

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 493
    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f08003a

    new-instance v2, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$2;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$2;-><init>(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;)V

    .line 494
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080034

    const/4 v2, 0x0

    .line 502
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    .line 504
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 201
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onDestroy()V

    .line 202
    return-void
.end method

.method public onEditCloudPetClicked()V
    .locals 5

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->hideSoftKeyboard()V

    .line 479
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSelectedCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mPetNickname:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->newInstance(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;

    move-result-object v0

    .line 480
    .local v0, "newFragment":Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;
    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getStepForFragment(Landroid/app/Fragment;)Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    move-result-object v1

    .line 481
    .local v1, "newStep":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 482
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const/16 v3, 0x1001

    .line 483
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 484
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f100087

    .line 485
    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 486
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 487
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;)V
    .locals 0
    .param p1, "eventRequiresUpdate"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mUpdateRequiredEvent:Lcom/spiraltoys/cloudpets2/toy/event/ToyEventRequiresUpdate;

    .line 364
    return-void
.end method

.method onNextClicked()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000a6
        }
    .end annotation

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->hideSoftKeyboard()V

    .line 370
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$6;->$SwitchMap$com$spiraltoys$cloudpets2$CreateOrEditChildProfileActivity$Step:[I

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getCurrentStep()Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 381
    :goto_0
    :pswitch_0
    return-void

    .line 372
    :pswitch_1
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->onContinueToSelectBluetoothToyClicked()V

    goto :goto_0

    .line 375
    :pswitch_2
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->onContinueToCompleteTheConnectionClicked()V

    goto :goto_0

    .line 378
    :pswitch_3
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->onContinueToSetupChildProfileClicked()V

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 207
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 212
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 209
    :pswitch_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->backRequested()V

    .line 210
    const/4 v0, 0x1

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onPause()V

    .line 185
    invoke-static {}, Lcom/spiraltoys/cloudpets2/toy/ToyManager;->disconnectFromToyEventually()Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;

    .line 186
    return-void
.end method

.method public onPetChanged()V
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mHasUnsavedChanges:Z

    .line 474
    return-void
.end method

.method public onPetCharacterChanged(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)V
    .locals 0
    .param p1, "newCharacter"    # Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->setCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)V

    .line 461
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->updateCloudPetDetails()V

    .line 462
    return-void
.end method

.method public onPetNicknameChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "petNickname"    # Ljava/lang/CharSequence;

    .prologue
    .line 466
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mPetNickname:Ljava/lang/String;

    .line 467
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->updateCloudPetDetails()V

    .line 468
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->updateButtonStates()V

    .line 469
    return-void
.end method

.method public onProfilePhotoUriChanged(Landroid/net/Uri;)V
    .locals 0
    .param p1, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfilePhotoUri:Landroid/net/Uri;

    .line 412
    return-void
.end method

.method public onRequestBlePermissionClicked()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 601
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 602
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 606
    packed-switch p1, :pswitch_data_0

    .line 616
    :goto_0
    return-void

    .line 608
    :pswitch_0
    aget v0, p3, v2

    if-nez v0, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 610
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->continueToSelectBluetoothToy()V

    goto :goto_0

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSaveDeleteButtons:Landroid/view/View;

    const v1, 0x7f0800b8

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 606
    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onResume()V

    .line 192
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mQueuedFragmentTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mQueuedFragmentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mQueuedFragmentTransaction:Landroid/app/FragmentTransaction;

    .line 196
    :cond_0
    return-void
.end method

.method public onRetryBluetoothScanClicked()V
    .locals 3

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->CONFIGURE_TOY:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$Step;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 402
    return-void
.end method

.method onSaveClicked()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000a8
        }
    .end annotation

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->isProfileValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->isPlushToyValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->createAndSaveChildProfile()V

    .line 388
    :cond_0
    return-void
.end method

.method public onToyConnectionTimeout()V
    .locals 1

    .prologue
    .line 524
    const v0, 0x7f0800f9

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->showToyError(Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public onToyScanTimeout(I)V
    .locals 1
    .param p1, "numberOfToysFound"    # I

    .prologue
    .line 519
    if-lez p1, :cond_0

    const v0, 0x7f08011d

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->showToyError(Ljava/lang/String;)V

    .line 520
    return-void

    .line 519
    :cond_0
    const v0, 0x7f08011b

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onToySelected(Ljava/lang/String;)V
    .locals 1
    .param p1, "toyIdentifier"    # Ljava/lang/String;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mToyIdentifier:Ljava/lang/String;

    .line 510
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->updateCloudPetDetails()V

    .line 512
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->isPlushToyValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->onNextClicked()V

    .line 515
    :cond_0
    return-void
.end method

.method public onToySelectionConfirmed()V
    .locals 0

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->onNextClicked()V

    .line 530
    return-void
.end method

.method public onUsernameChanged(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/CharSequence;

    .prologue
    .line 426
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mHasUnsavedChanges:Z

    .line 430
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mUsername:Ljava/lang/String;

    .line 431
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->updateButtonStates()V

    .line 432
    return-void
.end method
