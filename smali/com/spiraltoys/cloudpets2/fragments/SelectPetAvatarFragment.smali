.class public Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;
.super Landroid/app/Fragment;
.source "SelectPetAvatarFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$OnPetAvatarChangeListener;
    }
.end annotation


# static fields
.field private static final ARG_PET_NICKNAME:Ljava/lang/String; = "pet_nickname"

.field private static final ARG_SELECTED_CHARACTER:Ljava/lang/String; = "selected_character"


# instance fields
.field mBearButton:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100130
    .end annotation
.end field

.field mBunnyButton:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100133
    .end annotation
.end field

.field mCatButton:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100131
    .end annotation
.end field

.field mCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;
    .annotation build Licepick/State;
    .end annotation
.end field

.field mDogButton:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100132
    .end annotation
.end field

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$OnPetAvatarChangeListener;

.field mNickNameText:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100134
    .end annotation
.end field

.field mPetNickname:Ljava/lang/String;
    .annotation build Licepick/State;
    .end annotation
.end field

.field mUnicornButton:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10012f
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;)Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$OnPetAvatarChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$OnPetAvatarChangeListener;

    return-object v0
.end method

.method private hasNickname()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mPetNickname:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mPetNickname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;
    .locals 4
    .param p0, "selectedCharacter"    # Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;
    .param p1, "petNickname"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;-><init>()V

    .line 61
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "selected_character"

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v2, "pet_nickname"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v1
.end method

.method private setCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)V
    .locals 1
    .param p1, "character"    # Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    if-ne p1, v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .line 189
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$OnPetAvatarChangeListener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$OnPetAvatarChangeListener;

    invoke-interface {v0, p1}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$OnPetAvatarChangeListener;->onPetCharacterChanged(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)V

    .line 191
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$OnPetAvatarChangeListener;

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$OnPetAvatarChangeListener;->onPetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 134
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$OnPetAvatarChangeListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$OnPetAvatarChangeListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    return-void

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnSelectPetAvatarListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method onBearChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z
    .annotation build Lbutterknife/OnCheckedChanged;
        value = {
            0x7f100130
        }
    .end annotation

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    sget-object v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->BENTLEY_THE_BEAR:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->setCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)V

    .line 151
    :cond_0
    return-void
.end method

.method onBunnyChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z
    .annotation build Lbutterknife/OnCheckedChanged;
        value = {
            0x7f100133
        }
    .end annotation

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    sget-object v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->BUBBLES_THE_BUNNY:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->setCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)V

    .line 173
    :cond_0
    return-void
.end method

.method onCatChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z
    .annotation build Lbutterknife/OnCheckedChanged;
        value = {
            0x7f100131
        }
    .end annotation

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    sget-object v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->CHARLEY_THE_CAT:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->setCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)V

    .line 159
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {p0, p1}, Licepick/Icepick;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selected_character"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->getCharacter(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .line 74
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pet_nickname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mPetNickname:Ljava/lang/String;

    .line 76
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 80
    const v1, 0x7f04005d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 83
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mNickNameText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mPetNickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mNickNameText:Landroid/widget/EditText;

    new-instance v2, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$1;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    sget-object v1, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$2;->$SwitchMap$com$spiraltoys$cloudpets2$model$PlushToy$Character:[I

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 121
    :goto_0
    return-object v0

    .line 105
    :pswitch_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mBearButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mCatButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mDogButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 114
    :pswitch_3
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mBunnyButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 117
    :pswitch_4
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mUnicornButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$OnPetAvatarChangeListener;

    .line 144
    return-void
.end method

.method onDogChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z
    .annotation build Lbutterknife/OnCheckedChanged;
        value = {
            0x7f100132
        }
    .end annotation

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    sget-object v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->DIESEL_THE_DOG:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->setCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)V

    .line 166
    :cond_0
    return-void
.end method

.method onPetNicknameChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "newNickname"    # Ljava/lang/CharSequence;
    .annotation build Lbutterknife/OnTextChanged;
        value = {
            0x7f100134
        }
    .end annotation

    .prologue
    .line 201
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mPetNickname:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$OnPetAvatarChangeListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$OnPetAvatarChangeListener;

    invoke-interface {v0, p1}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$OnPetAvatarChangeListener;->onPetNicknameChanged(Ljava/lang/CharSequence;)V

    .line 206
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    invoke-static {p0, p1}, Licepick/Icepick;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 128
    return-void
.end method

.method onUnicornChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z
    .annotation build Lbutterknife/OnCheckedChanged;
        value = {
            0x7f10012f
        }
    .end annotation

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 178
    sget-object v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->STARBURST_THE_UNICORN:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->setCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)V

    .line 180
    :cond_0
    return-void
.end method
