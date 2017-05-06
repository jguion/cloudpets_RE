.class Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$1;
.super Ljava/lang/Object;
.source "EditAdultProfileFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 137
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 126
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$OnAdultProfileChangedListener;->onAdultProfileChanged()V

    .line 133
    :cond_0
    return-void
.end method
