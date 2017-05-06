.class Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$1;
.super Ljava/lang/Object;
.source "FloatingProfileSwitcherFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->onMenuUnderlayClicked()V

    .line 197
    return-void
.end method
