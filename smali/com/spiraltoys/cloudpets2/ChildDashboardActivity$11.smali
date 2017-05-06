.class Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$11;
.super Ljava/lang/Object;
.source "ChildDashboardActivity.java"

# interfaces
.implements Lcom/parse/CountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->updateNewMessageCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    .prologue
    .line 868
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$11;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(ILcom/parse/ParseException;)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 871
    if-nez p2, :cond_0

    .line 872
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity$11;->this$0:Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;->access$000(Lcom/spiraltoys/cloudpets2/ChildDashboardActivity;)Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->messageCount:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/spiraltoys/cloudpets2/util/Utils;->animateBadgeWithCount(Landroid/widget/TextView;I)V

    .line 874
    :cond_0
    return-void
.end method
