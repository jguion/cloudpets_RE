.class Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$1;
.super Ljava/lang/Object;
.source "SelectPetAvatarFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 100
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 88
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;)Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$OnPetAvatarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;)Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$OnPetAvatarChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$OnPetAvatarChangeListener;->onPetChanged()V

    .line 95
    :cond_0
    return-void
.end method
