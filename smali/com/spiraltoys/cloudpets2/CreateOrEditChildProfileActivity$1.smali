.class Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$1;
.super Ljava/lang/Object;
.source "CreateOrEditChildProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->backRequested()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    # invokes: Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->goBack()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->access$000(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;)V

    .line 299
    return-void
.end method
