.class Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$1;
.super Ljava/lang/Object;
.source "FloatingProfileSwitcherFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$profile:Lcom/spiraltoys/cloudpets2/model/Profile;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$1;->this$1:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$1;->val$profile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$1;->this$1:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$1;->val$profile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$600(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 408
    return-void
.end method
