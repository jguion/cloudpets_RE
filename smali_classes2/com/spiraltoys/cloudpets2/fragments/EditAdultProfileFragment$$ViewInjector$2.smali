.class Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$2;
.super Ljava/lang/Object;
.source "EditAdultProfileFragment$$ViewInjector.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector;

.field final synthetic val$target:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector;

    .prologue
    .line 24
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$2;, "Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$2;"
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$2;->val$target:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "p0"    # Landroid/text/Editable;

    .prologue
    .line 45
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$2;, "Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$2;"
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "p0"    # Ljava/lang/CharSequence;
    .param p2, "p1"    # I
    .param p3, "p2"    # I
    .param p4, "p3"    # I

    .prologue
    .line 40
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$2;, "Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$2;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "p0"    # Ljava/lang/CharSequence;
    .param p2, "p1"    # I
    .param p3, "p2"    # I
    .param p4, "p3"    # I

    .prologue
    .line 31
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$2;, "Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$2;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$2;->val$target:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;

    invoke-virtual {v0, p1}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->onDisplayNameChanged(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method
