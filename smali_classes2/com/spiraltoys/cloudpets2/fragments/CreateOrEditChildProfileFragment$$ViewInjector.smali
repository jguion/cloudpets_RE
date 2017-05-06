.class public Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "CreateOrEditChildProfileFragment$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/ButterKnife$Injector",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;Ljava/lang/Object;)V
    .locals 7
    .param p1, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p3, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/ButterKnife$Finder;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector<TT;>;"
    .local p2, "target":Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;, "TT;"
    const v6, 0x7f100108

    const v5, 0x7f1000c3

    const v4, 0x7f1000a1

    const v2, 0x7f1000a0

    const/4 v3, 0x0

    .line 11
    const-string v1, "field \'mProfilePhoto\' and method \'onSetPhotoClicked\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, "view":Landroid/view/View;
    const-string v1, "field \'mProfilePhoto\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mProfilePhoto:Landroid/widget/ImageView;

    .line 13
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$1;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const v1, 0x7f10010c

    const-string v2, "field \'mBirthMonthSpinner\' and method \'onMonthSelected\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f10010c

    const-string v2, "field \'mBirthMonthSpinner\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mBirthMonthSpinner:Landroid/widget/Spinner;

    .line 23
    check-cast v0, Landroid/widget/AdapterView;

    .end local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$2;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$2;-><init>(Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 39
    const v1, 0x7f10010d

    const-string v2, "field \'mBirthDayOfMonthSpinner\' and method \'onDayOfMonthSelected\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 40
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f10010d

    const-string v2, "field \'mBirthDayOfMonthSpinner\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mBirthDayOfMonthSpinner:Landroid/widget/Spinner;

    .line 41
    check-cast v0, Landroid/widget/AdapterView;

    .end local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$3;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$3;-><init>(Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 57
    const-string v1, "field \'mDisplayNameTextField\' and method \'onChildNameChanged\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 58
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'mDisplayNameTextField\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mDisplayNameTextField:Landroid/widget/EditText;

    .line 59
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$4;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$4;-><init>(Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    const v1, 0x7f10010a

    const-string v2, "field \'mUsernameTextField\' and method \'onUsernameChanged\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 84
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f10010a

    const-string v2, "field \'mUsernameTextField\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mUsernameTextField:Landroid/widget/EditText;

    .line 85
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$5;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$5;-><init>(Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    const v1, 0x7f100116

    invoke-virtual {p1, p3, v1, v3}, Lbutterknife/ButterKnife$Finder;->findOptionalView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 110
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f100116

    const-string v2, "field \'mConfiguredPetName\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mConfiguredPetName:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f100115

    invoke-virtual {p1, p3, v1, v3}, Lbutterknife/ButterKnife$Finder;->findOptionalView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 112
    .restart local v0    # "view":Landroid/view/View;
    const v1, 0x7f100115

    const-string v2, "field \'mConfiguredPetAvatar\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mConfiguredPetAvatar:Landroid/widget/ImageView;

    .line 113
    invoke-virtual {p1, p3, v6, v3}, Lbutterknife/ButterKnife$Finder;->findOptionalView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 114
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'mProfileBear\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mProfileBear:Landroid/widget/ImageView;

    .line 115
    invoke-virtual {p1, p3, v5, v3}, Lbutterknife/ButterKnife$Finder;->findOptionalView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 116
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'mTitleText\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mTitleText:Landroid/widget/TextView;

    .line 117
    const v1, 0x7f10010b

    const-string v2, "method \'onUsernameHelpButtonClicked\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 118
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$6;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$6;-><init>(Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v1, 0x7f100114

    invoke-virtual {p1, p3, v1, v3}, Lbutterknife/ButterKnife$Finder;->findOptionalView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 127
    .restart local v0    # "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 128
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$7;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$7;-><init>(Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :cond_0
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector<TT;>;"
    check-cast p2, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;, "TT;"
    const/4 v0, 0x0

    .line 140
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mProfilePhoto:Landroid/widget/ImageView;

    .line 141
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mBirthMonthSpinner:Landroid/widget/Spinner;

    .line 142
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mBirthDayOfMonthSpinner:Landroid/widget/Spinner;

    .line 143
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mDisplayNameTextField:Landroid/widget/EditText;

    .line 144
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mUsernameTextField:Landroid/widget/EditText;

    .line 145
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mConfiguredPetName:Landroid/widget/TextView;

    .line 146
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mConfiguredPetAvatar:Landroid/widget/ImageView;

    .line 147
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mProfileBear:Landroid/widget/ImageView;

    .line 148
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mTitleText:Landroid/widget/TextView;

    .line 149
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;->reset(Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;)V

    return-void
.end method
