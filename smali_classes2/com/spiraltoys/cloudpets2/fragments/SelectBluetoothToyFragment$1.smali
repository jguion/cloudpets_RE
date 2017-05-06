.class Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$1;
.super Ljava/lang/Object;
.source "SelectBluetoothToyFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$1;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;->access$002(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 285
    return-void
.end method
