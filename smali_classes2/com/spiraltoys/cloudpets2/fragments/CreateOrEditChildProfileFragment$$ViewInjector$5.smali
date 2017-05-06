.class Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$5;
.super Ljava/lang/Object;
.source "CreateOrEditChildProfileFragment$$ViewInjector.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;

.field final synthetic val$target:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;

    .prologue
    .line 86
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$5;, "Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$5;"
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$5;->val$target:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "p0"    # Landroid/text/Editable;

    .prologue
    .line 107
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$5;, "Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$5;"
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "p0"    # Ljava/lang/CharSequence;
    .param p2, "p1"    # I
    .param p3, "p2"    # I
    .param p4, "p3"    # I

    .prologue
    .line 102
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$5;, "Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$5;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "p0"    # Ljava/lang/CharSequence;
    .param p2, "p1"    # I
    .param p3, "p2"    # I
    .param p4, "p3"    # I

    .prologue
    .line 93
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$5;, "Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$5;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$5;->val$target:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    invoke-virtual {v0, p1}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->onUsernameChanged(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method
