.class Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "CreateOrEditChildProfileFragment$$ViewInjector.java"


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
    .line 14
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$1;, "Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$1;"
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$1;->val$target:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/View;

    .prologue
    .line 18
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$1;, "Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$1;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$1;->val$target:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->onSetPhotoClicked()V

    .line 19
    return-void
.end method
