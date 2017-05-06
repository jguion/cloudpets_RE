.class Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$1;
.super Ljava/lang/Object;
.source "SelectBluetoothToyCompleteConnectionFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 190
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mProgress5:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyCompleteConnectionFragment;->mConnectionText:Landroid/widget/TextView;

    const v1, 0x7f0800f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 186
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 194
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 180
    return-void
.end method
