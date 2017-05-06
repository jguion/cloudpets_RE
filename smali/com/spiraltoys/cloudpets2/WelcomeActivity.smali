.class public Lcom/spiraltoys/cloudpets2/WelcomeActivity;
.super Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;
.source "WelcomeActivity.java"


# static fields
.field private static final MINIMUM_REGISTRATION_AGE:I = 0xd

.field private static final TAG_DIALOG_FRAGMENT:Ljava/lang/String; = "tag_dialog_fragment"


# instance fields
.field private mCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundMusicTrack()Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/WelcomeActivity;->mCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getBackgroundMusicTrackForCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->values()[Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    move-result-object v0

    .line 29
    .local v0, "toys":[Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/WelcomeActivity;->mCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .line 31
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/WelcomeActivity;->mCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getAppThemeResourceForCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/WelcomeActivity;->setTheme(I)V

    .line 32
    const v1, 0x7f040030

    invoke-virtual {p0, v1}, Lcom/spiraltoys/cloudpets2/WelcomeActivity;->setContentView(I)V

    .line 34
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 35
    return-void
.end method

.method onCreateAccountClicked()V
    .locals 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000d8
        }
    .end annotation

    .prologue
    .line 44
    move-object v1, p0

    .line 45
    .local v1, "that":Lcom/spiraltoys/cloudpets2/WelcomeActivity;
    new-instance v0, Lcom/spiraltoys/cloudpets2/fragments/BirthdayPickerFragment;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/fragments/BirthdayPickerFragment;-><init>()V

    .line 46
    .local v0, "newFragment":Lcom/spiraltoys/cloudpets2/fragments/BirthdayPickerFragment;
    new-instance v2, Lcom/spiraltoys/cloudpets2/WelcomeActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/spiraltoys/cloudpets2/WelcomeActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/WelcomeActivity;Lcom/spiraltoys/cloudpets2/WelcomeActivity;)V

    invoke-virtual {v0, v2}, Lcom/spiraltoys/cloudpets2/fragments/BirthdayPickerFragment;->setListener(Lcom/spiraltoys/cloudpets2/fragments/BirthdayPickerFragment$OnBirthdayPickerInteractionListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/WelcomeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "tag_dialog_fragment"

    invoke-virtual {v0, v2, v3}, Lcom/spiraltoys/cloudpets2/fragments/BirthdayPickerFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method onLogInClicked()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000c1
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/LogInActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    return-void
.end method
