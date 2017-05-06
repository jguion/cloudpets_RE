.class Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3$1;
.super Ljava/lang/Object;
.source "FloatingProfileSwitcherFragment.java"

# interfaces
.implements Lcom/parse/CountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;)V
    .locals 0
    .param p1, "this$2"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3$1;->this$2:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(ILcom/parse/ParseException;)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3$1;->this$2:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;->this$1:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3$1;->this$2:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;->this$1:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    if-nez p1, :cond_2

    .line 501
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3$1;->this$2:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;->val$count:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3$1;->this$2:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;->val$count:Landroid/widget/TextView;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3$1;->this$2:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;->val$count:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method
