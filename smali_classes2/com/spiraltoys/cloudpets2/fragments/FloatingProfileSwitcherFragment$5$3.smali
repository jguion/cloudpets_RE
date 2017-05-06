.class Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;
.super Ljava/lang/Object;
.source "FloatingProfileSwitcherFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$count:Landroid/widget/TextView;

.field final synthetic val$profile:Lcom/spiraltoys/cloudpets2/model/Profile;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;Lcom/spiraltoys/cloudpets2/model/Profile;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;->this$1:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;->val$profile:Lcom/spiraltoys/cloudpets2/model/Profile;

    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;->val$count:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 493
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;->val$profile:Lcom/spiraltoys/cloudpets2/model/Profile;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;->this$1:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1500(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Z

    move-result v2

    new-instance v3, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3$1;

    invoke-direct {v3, p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;)V

    invoke-static {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->countLocalNewMessages(Lcom/spiraltoys/cloudpets2/model/Profile;ZZLcom/parse/CountCallback;)V

    .line 509
    return-void
.end method
