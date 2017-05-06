.class Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "EditAdultProfileFragment$$ViewInjector.java"


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
    .line 54
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$3;, "Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$3;"
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$3;->val$target:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/View;

    .prologue
    .line 58
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$3;, "Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$3;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment$$ViewInjector$3;->val$target:Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/EditAdultProfileFragment;->onPasswordRestClickedLollipop()V

    .line 59
    return-void
.end method
