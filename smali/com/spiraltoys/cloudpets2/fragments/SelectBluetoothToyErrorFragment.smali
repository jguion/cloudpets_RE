.class public Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;
.super Landroid/app/Fragment;
.source "SelectBluetoothToyErrorFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$OnBluetoothToyErrorFragmentInteractionListener;
    }
.end annotation


# static fields
.field public static final ARG_CUSTOM_MESSAGE:Ljava/lang/String; = "arg_custom_message"

.field private static final ARG_PLUSH_TOY_CHARACTER_TYPE:Ljava/lang/String; = "plush_toy_character_type"


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectBluetoothToyErrorBinding;

.field private mCharacterType:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

.field private mCustomMessage:Ljava/lang/String;

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$OnBluetoothToyErrorFragmentInteractionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;
    .locals 4
    .param p0, "customMessage"    # Ljava/lang/String;
    .param p1, "character"    # Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .prologue
    .line 33
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;-><init>()V

    .line 34
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_custom_message"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v2, "plush_toy_character_type"

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 70
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$OnBluetoothToyErrorFragmentInteractionListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$OnBluetoothToyErrorFragmentInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-void

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnBluetoothToyErrorFragmentInteractionListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method onCancelClicked()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100121
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$OnBluetoothToyErrorFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$OnBluetoothToyErrorFragmentInteractionListener;

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$OnBluetoothToyErrorFragmentInteractionListener;->onCancelBluetoothScanClicked()V

    .line 88
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_custom_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;->mCustomMessage:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "plush_toy_character_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->getCharacter(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;->mCharacterType:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .line 49
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 54
    const v0, 0x7f04005c

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectBluetoothToyErrorBinding;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectBluetoothToyErrorBinding;

    .line 55
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectBluetoothToyErrorBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectBluetoothToyErrorBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;->mCustomMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectBluetoothToyErrorBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectBluetoothToyErrorBinding;->errorMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;->mCustomMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectBluetoothToyErrorBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectBluetoothToyErrorBinding;->connectionIndicator:Lcom/spiraltoys/cloudpets2/views/CircleImageView;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;->mCharacterType:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getAvatarResourceForCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->setImageResource(I)V

    .line 63
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectBluetoothToyErrorBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectBluetoothToyErrorBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method onRetryClicked()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f10012d
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$OnBluetoothToyErrorFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$OnBluetoothToyErrorFragmentInteractionListener;

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$OnBluetoothToyErrorFragmentInteractionListener;->onRetryBluetoothScanClicked()V

    .line 81
    :cond_0
    return-void
.end method
