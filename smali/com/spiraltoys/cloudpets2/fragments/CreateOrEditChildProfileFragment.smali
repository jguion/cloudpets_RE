.class public Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;
.super Landroid/app/Fragment;
.source "CreateOrEditChildProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;
    }
.end annotation


# static fields
.field private static final ALLOWED_BEAR_OVERLAP_WITH_TITLE_TEXT_DP:I = 0x28

.field private static final ARG_BIRTH_DAY_OF_MONTH:Ljava/lang/String; = "birth_day_of_month"

.field private static final ARG_BIRTH_MONTH:Ljava/lang/String; = "birth_month"

.field private static final ARG_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field private static final ARG_IS_EDIT_MODE:Ljava/lang/String; = "is_edit_mode"

.field private static final ARG_PET_CHARACTER:Ljava/lang/String; = "pet_character"

.field private static final ARG_PET_NAME:Ljava/lang/String; = "pet_name"

.field private static final ARG_PROFILE_PHOTO_URI:Ljava/lang/String; = "profile_photo_uri"

.field private static final ARG_USERNAME:Ljava/lang/String; = "username"

.field public static final INVALID_USERNAME_CHARACTER_SEQUENCES_PATTERN:Ljava/util/regex/Pattern;

.field private static final PERMISSIONS_REQUEST_ACCESS_EXTERNAL_STORAGE:I = 0x2a

.field private static final PICKER_REQUEST_CODE:I = 0x2a


# instance fields
.field mBirthDayOfMonthSpinner:Landroid/widget/Spinner;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10010d
    .end annotation
.end field

.field mBirthMonthSpinner:Landroid/widget/Spinner;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10010c
    .end annotation
.end field

.field mConfiguredPetAvatar:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100115
    .end annotation

    .annotation build Lbutterknife/Optional;
    .end annotation
.end field

.field mConfiguredPetName:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100116
    .end annotation

    .annotation build Lbutterknife/Optional;
    .end annotation
.end field

.field private mDayOfMonthAdapter:Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;

.field mDisplayNameTextField:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1000a1
    .end annotation
.end field

.field mIsEditMode:Z
    .annotation build Licepick/State;
    .end annotation
.end field

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;

.field private mMonthAdapter:Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;

.field mProfileBear:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100108
    .end annotation

    .annotation build Lbutterknife/Optional;
    .end annotation
.end field

.field mProfilePhoto:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1000a0
    .end annotation
.end field

.field mProfilePhotoUri:Landroid/net/Uri;
    .annotation build Licepick/State;
    .end annotation
.end field

.field mTitleText:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1000c3
    .end annotation

    .annotation build Lbutterknife/Optional;
    .end annotation
.end field

.field mUsernameTextField:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10010a
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "[^a-zA-Z0-9_.]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->INVALID_USERNAME_CHARACTER_SEQUENCES_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 119
    return-void
.end method

.method private hideProfileBearIfOverlappingText()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mProfileBear:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mProfileBear:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$4;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$4;-><init>(Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;IILandroid/net/Uri;ZLjava/lang/String;Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;
    .locals 3
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "birthMonth"    # I
    .param p3, "birthDayOfMonth"    # I
    .param p4, "profilePhotoUri"    # Landroid/net/Uri;
    .param p5, "isEditMode"    # Z
    .param p6, "petName"    # Ljava/lang/String;
    .param p7, "character"    # Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .prologue
    .line 129
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;-><init>()V

    .line 130
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "display_name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v2, "username"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "birth_month"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    const-string v2, "birth_day_of_month"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string v2, "profile_photo_uri"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 136
    const-string v2, "is_edit_mode"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    const-string v2, "pet_name"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v2, "pet_character"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 139
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 140
    return-object v1
.end method

.method private setupProfilePhoto()V
    .locals 8

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    .line 354
    .local v0, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mProfilePhotoUri:Landroid/net/Uri;

    .line 355
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/bumptech/glide/load/Transformation;

    const/4 v3, 0x0

    new-instance v4, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;

    .line 356
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0f006e

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v4, v5, v0, v6, v7}, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    const v2, 0x7f0200f7

    .line 357
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 358
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mProfilePhoto:Landroid/widget/ImageView;

    .line 359
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 360
    return-void
.end method

.method private setupUsernameInputFilter()V
    .locals 5

    .prologue
    .line 363
    new-instance v0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$2;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$2;-><init>(Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;)V

    .line 384
    .local v0, "characterFilter":Landroid/text/InputFilter;
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 385
    .local v1, "lengthFilter":Landroid/text/InputFilter;
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mUsernameTextField:Landroid/widget/EditText;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 386
    return-void
.end method

.method private showHelpDialog()V
    .locals 5

    .prologue
    .line 389
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 390
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 391
    const v4, 0x7f04003c

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 392
    const v4, 0x7f1000e0

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 393
    .local v2, "helpTitle":Landroid/widget/TextView;
    const v4, 0x7f0801ae

    invoke-virtual {p0, v4}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    const v4, 0x7f1000e1

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 395
    .local v1, "helpText":Landroid/widget/TextView;
    const v4, 0x7f080122

    invoke-virtual {p0, v4}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    const v4, 0x7f1000e2

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 397
    .local v3, "okButton":Landroid/widget/Button;
    new-instance v4, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$3;

    invoke-direct {v4, p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$3;-><init>(Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 404
    return-void
.end method

.method private startPhotoPickerForResult()V
    .locals 2

    .prologue
    .line 326
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 329
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 244
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    .line 245
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mProfilePhotoUri:Landroid/net/Uri;

    .line 246
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mProfilePhotoUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;->onProfilePhotoUriChanged(Landroid/net/Uri;)V

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "profile_photo_uri"

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mProfilePhotoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 250
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->setupProfilePhoto()V

    .line 252
    :cond_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 230
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    return-void

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnChildProfileChangedListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method onChildNameChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "newNickname"    # Ljava/lang/CharSequence;
    .annotation build Lbutterknife/OnTextChanged;
        value = {
            0x7f1000a1
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;

    invoke-interface {v0, p1}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;->onChildNameChanged(Ljava/lang/CharSequence;)V

    .line 275
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-static {p0, p1}, Licepick/Icepick;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "profile_photo_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mProfilePhotoUri:Landroid/net/Uri;

    .line 150
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_edit_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mIsEditMode:Z

    .line 153
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->setHasOptionsMenu(Z)V

    .line 154
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mIsEditMode:Z

    if-eqz v0, :cond_0

    .line 159
    const v0, 0x7f110001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 161
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 162
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 180
    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mIsEditMode:Z

    if-eqz v1, :cond_4

    const v1, 0x7f04004f

    :goto_0
    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 181
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 182
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->setupUsernameInputFilter()V

    .line 184
    new-instance v4, Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mIsEditMode:Z

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-direct {v4, v5, v2, v1}, Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;-><init>(Landroid/content/Context;ZZ)V

    iput-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mMonthAdapter:Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;

    .line 185
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mBirthMonthSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mMonthAdapter:Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 186
    new-instance v4, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mIsEditMode:Z

    if-nez v1, :cond_6

    move v1, v2

    :goto_2
    invoke-direct {v4, v5, v2, v1}, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;-><init>(Landroid/content/Context;ZZ)V

    iput-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mDayOfMonthAdapter:Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;

    .line 187
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mBirthDayOfMonthSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mDayOfMonthAdapter:Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 189
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p3, :cond_0

    .line 190
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mDisplayNameTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "display_name"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;->setTextWithoutAnimation(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mUsernameTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "username"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;->setTextWithoutAnimation(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mBirthMonthSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "birth_month"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 193
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mBirthDayOfMonthSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "birth_day_of_month"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mConfiguredPetName:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mConfiguredPetName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "pet_name"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mConfiguredPetAvatar:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 201
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mConfiguredPetAvatar:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "pet_character"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getAvatarResourceForCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    :cond_2
    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mIsEditMode:Z

    if-eqz v1, :cond_3

    .line 205
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mUsernameTextField:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 206
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mConfiguredPetName:Landroid/widget/TextView;

    new-instance v2, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$1;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    :cond_3
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->setupProfilePhoto()V

    .line 215
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->hideProfileBearIfOverlappingText()V

    .line 217
    return-object v0

    .line 180
    .end local v0    # "view":Landroid/view/View;
    :cond_4
    const v1, 0x7f04004c

    goto/16 :goto_0

    .restart local v0    # "view":Landroid/view/View;
    :cond_5
    move v1, v3

    .line 184
    goto/16 :goto_1

    :cond_6
    move v1, v3

    .line 186
    goto/16 :goto_2
.end method

.method onDayOfMonthSelected(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation build Lbutterknife/OnItemSelected;
        value = {
            0x7f10010d
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;

    invoke-interface {v0, p1}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;->onBirthDayOfMonthSelected(I)V

    .line 308
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;

    .line 240
    return-void
.end method

.method onEditCloudPetClicked()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100114
        }
    .end annotation

    .annotation build Lbutterknife/Optional;
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;->onEditCloudPetClicked()V

    .line 350
    :cond_0
    return-void
.end method

.method onMonthSelected(I)V
    .locals 2
    .param p1, "position"    # I
    .annotation build Lbutterknife/OnItemSelected;
        value = {
            0x7f10010c
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 286
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mDayOfMonthAdapter:Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;

    invoke-virtual {v0, p1}, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->setMonth(I)V

    .line 289
    if-nez p1, :cond_1

    .line 290
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mBirthDayOfMonthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 291
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mBirthDayOfMonthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 292
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mBirthDayOfMonthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->clearFocus()V

    .line 298
    :goto_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;

    invoke-interface {v0, p1}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;->onBirthMonthSelected(I)V

    .line 301
    :cond_0
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mBirthDayOfMonthSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 167
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 174
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;->onDeleteProfileClicked()V

    .line 172
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x7f10016a
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 333
    packed-switch p1, :pswitch_data_0

    .line 342
    :goto_0
    return-void

    .line 335
    :pswitch_0
    aget v0, p3, v2

    if-nez v0, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->startPhotoPickerForResult()V

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mProfilePhoto:Landroid/widget/ImageView;

    const v1, 0x7f0800bd

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 223
    invoke-static {p0, p1}, Licepick/Icepick;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 224
    return-void
.end method

.method onSetPhotoClicked()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000a0
        }
    .end annotation

    .prologue
    .line 317
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 323
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->startPhotoPickerForResult()V

    goto :goto_0
.end method

.method onUsernameChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "newUsername"    # Ljava/lang/CharSequence;
    .annotation build Lbutterknife/OnTextChanged;
        value = {
            0x7f10010a
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;

    invoke-interface {v0, p1}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$OnChildProfileChangedListener;->onUsernameChanged(Ljava/lang/CharSequence;)V

    .line 282
    :cond_0
    return-void
.end method

.method onUsernameHelpButtonClicked()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f10010b
        }
    .end annotation

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->showHelpDialog()V

    .line 313
    return-void
.end method

.method public setPlushToyCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)V
    .locals 4
    .param p1, "character"    # Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 256
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "pet_character"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 257
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mConfiguredPetAvatar:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 258
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mConfiguredPetAvatar:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "pet_character"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getAvatarResourceForCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    :cond_0
    return-void
.end method

.method public setPlushToyCharacterName(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 264
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "pet_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 265
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mConfiguredPetName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mConfiguredPetName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "pet_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :cond_0
    return-void
.end method
