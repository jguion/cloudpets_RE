.class public Lcom/spiraltoys/cloudpets2/OnboardingSurveyNoPetActivity;
.super Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;
.source "OnboardingSurveyNoPetActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method onContinueClicked()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000cb
        }
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->setInitialToySetupComplete(Landroid/content/Context;Z)V

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/OnboardingSurveyNoPetActivity;->startActivityAsNewTask(Landroid/content/Intent;)V

    .line 26
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f040029

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/OnboardingSurveyNoPetActivity;->setContentView(I)V

    .line 17
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 19
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/OnboardingSurveyNoPetActivity;->initToolbar()V

    .line 20
    return-void
.end method
