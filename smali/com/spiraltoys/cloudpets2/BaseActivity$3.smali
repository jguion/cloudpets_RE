.class Lcom/spiraltoys/cloudpets2/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/BaseActivity;->hideProgressDelayed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/BaseActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/BaseActivity;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/BaseActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/BaseActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/BaseActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->hideProgress()V

    .line 342
    return-void
.end method
