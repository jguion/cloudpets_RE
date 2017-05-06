.class Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$1;
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
    .line 103
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;

    new-instance v1, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/model/Profile;-><init>()V

    const/16 v2, 0x7b

    invoke-static {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/OnboardingCreateChildProfileActivity;->startWithProfileForResult(Landroid/app/Activity;Lcom/spiraltoys/cloudpets2/model/Profile;I)V

    .line 107
    return-void
.end method
