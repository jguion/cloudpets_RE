.class Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$$ViewInjector$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ChildDashboardActivity$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$$ViewInjector;

.field final synthetic val$target:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$$ViewInjector;Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$$ViewInjector;

    .prologue
    .line 41
    .local p0, "this":Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$$ViewInjector$4;, "Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$$ViewInjector$4;"
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$$ViewInjector$4;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$$ViewInjector;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$$ViewInjector$4;->val$target:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/View;

    .prologue
    .line 45
    .local p0, "this":Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$$ViewInjector$4;, "Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$$ViewInjector$4;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$$ViewInjector$4;->val$target:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->onShowStoriesClicked()V

    .line 46
    return-void
.end method
