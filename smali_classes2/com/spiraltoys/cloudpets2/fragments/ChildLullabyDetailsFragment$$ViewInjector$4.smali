.class Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$ViewInjector$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ChildLullabyDetailsFragment$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$ViewInjector;

.field final synthetic val$target:Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$ViewInjector;

    .prologue
    .line 40
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$ViewInjector$4;, "Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$ViewInjector$4;"
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$ViewInjector$4;->this$0:Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$ViewInjector;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$ViewInjector$4;->val$target:Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/View;

    .prologue
    .line 44
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$ViewInjector$4;, "Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$ViewInjector$4;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$ViewInjector$4;->val$target:Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->onIncreaseVolumeClicked()V

    .line 45
    return-void
.end method
