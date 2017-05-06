.class Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$4;
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
    .line 158
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/InteractiveToyActivity;->onEnterAnimationComplete()V

    .line 162
    return-void
.end method
