.class Lcom/spiraltoys/cloudpets2/WelcomeActivity$1;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/fragments/BirthdayPickerFragment$OnBirthdayPickerInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/WelcomeActivity;->onCreateAccountClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/WelcomeActivity;

.field final synthetic val$that:Lcom/spiraltoys/cloudpets2/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/WelcomeActivity;Lcom/spiraltoys/cloudpets2/WelcomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/WelcomeActivity;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/WelcomeActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/WelcomeActivity;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/WelcomeActivity$1;->val$that:Lcom/spiraltoys/cloudpets2/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSelect(Ljava/util/Calendar;)V
    .locals 7
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    const/16 v5, 0xd

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 49
    invoke-virtual {p1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 53
    .local v0, "currDate":Ljava/util/Calendar;
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-lez v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/WelcomeActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/WelcomeActivity;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/WelcomeActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/WelcomeActivity;

    const v3, 0x7f0800bf

    new-array v4, v4, [Ljava/lang/Object;

    .line 56
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/spiraltoys/cloudpets2/WelcomeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-static {v1, v2}, Lcom/spiraltoys/cloudpets2/util/Utils;->showHintDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/WelcomeActivity$1;->val$that:Lcom/spiraltoys/cloudpets2/WelcomeActivity;

    invoke-static {v1, v6}, Lcom/spiraltoys/cloudpets2/TermsOfUseActivity;->start(Landroid/app/Activity;Z)V

    goto :goto_0
.end method
