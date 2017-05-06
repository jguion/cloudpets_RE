.class Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$2;
.super Landroid/view/ViewOutlineProvider;
.source "FloatingProfileSwitcherFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->done(Ljava/util/List;Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$2;->this$1:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 442
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$2;->this$1:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1000(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$2;->this$1:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1000(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 443
    return-void
.end method
