.class Lcom/spiraltoys/cloudpets2/SplashScreenActivity$1;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Lcom/parse/GetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->performAutoLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/GetCallback",
        "<",
        "Lcom/spiraltoys/cloudpets2/model/Profile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/SplashScreenActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/SplashScreenActivity;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/SplashScreenActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity$1;->done(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/SplashScreenActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->hideProgress()V

    .line 85
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/SplashScreenActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/SplashScreenActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    if-nez p2, :cond_2

    .line 90
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/SplashScreenActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/SplashScreenActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->onProfileSelected(Lcom/spiraltoys/cloudpets2/model/Profile;Z)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/SplashScreenActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/SplashScreenActivity;

    # invokes: Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->startAdultDashboard()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity;->access$000(Lcom/spiraltoys/cloudpets2/SplashScreenActivity;)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/Profile;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/SplashScreenActivity$1;->done(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/ParseException;)V

    return-void
.end method
