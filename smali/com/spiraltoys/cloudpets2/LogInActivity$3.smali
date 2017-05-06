.class Lcom/spiraltoys/cloudpets2/LogInActivity$3;
.super Ljava/lang/Object;
.source "LogInActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/LogInActivity;->hideLoginBearIfOverlappingText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/LogInActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/LogInActivity;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 146
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/LogInActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/LogInActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/LogInActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 151
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/LogInActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;->loginBear:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/LogInActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;->loginBear:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/LogInActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;->resetPasswordButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/LogInActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/LogInActivity;

    const/high16 v5, 0x41c00000    # 24.0f

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
