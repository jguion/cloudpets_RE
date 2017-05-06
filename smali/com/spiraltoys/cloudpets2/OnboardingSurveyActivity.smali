.class public Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;
.super Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;
.source "OnboardingSurveyActivity.java"


# static fields
.field private static final REQUEST_CODE_ADD_CHILD:I = 0x7b


# instance fields
.field private mSetupCompleteDialog:Landroid/app/Dialog;

.field mSetupCompleteDialogShown:Z
    .annotation build Licepick/State;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;-><init>()V

    return-void
.end method

.method private showSetupCompleteDialog()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 87
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;->mSetupCompleteDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;->mSetupCompleteDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 91
    :cond_0
    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;->mSetupCompleteDialogShown:Z

    .line 92
    invoke-static {p0, v1}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->setInitialToySetupComplete(Landroid/content/Context;Z)V

    .line 94
    new-instance v0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0801ac

    .line 95
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f080120

    .line 96
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f08004c

    new-instance v2, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$2;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$2;-><init>(Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;)V

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const v1, 0x7f08006e

    new-instance v2, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$1;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;)V

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 109
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setCancelable(Z)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->show()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;->mSetupCompleteDialog:Landroid/app/Dialog;

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 81
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;->showSetupCompleteDialog()V

    .line 84
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f040028

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;->setContentView(I)V

    .line 30
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 32
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;->initToolbar()V

    .line 33
    return-void
.end method

.method onDontHaveCloudPetClicked()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000ca
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/OnboardingSurveyNoPetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method onHaveCloudPetClicked()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000c9
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;-><init>()V

    const/16 v1, 0x7b

    invoke-static {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/OnboardingCreateChildProfileActivity;->startWithProfileForResult(Landroid/app/Activity;Lcom/spiraltoys/cloudpets2/model/Profile;I)V

    .line 71
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 38
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 43
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 40
    :pswitch_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;->onLogOutSelected()V

    .line 41
    const/4 v0, 0x1

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;->onResume()V

    .line 66
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;->onStart()V

    .line 58
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;->mSetupCompleteDialogShown:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;->showSetupCompleteDialog()V

    .line 61
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/CloudActionBarActivity;->onStop()V

    .line 50
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;->mSetupCompleteDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;->mSetupCompleteDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;->mSetupCompleteDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 53
    :cond_0
    return-void
.end method
