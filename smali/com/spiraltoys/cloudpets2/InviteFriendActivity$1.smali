.class Lcom/spiraltoys/cloudpets2/InviteFriendActivity$1;
.super Ljava/lang/Object;
.source "InviteFriendActivity.java"

# interfaces
.implements Lcom/parse/GetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/InviteFriendActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/InviteFriendActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/InviteFriendActivity;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/InviteFriendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 0

    .prologue
    .line 59
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/InviteFriendActivity$1;->done(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/ParseException;)V
    .locals 1
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 62
    if-nez p2, :cond_0

    .line 63
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/InviteFriendActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/InviteFriendActivity;

    # setter for: Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->mCurrentProfile:Lcom/spiraltoys/cloudpets2/model/Profile;
    invoke-static {v0, p1}, Lcom/spiraltoys/cloudpets2/InviteFriendActivity;->access$002(Lcom/spiraltoys/cloudpets2/InviteFriendActivity;Lcom/spiraltoys/cloudpets2/model/Profile;)Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 65
    :cond_0
    return-void
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 59
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/Profile;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/InviteFriendActivity$1;->done(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/ParseException;)V

    return-void
.end method
