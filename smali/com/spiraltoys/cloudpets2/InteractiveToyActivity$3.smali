.class Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$3;
.super Ljava/lang/Object;
.source "InteractiveToyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mVideoPlaceholder:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->mVideoPlaceholder:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 155
    return-void
.end method
