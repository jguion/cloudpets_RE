.class Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$4;
.super Ljava/lang/Object;
.source "CreateOrEditChildProfileFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->hideProfileBearIfOverlappingText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$4;->this$0:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 414
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$4;->this$0:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$4;->this$0:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$4;->this$0:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mProfileBear:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 419
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$4;->this$0:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mProfileBear:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$4;->this$0:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mProfileBear:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$4;->this$0:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->mTitleText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$4;->this$0:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v4, v5}, Lcom/spiraltoys/cloudpets2/util/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v2, v3, v4, v0}, Lcom/spiraltoys/cloudpets2/util/Utils;->isColliding(Landroid/view/View;Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x8

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
