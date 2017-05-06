.class public Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;
.super Lcom/spiraltoys/cloudpets2/BaseActivity;
.source "EditFriendPermissionActivity.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$OnSelectProfileFragmentInteractionListener;


# instance fields
.field private mFriendRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

.field private mHasUnsavedChanges:Z

.field private mNewlySelectedProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

.field mProfileName:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1000a9
    .end annotation
.end field

.field mProfilePhoto:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1000a0
    .end annotation
.end field

.field private mSelectedProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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
    .line 53
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->goBack()V

    return-void
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;)Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mFriendRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    return-object v0
.end method

.method private backRequested()V
    .locals 3

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mHasUnsavedChanges:Z

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08017d

    .line 159
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f0800fe

    .line 160
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f08003d

    new-instance v2, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$1;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;)V

    .line 161
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080034

    const/4 v2, 0x0

    .line 167
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->goBack()V

    goto :goto_0
.end method

.method private goBack()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->hideSoftKeyboard()V

    .line 153
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onBackPressed()V

    .line 154
    return-void
.end method

.method private hideSoftKeyboard()V
    .locals 4

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 145
    .local v0, "currentFocus":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 146
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 147
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 149
    .end local v1    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->backRequested()V

    .line 177
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v5

    const-class v6, Lcom/spiraltoys/cloudpets2/events/FriendRecordEditEvent;

    invoke-virtual {v5, v6}, Lde/greenrobot/event/EventBus;->getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/spiraltoys/cloudpets2/events/FriendRecordEditEvent;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/events/FriendRecordEditEvent;->getFriendRecordGroup()Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    move-result-object v5

    iput-object v5, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mFriendRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    .line 77
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mFriendRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->first()Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getTargetProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v5

    iput-object v5, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 78
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mSelectedProfiles:Ljava/util/ArrayList;

    .line 79
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mNewlySelectedProfiles:Ljava/util/ArrayList;

    .line 80
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mPendingProfiles:Ljava/util/ArrayList;

    .line 82
    const v5, 0x7f040020

    invoke-virtual {p0, v5}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->setContentView(I)V

    .line 83
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 85
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->initToolbar()V

    .line 86
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->showToolbarTitle()V

    .line 88
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v1, " "

    .line 91
    .local v1, "placeholderText":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPortrait()Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    move-result-object v3

    .line 92
    .local v3, "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v2

    .line 93
    .local v2, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    if-nez v3, :cond_2

    const/4 v5, 0x0

    .line 94
    :goto_1
    invoke-virtual {v6, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    new-array v6, v10, [Lcom/bumptech/glide/load/Transformation;

    new-instance v7, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;

    const v8, 0x7f0f006e

    .line 95
    invoke-static {p0, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-direct {v7, p0, v2, v8, v9}, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    aput-object v7, v6, v9

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    .line 96
    invoke-static {p0, v1}, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->getLargeInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    .line 97
    invoke-virtual {v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mProfilePhoto:Landroid/widget/ImageView;

    .line 98
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 100
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mProfileName:Landroid/widget/TextView;

    const v6, 0x7f0800d9

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v8}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mFriendRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    invoke-virtual {v8}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->first()Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    move-result-object v8

    invoke-virtual {v8}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getRelationship()Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->getLocalizedString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mFriendRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    .line 103
    .local v4, "record":Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mSelectedProfiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getSourceProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mNewlySelectedProfiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getSourceProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getStatus()Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    move-result-object v6

    sget-object v7, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->PENDING:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    if-ne v6, v7, :cond_0

    .line 106
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mPendingProfiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getSourceProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 89
    .end local v1    # "placeholderText":Ljava/lang/String;
    .end local v2    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .end local v3    # "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    .end local v4    # "record":Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    :cond_1
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 94
    .restart local v1    # "placeholderText":Ljava/lang/String;
    .restart local v2    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .restart local v3    # "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :cond_2
    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->getFile()Lcom/parse/ParseFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 110
    :cond_3
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v5

    new-instance v6, Lcom/spiraltoys/cloudpets2/events/ProfilesSelectedForSelectProfileEvent;

    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mSelectedProfiles:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mPendingProfiles:Ljava/util/ArrayList;

    invoke-direct {v6, v7, v8}, Lcom/spiraltoys/cloudpets2/events/ProfilesSelectedForSelectProfileEvent;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 113
    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x7f1000aa

    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mFriendRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    .line 114
    invoke-virtual {v7}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->first()Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getTargetProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v10, v9, v7}, Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;->newInstance(ZZZLjava/lang/String;)Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 115
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    .line 116
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 122
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f110002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 123
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDeleteClicked()V
    .locals 3

    .prologue
    .line 199
    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    .line 200
    .local v0, "builder":Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    const v1, 0x7f080179

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    .line 201
    const v1, 0x7f080119

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    .line 202
    const v1, 0x7f08004d

    new-instance v2, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$3;-><init>(Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    .line 220
    const v1, 0x7f080034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    .line 221
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    .line 222
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 129
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 138
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 131
    :sswitch_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->backRequested()V

    goto :goto_0

    .line 135
    :sswitch_1
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->onDeleteClicked()V

    goto :goto_0

    .line 129
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f10016a -> :sswitch_1
    .end sparse-switch
.end method

.method public onProfilesSelected(Ljava/util/Collection;)V
    .locals 2
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
    .line 191
    .local p1, "selectedProfiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mNewlySelectedProfiles:Ljava/util/ArrayList;

    .line 193
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mSelectedProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mNewlySelectedProfiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mHasUnsavedChanges:Z

    .line 196
    :cond_0
    return-void
.end method

.method public onRefreshProfileList(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 1
    .param p1, "swipeRefreshLayout"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    .prologue
    .line 181
    new-instance v0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$2;-><init>(Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;Landroid/support/v4/widget/SwipeRefreshLayout;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllFriendsToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 187
    return-void
.end method

.method protected savePermissionsClicked()V
    .locals 10
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000ab
        }
    .end annotation

    .prologue
    .line 227
    const v6, 0x7f0801b3

    invoke-virtual {p0, v6}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->showProgress(I)Landroid/app/Dialog;

    .line 230
    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mSelectedProfiles:Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 231
    .local v3, "original":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mNewlySelectedProfiles:Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 233
    .local v2, "newlyChanged":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 234
    .local v4, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mSelectedProfiles:Ljava/util/ArrayList;

    invoke-interface {v2, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 235
    invoke-interface {v3, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 237
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v5, "toBeDeletedFriendRecords":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/FriendRecord;>;"
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mFriendRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    invoke-virtual {v6}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    .line 240
    .local v0, "friendRecord":Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getSourceProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v7

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 242
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 248
    .end local v0    # "friendRecord":Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    .end local v1    # "i":I
    :cond_2
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mFriendRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    invoke-virtual {v6}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->first()Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    move-result-object v6

    invoke-virtual {v6}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getTargetEmailAddress()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mFriendRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    .line 249
    invoke-virtual {v7}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->first()Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;->mFriendRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    invoke-virtual {v8}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->first()Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    move-result-object v8

    invoke-virtual {v8}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getRelationship()Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    move-result-object v8

    new-instance v9, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;

    invoke-direct {v9, p0, v5}, Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity$4;-><init>(Lcom/spiraltoys/cloudpets2/EditFriendPermissionActivity;Ljava/util/List;)V

    .line 248
    invoke-static {v2, v6, v7, v8, v9}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->addFriends(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/FriendRelationship;Lcom/parse/SaveCallback;)V

    .line 276
    return-void
.end method
