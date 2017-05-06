.class public Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "SelectPetAvatarFragment$$ViewInjector.java"

# interfaces
.implements Lbutterknife/ButterKnife$Injector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;",
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
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;Ljava/lang/Object;)V
    .locals 8
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
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector<TT;>;"
    .local p2, "target":Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;, "TT;"
    const v7, 0x7f100133

    const v6, 0x7f100132

    const v5, 0x7f100131

    const v4, 0x7f100130

    const v3, 0x7f10012f

    .line 11
    const v1, 0x7f100134

    const-string v2, "field \'mNickNameText\' and method \'onPetNicknameChanged\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f100134

    const-string v2, "field \'mNickNameText\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mNickNameText:Landroid/widget/EditText;

    .line 13
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector$1;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 37
    const-string v1, "field \'mBearButton\' and method \'onBearChecked\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 38
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'mBearButton\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mBearButton:Landroid/widget/RadioButton;

    .line 39
    check-cast v0, Landroid/widget/CompoundButton;

    .end local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector$2;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector$2;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 48
    const-string v1, "field \'mCatButton\' and method \'onCatChecked\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 49
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'mCatButton\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mCatButton:Landroid/widget/RadioButton;

    .line 50
    check-cast v0, Landroid/widget/CompoundButton;

    .end local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector$3;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector$3;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 59
    const-string v1, "field \'mDogButton\' and method \'onDogChecked\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 60
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'mDogButton\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mDogButton:Landroid/widget/RadioButton;

    .line 61
    check-cast v0, Landroid/widget/CompoundButton;

    .end local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector$4;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector$4;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    const-string v1, "field \'mBunnyButton\' and method \'onBunnyChecked\'"

    invoke-virtual {p1, p3, v7, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 71
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'mBunnyButton\'"

    invoke-virtual {p1, v0, v7, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mBunnyButton:Landroid/widget/RadioButton;

    .line 72
    check-cast v0, Landroid/widget/CompoundButton;

    .end local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector$5;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector$5;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    const-string v1, "field \'mUnicornButton\' and method \'onUnicornChecked\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 82
    .restart local v0    # "view":Landroid/view/View;
    const-string v1, "field \'mUnicornButton\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p2, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mUnicornButton:Landroid/widget/RadioButton;

    .line 83
    check-cast v0, Landroid/widget/CompoundButton;

    .end local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector$6;

    invoke-direct {v1, p0, p2}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector$6;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    return-void
.end method

.method public bridge synthetic inject(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector<TT;>;"
    check-cast p2, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public reset(Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;, "TT;"
    const/4 v0, 0x0

    .line 95
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mNickNameText:Landroid/widget/EditText;

    .line 96
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mBearButton:Landroid/widget/RadioButton;

    .line 97
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mCatButton:Landroid/widget/RadioButton;

    .line 98
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mDogButton:Landroid/widget/RadioButton;

    .line 99
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mBunnyButton:Landroid/widget/RadioButton;

    .line 100
    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->mUnicornButton:Landroid/widget/RadioButton;

    .line 101
    return-void
.end method

.method public bridge synthetic reset(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector;, "Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector;->reset(Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;)V

    return-void
.end method
