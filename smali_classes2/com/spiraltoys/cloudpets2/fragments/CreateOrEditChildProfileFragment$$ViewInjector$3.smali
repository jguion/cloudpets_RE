.class Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$3;
.super Ljava/lang/Object;
.source "CreateOrEditChildProfileFragment$$ViewInjector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 42
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$3;, "Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$3;"
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$3;->val$target:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "p1"    # Landroid/view/View;
    .param p3, "p2"    # I
    .param p4, "p3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$3;, "Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$3;"
    .local p1, "p0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$3;->val$target:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    invoke-virtual {v0, p3}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->onDayOfMonthSelected(I)V

    .line 50
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$3;, "Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$$ViewInjector$3;"
    .local p1, "p0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
