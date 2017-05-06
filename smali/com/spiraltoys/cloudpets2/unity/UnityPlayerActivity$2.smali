.class Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UnityPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->onEventMainThread(Lcom/spiraltoys/cloudpets2/events/UnityLoadedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityUnityPlayerBinding;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->access$000(Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;)Lcom/spiraltoys/cloudpets2/databinding/ActivityUnityPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityUnityPlayerBinding;->splashOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    return-void
.end method
