.class Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$1;
.super Ljava/lang/Object;
.source "CreateOrEditChildProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method
