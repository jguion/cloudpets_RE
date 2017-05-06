.class public Lcom/spiraltoys/cloudpets2/CreateAccountActivity;
.super Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;
.source "CreateAccountActivity.java"


# static fields
.field private static final PERMISSIONS_REQUEST_ACCESS_EXTERNAL_STORAGE:I = 0x63

.field private static final PICKER_REQUEST_CODE:I = 0x2a


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

.field mProfilePhotoUri:Landroid/net/Uri;
    .annotation build Licepick/State;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;-><init>()V

    return-void
.end method

.method private isWithinRange(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I

    .prologue
    .line 172
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

.method private setupProfilePhoto()V
    .locals 7

    .prologue
    .line 162
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    .line 163
    .local v0, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->mProfilePhotoUri:Landroid/net/Uri;

    .line 164
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/bumptech/glide/load/Transformation;

    const/4 v3, 0x0

    new-instance v4, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;

    .line 165
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f006e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v4, p0, v0, v5, v6}, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    const v2, 0x7f0200f7

    .line 166
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->profilePhoto:Landroid/widget/ImageView;

    .line 168
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 169
    return-void
.end method

.method private showValidationErrors()Z
    .locals 3

    .prologue
    const/16 v2, 0x20

    const/4 v0, 0x1

    .line 123
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->displayName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const v1, 0x7f08008b

    invoke-static {p0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showHintDialog(Landroid/content/Context;I)V

    .line 158
    :goto_0
    return v0

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->displayName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0, v2}, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->isWithinRange(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    const v1, 0x7f08008f

    invoke-static {p0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showHintDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->email:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    const v1, 0x7f08008c

    invoke-static {p0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showHintDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->email:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->isValidEmailAddress(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 139
    const v1, 0x7f080090

    invoke-static {p0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showHintDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 143
    :cond_3
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    const v1, 0x7f08008d

    invoke-static {p0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showHintDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 148
    :cond_4
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0, v2}, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->isWithinRange(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_5

    .line 149
    const v1, 0x7f080091

    invoke-static {p0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showHintDialog(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 153
    :cond_5
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->passwordRepeat:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 154
    const v1, 0x7f08008a

    invoke-static {p0, v1}, Lcom/spiraltoys/cloudpets2/util/Utils;->showHintDialog(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 158
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private startPhotoPickerForResult()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 94
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 111
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 112
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->mProfilePhotoUri:Landroid/net/Uri;

    .line 113
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->setupProfilePhoto()V

    .line 115
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f04001d

    invoke-static {p0, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

    .line 42
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 44
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->subHeadingText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/util/Utils;->highlightCloudPetsText(Landroid/widget/TextView;)V

    .line 46
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->initToolbar()V

    .line 47
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->setupProfilePhoto()V

    .line 48
    return-void
.end method

.method onLogInClicked()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000a5
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;-><init>()V

    .line 53
    .local v0, "credentials":Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->displayName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->setDisplayName(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->email:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->setEmail(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->setPassword(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->passwordRepeat:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->setPasswordRepeat(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->mProfilePhotoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;->setProfilePhotoUri(Landroid/net/Uri;)V

    .line 60
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->showValidationErrors()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 64
    :cond_0
    const v1, 0x7f080177

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->showProgress(I)Landroid/app/Dialog;

    .line 66
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->logOut(Landroid/content/Context;)V

    .line 67
    new-instance v1, Lcom/spiraltoys/cloudpets2/CreateAccountActivity$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/CreateAccountActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/CreateAccountActivity;)V

    invoke-static {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->signUp(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$SignupCredentials;Lcom/parse/SaveCallback;)V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 98
    packed-switch p1, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 100
    :pswitch_0
    aget v0, p3, v2

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->startPhotoPickerForResult()V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800bd

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch
.end method

.method onSetPhotoClicked()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000a0
        }
    .end annotation

    .prologue
    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;->startPhotoPickerForResult()V

    goto :goto_0
.end method
