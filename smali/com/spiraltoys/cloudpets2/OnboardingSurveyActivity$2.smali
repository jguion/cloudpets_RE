.class Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$2;
.super Ljava/lang/Object;
.source "OnboardingSurveyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;->showSetupCompleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;

    const-class v3, Lcom/spiraltoys/cloudpets2/AdultDashboardActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;->startActivityAsNewTask(Landroid/content/Intent;)V

    .line 101
    return-void
.end method
