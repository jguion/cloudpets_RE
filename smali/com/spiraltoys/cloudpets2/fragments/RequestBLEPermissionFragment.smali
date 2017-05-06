.class public Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;
.super Landroid/app/Fragment;
.source "RequestBLEPermissionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment$OnRequestBLEPermissionFragmentInteractionListener;
    }
.end annotation


# static fields
.field private static final ARG_PLUSH_TOY_CHARACTER_TYPE:Ljava/lang/String; = "plush_toy_character_type"


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionBinding;

.field private mCharacterType:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment$OnRequestBLEPermissionFragmentInteractionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;
    .locals 4
    .param p0, "character"    # Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .prologue
    .line 31
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;-><init>()V

    .line 32
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "plush_toy_character_type"

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 62
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment$OnRequestBLEPermissionFragmentInteractionListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment$OnRequestBLEPermissionFragmentInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnRequestBLEPermissionFragmentInteractionListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "plush_toy_character_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;->getCharacter(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;->mCharacterType:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .line 45
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
    .line 50
    const v0, 0x7f040058

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionBinding;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionBinding;

    .line 51
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 53
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionBinding;->connectionIndicator:Lcom/spiraltoys/cloudpets2/views/CircleImageView;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;->mCharacterType:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getAvatarResourceForCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/views/CircleImageView;->setImageResource(I)V

    .line 55
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method onRequestPermissionClicked()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000a6
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment$OnRequestBLEPermissionFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment$OnRequestBLEPermissionFragmentInteractionListener;

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/fragments/RequestBLEPermissionFragment$OnRequestBLEPermissionFragmentInteractionListener;->onRequestBlePermissionClicked()V

    .line 73
    :cond_0
    return-void
.end method
