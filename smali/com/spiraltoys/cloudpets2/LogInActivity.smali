.class public Lcom/spiraltoys/cloudpets2/LogInActivity;
.super Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;
.source "LogInActivity.java"


# static fields
.field public static final ALLOWED_BEAR_OVERLAP_WITH_FORGOT_PASSWORD_BUTTON_DP:I = 0x18


# instance fields
.field mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;-><init>()V

    return-void
.end method

.method private hideLoginBearIfOverlappingText()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/LogInActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/LogInActivity$3;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/LogInActivity$3;-><init>(Lcom/spiraltoys/cloudpets2/LogInActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 154
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f040025

    invoke-static {p0, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/LogInActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;

    .line 37
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 39
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/LogInActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;->titleText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/util/Utils;->highlightCloudPetsText(Landroid/widget/TextView;)V

    .line 41
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/LogInActivity;->initToolbar()V

    .line 42
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/LogInActivity;->hideLoginBearIfOverlappingText()V

    .line 43
    return-void
.end method

.method onLogInClicked()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000c1
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/LogInActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;->email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/util/Utils;->isValidEmailAddress(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const v0, 0x7f080090

    invoke-static {p0, v0}, Lcom/spiraltoys/cloudpets2/util/Utils;->showHintDialog(Landroid/content/Context;I)V

    .line 113
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/LogInActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;->email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/LogInActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;->password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    :cond_1
    const v0, 0x7f08008d

    invoke-static {p0, v0}, Lcom/spiraltoys/cloudpets2/util/Utils;->showHintDialog(Landroid/content/Context;I)V

    goto :goto_0

    .line 57
    :cond_2
    const v0, 0x7f080189

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/LogInActivity;->showProgress(I)Landroid/app/Dialog;

    .line 59
    invoke-static {p0}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->logOut(Landroid/content/Context;)V

    .line 60
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/LogInActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;->email:Landroid/widget/EditText;

    .line 61
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/LogInActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;->password:Landroid/widget/EditText;

    .line 62
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/spiraltoys/cloudpets2/LogInActivity$1;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/LogInActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/LogInActivity;)V

    .line 60
    invoke-static {p0, v0, v1, v2}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper;->logIn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V

    goto :goto_0
.end method

.method onPasswordResetClicked()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000c4
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/LogInActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;->email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/util/Utils;->isValidEmailAddress(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const v0, 0x7f080090

    invoke-static {p0, v0}, Lcom/spiraltoys/cloudpets2/util/Utils;->showHintDialog(Landroid/content/Context;I)V

    .line 119
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/LogInActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;->email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 140
    :goto_0
    return-void

    .line 123
    :cond_0
    const v0, 0x7f08019f

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/LogInActivity;->showProgress(I)Landroid/app/Dialog;

    .line 125
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/LogInActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;->email:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/LogInActivity$2;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/LogInActivity$2;-><init>(Lcom/spiraltoys/cloudpets2/LogInActivity;)V

    invoke-static {v0, v1}, Lcom/parse/ParseUser;->requestPasswordResetInBackground(Ljava/lang/String;Lcom/parse/RequestPasswordResetCallback;)V

    goto :goto_0
.end method
