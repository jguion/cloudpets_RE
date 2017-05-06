.class Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$1;
.super Ljava/lang/Object;
.source "EditParentProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->backRequested()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    # invokes: Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->goBack()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->access$000(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;)V

    .line 127
    return-void
.end method
