.class Lcom/spiraltoys/cloudpets2/WelcomeActivity$$ViewInjector$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "WelcomeActivity$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/WelcomeActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/WelcomeActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/WelcomeActivity$$ViewInjector;

.field final synthetic val$target:Lcom/spiraltoys/cloudpets2/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/WelcomeActivity$$ViewInjector;Lcom/spiraltoys/cloudpets2/WelcomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/WelcomeActivity$$ViewInjector;

    .prologue
    .line 23
    .local p0, "this":Lcom/spiraltoys/cloudpets2/WelcomeActivity$$ViewInjector$2;, "Lcom/spiraltoys/cloudpets2/WelcomeActivity$$ViewInjector$2;"
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/WelcomeActivity$$ViewInjector$2;->this$0:Lcom/spiraltoys/cloudpets2/WelcomeActivity$$ViewInjector;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/WelcomeActivity$$ViewInjector$2;->val$target:Lcom/spiraltoys/cloudpets2/WelcomeActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/View;

    .prologue
    .line 27
    .local p0, "this":Lcom/spiraltoys/cloudpets2/WelcomeActivity$$ViewInjector$2;, "Lcom/spiraltoys/cloudpets2/WelcomeActivity$$ViewInjector$2;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/WelcomeActivity$$ViewInjector$2;->val$target:Lcom/spiraltoys/cloudpets2/WelcomeActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/WelcomeActivity;->onCreateAccountClicked()V

    .line 28
    return-void
.end method
