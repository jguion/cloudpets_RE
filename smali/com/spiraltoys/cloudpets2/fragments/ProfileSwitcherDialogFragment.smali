.class public Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;
.super Landroid/app/DialogFragment;
.source "ProfileSwitcherDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$OnProfilePickerInteractionListener;
    }
.end annotation


# static fields
.field private static final ARG_IS_LOCKED:Ljava/lang/String; = "arg_is_locked"

.field private static final ARG_PROFILE_ID:Ljava/lang/String; = "arg_profile_id"


# instance fields
.field private mAdapter:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;

.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;

.field private mIsPasswordProtectAdultDashboardEnabled:Z

.field private mIsSourceLocked:Z

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$OnProfilePickerInteractionListener;

.field private mSelectedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

.field private mSourceProfile:Lcom/spiraltoys/cloudpets2/model/Profile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;)Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$OnProfilePickerInteractionListener;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$OnProfilePickerInteractionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;)Lcom/spiraltoys/cloudpets2/model/Profile;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mSelectedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    return-object v0
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->showIncorrectPasswordError()V

    return-void
.end method

.method private isPasswordRequired()Z
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mSelectedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->isAdult()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mIsPasswordProtectAdultDashboardEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mIsSourceLocked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mSelectedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mSourceProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Lcom/spiraltoys/cloudpets2/model/Profile;Z)Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;
    .locals 4
    .param p0, "sourceProfile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p1, "isLocked"    # Z

    .prologue
    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_profile_id"

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "arg_is_locked"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;-><init>()V

    .line 66
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v1
.end method

.method private setPasswordFieldFontSize()V
    .locals 4

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 215
    .local v0, "maxPasswordFontSize":I
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;->password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;->password:Landroid/widget/EditText;

    const/4 v2, 0x0

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 218
    :cond_0
    return-void
.end method

.method private setSelectedProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 11
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    const/4 v5, 0x0

    .line 193
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mSelectedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 196
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, " "

    .line 199
    .local v1, "placeholderText":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPortrait()Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    move-result-object v3

    .line 200
    .local v3, "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v2

    .line 201
    .local v2, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    if-nez v3, :cond_1

    const/4 v4, 0x0

    .line 202
    :goto_1
    invoke-virtual {v6, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/bumptech/glide/load/Transformation;

    new-instance v7, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;

    .line 203
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f0004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    const/4 v10, -0x1

    invoke-direct {v7, v8, v2, v9, v10}, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    aput-object v7, v6, v5

    invoke-virtual {v4, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    .line 204
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->getLargeInstanceAccentBorder(Landroid/content/Context;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    .line 205
    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;

    iget-object v6, v6, Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;->profilePhoto:Landroid/widget/ImageView;

    .line 206
    invoke-virtual {v4, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 208
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;->getRoot()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v4}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 209
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;->displayName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;

    iget-object v6, v4, Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;->passwordContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->isPasswordRequired()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_2
    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 211
    return-void

    .line 197
    .end local v1    # "placeholderText":Ljava/lang/String;
    .end local v2    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .end local v3    # "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 202
    .restart local v1    # "placeholderText":Ljava/lang/String;
    .restart local v2    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .restart local v3    # "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :cond_1
    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->getFile()Lcom/parse/ParseFile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 210
    :cond_2
    const/16 v4, 0x8

    goto :goto_2
.end method

.method private showIncorrectPasswordError()V
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0800a3

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;I)V

    .line 190
    return-void
.end method


# virtual methods
.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 236
    :try_start_0
    const-class v2, Landroid/app/DialogFragment;

    const-string v3, "mDialog"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 237
    .local v1, "mDialog":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 238
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
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

    .line 240
    .end local v1    # "mDialog":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 136
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$OnProfilePickerInteractionListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$OnProfilePickerInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    return-void

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnProfilePickerInteractionListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method onContinueToProfileClicked()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000cb
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->isPasswordRequired()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$OnProfilePickerInteractionListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$OnProfilePickerInteractionListener;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mSelectedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$OnProfilePickerInteractionListener;->onProfileSelected(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->dismiss()V

    .line 179
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/spiraltoys/cloudpets2/BaseActivity;

    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/BaseActivity;

    const v1, 0x7f08016f

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->showProgress(I)Landroid/app/Dialog;

    .line 160
    :cond_2
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;->password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;)V

    invoke-static {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->checkPassword(Landroid/content/Context;Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$PasswordCheckCallback;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/4 v1, 0x2

    const v2, 0x7f0d0009

    invoke-virtual {p0, v1, v2}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->setStyle(II)V

    .line 75
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->isUseAdminPasswordEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mIsPasswordProtectAdultDashboardEnabled:Z

    .line 77
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "arg_is_locked"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mIsSourceLocked:Z

    .line 80
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "arg_profile_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfileFromLocalDatastore(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v1

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mSourceProfile:Lcom/spiraltoys/cloudpets2/model/Profile;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Lcom/parse/ParseException;
    invoke-virtual {v0}, Lcom/parse/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 226
    new-instance v0, Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 228
    .local v0, "dialog":Landroid/support/v7/app/AppCompatDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    .line 230
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 90
    const v1, 0x7f04004d

    invoke-static {p1, v1, p2, v2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;

    .line 91
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 93
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mSourceProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-direct {p0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->setSelectedProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 94
    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mIsSourceLocked:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mIsPasswordProtectAdultDashboardEnabled:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->setCancelable(Z)V

    .line 95
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->setPasswordFieldFontSize()V

    .line 97
    new-instance v1, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;

    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfilesLocalDatastoreQuery()Lcom/parse/ParseQuery;

    move-result-object v2

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mSourceProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;-><init>(Lcom/parse/ParseQuery;Lcom/spiraltoys/cloudpets2/model/Profile;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mAdapter:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;

    .line 99
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;

    iget-object v0, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;->profileRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 100
    .local v0, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 101
    new-instance v1, Lcom/spiraltoys/cloudpets2/util/TopSpaceItemDecoration;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/util/TopSpaceItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 102
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mAdapter:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 104
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    return-object v1

    .end local v0    # "recyclerView":Landroid/support/v7/widget/RecyclerView;
    :cond_1
    move v1, v2

    .line 94
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mAdapter:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mAdapter:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->release()V

    .line 129
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 130
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/ProfilePickerItemClickedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/ProfilePickerItemClickedEvent;

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/events/ProfilePickerItemClickedEvent;->getClickedProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->setSelectedProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 109
    return-void
.end method

.method onLogOutClicked()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100110
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$OnProfilePickerInteractionListener;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$OnProfilePickerInteractionListener;

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment$OnProfilePickerInteractionListener;->onLogOutSelected()V

    .line 186
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 114
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 120
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 121
    return-void
.end method
