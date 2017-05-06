.class Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$4;
.super Ljava/lang/Object;
.source "AdultDashboardActivity.java"

# interfaces
.implements Lcom/parse/CountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->updateNewMessageCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(ILcom/parse/ParseException;)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 312
    if-nez p2, :cond_0

    .line 313
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;->access$000(Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;)Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->messageCount:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/spiraltoys/cloudpets2/util/Utils;->animateBadgeWithCount(Landroid/widget/TextView;I)V

    .line 315
    :cond_0
    return-void
.end method
