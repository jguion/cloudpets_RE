.class public Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;
.super Landroid/app/Fragment;
.source "EditAdultProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;
    }
.end annotation


# static fields
.field private static final ARG_EMAIL_ADDRESS:Ljava/lang/String; = "email_address"

.field private static final ARG_PROFILE_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field private static final ARG_PROFILE_PHOTO_URI:Ljava/lang/String; = "profile_photo_uri"

.field private static final PERMISSIONS_REQUEST_ACCESS_EXTERNAL_STORAGE:I = 0x63

.field private static final PICKER_REQUEST_CODE:I = 0x2a


# instance fields
.field mDisplayNameTextField:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1000a1
    .end annotation
.end field

.field mEmailTextField:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1000a2
    .end annotation
.end field

.field mListener:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;

.field mPasswordResetContainerKitKat:Landroid/support/v7/widget/CardView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100111
    .end annotation
.end field

.field mPasswordResetLollipop:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100113
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 80
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;
    .locals 3
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "profilePhotoUri"    # Landroid/net/Uri;

    .prologue
    .line 85
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;-><init>()V

    .line 86
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "display_name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "email_address"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "profile_photo_uri"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 90
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->setArguments(Landroid/os/Bundle;)V

    .line 91
    return-object v1
.end method

.method private setupProfilePhoto()V
    .locals 8

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    .line 187
    .local v0, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mProfilePhotoUri:Landroid/net/Uri;

    .line 188
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/bumptech/glide/load/Transformation;

    const/4 v3, 0x0

    new-instance v4, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;

    .line 189
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f002d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v4, v5, v0, v6, v7}, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    const v2, 0x7f0200f7

    .line 190
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mProfilePhoto:Landroid/widget/ImageView;

    .line 192
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 193
    return-void
.end method

.method private startPhotoPickerForResult()V
    .locals 2

    .prologue
    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 216
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 171
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    .line 174
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mProfilePhotoUri:Landroid/net/Uri;

    .line 175
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mProfilePhotoUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;->onProfilePhotoUriChanged(Landroid/net/Uri;)V

    .line 177
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;->onAdultProfileChanged()V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "profile_photo_uri"

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mProfilePhotoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 181
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->setupProfilePhoto()V

    .line 183
    :cond_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 157
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    return-void

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnAdultProfileChangedListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-static {p0, p1}, Licepick/Icepick;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "profile_photo_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mProfilePhotoUri:Landroid/net/Uri;

    .line 102
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/16 v6, 0x15

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 110
    const v2, 0x7f04004e

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, "view":Landroid/view/View;
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 113
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mPasswordResetContainerKitKat:Landroid/support/v7/widget/CardView;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v6, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 114
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mPasswordResetLollipop:Landroid/widget/Button;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v6, :cond_2

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p3, :cond_0

    .line 119
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mDisplayNameTextField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "display_name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;->setTextWithoutAnimation(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mEmailTextField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "email_address"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spiraltoys/cloudpets2/views/CustomTextInputLayout;->setTextWithoutAnimation(Ljava/lang/String;)V

    .line 123
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;)V

    .line 140
    .local v0, "textWatcher":Landroid/text/TextWatcher;
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mDisplayNameTextField:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->setupProfilePhoto()V

    .line 144
    return-object v1

    .end local v0    # "textWatcher":Landroid/text/TextWatcher;
    :cond_1
    move v2, v4

    .line 113
    goto :goto_0

    :cond_2
    move v3, v4

    .line 114
    goto :goto_1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;

    .line 167
    return-void
.end method

.method onDisplayNameChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "newDisplayName"    # Ljava/lang/CharSequence;
    .annotation build Lbutterknife/OnTextChanged;
        value = {
            0x7f1000a1
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;

    invoke-interface {v0, p1}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;->onDisplayNameChanged(Ljava/lang/CharSequence;)V

    .line 200
    :cond_0
    return-void
.end method

.method onPasswordRestClickedKitKat()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100112
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;->onPasswordResetRequested()V

    .line 237
    :cond_0
    return-void
.end method

.method onPasswordRestClickedLollipop()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100113
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;->onPasswordResetRequested()V

    .line 244
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 220
    packed-switch p1, :pswitch_data_0

    .line 229
    :goto_0
    return-void

    .line 222
    :pswitch_0
    aget v0, p3, v2

    if-nez v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->startPhotoPickerForResult()V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mProfilePhoto:Landroid/widget/ImageView;

    const v1, 0x7f0800bd

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 150
    invoke-static {p0, p1}, Licepick/Icepick;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 151
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
    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->startPhotoPickerForResult()V

    goto :goto_0
.end method
