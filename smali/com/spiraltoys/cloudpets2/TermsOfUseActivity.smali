.class public Lcom/spiraltoys/cloudpets2/TermsOfUseActivity;
.super Lcom/spiraltoys/cloudpets2/BaseActivity;
.source "TermsOfUseActivity.java"


# static fields
.field private static final ARG_HIDE_BUTTON_BAR:Ljava/lang/String; = "hide_button_bar"


# instance fields
.field mButtonBar:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1000d3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;-><init>()V

    return-void
.end method

.method private isButtonBarHidden()Z
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/TermsOfUseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hide_button_bar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static start(Landroid/app/Activity;Z)V
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "withoutButtonBar"    # Z

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/TermsOfUseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "hide_button_bar"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 24
    return-void
.end method


# virtual methods
.method agreeClicked()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000d5
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/CreateAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/TermsOfUseActivity;->startActivity(Landroid/content/Intent;)V

    .line 49
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/TermsOfUseActivity;->finish()V

    .line 50
    return-void
.end method

.method disagreeClicked()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000d4
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/TermsOfUseActivity;->onBackPressed()V

    .line 55
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x8

    .line 28
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/TermsOfUseActivity;->setContentView(I)V

    .line 30
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 32
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/TermsOfUseActivity;->initToolbar()V

    .line 33
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/TermsOfUseActivity;->showToolbarTitle()V

    .line 35
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/TermsOfUseActivity;->mButtonBar:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/TermsOfUseActivity;->isButtonBarHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 38
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/TermsOfUseActivity;->isButtonBarHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/TermsOfUseActivity;->mStatusBarSpace:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :goto_1
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/TermsOfUseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1
.end method
