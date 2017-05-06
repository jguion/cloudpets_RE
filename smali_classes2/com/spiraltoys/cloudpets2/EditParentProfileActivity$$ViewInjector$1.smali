.class Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "EditParentProfileActivity$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector;

.field final synthetic val$target:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector;Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector;

    .prologue
    .line 15
    .local p0, "this":Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector$1;, "Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector$1;"
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector$1;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector$1;->val$target:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/View;

    .prologue
    .line 19
    .local p0, "this":Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector$1;, "Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector$1;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$ViewInjector$1;->val$target:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->onSaveProfileClicked()V

    .line 20
    return-void
.end method
