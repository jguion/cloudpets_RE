.class Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2$1;
.super Ljava/lang/Object;
.source "EditParentProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2$1;->this$1:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2$1;->this$1:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2$1;->this$1:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->access$100(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->access$200(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 206
    return-void
.end method
