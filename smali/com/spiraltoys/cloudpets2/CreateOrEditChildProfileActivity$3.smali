.class Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$3;
.super Ljava/lang/Object;
.source "CreateOrEditChildProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->createAndSaveChildProfile()V
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
    .line 676
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$3;->this$0:Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 679
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 680
    return-void
.end method
