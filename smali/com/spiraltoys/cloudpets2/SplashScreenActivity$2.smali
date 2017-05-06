.class Lcom/spiraltoys/cloudpets2/SplashScreenActivity$2;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Lcom/parse/CountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->performAutoLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/SplashScreenActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/SplashScreenActivity;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/SplashScreenActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(ILcom/parse/ParseException;)V
    .locals 4
    .param p1, "count"    # I
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/SplashScreenActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->hideProgress()V

    .line 107
    if-eqz p2, :cond_0

    .line 108
    const-string v0, "profiles"

    invoke-static {p2, v0}, Lcom/spiraltoys/cloudpets2/util/Analytics;->logLocalDatastoreException(Lcom/parse/ParseException;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/SplashScreenActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/SplashScreenActivity;

    # invokes: Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->startAdultDashboard()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->access$000(Lcom/spiraltoys/cloudpets2/SplashScreenActivity;)V

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_0
    if-lez p1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/SplashScreenActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/SplashScreenActivity;

    # invokes: Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->startAdultDashboard()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->access$000(Lcom/spiraltoys/cloudpets2/SplashScreenActivity;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/SplashScreenActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/SplashScreenActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/SplashScreenActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/SplashScreenActivity;

    const-class v3, Lcom/spiraltoys/cloudpets2/OnboardingSurveyActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->startActivityAsNewTask(Landroid/content/Intent;)V

    goto :goto_0
.end method
