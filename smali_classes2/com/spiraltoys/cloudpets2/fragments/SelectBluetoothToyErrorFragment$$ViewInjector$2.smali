.class Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$$ViewInjector$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SelectBluetoothToyErrorFragment$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$$ViewInjector;

.field final synthetic val$target:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$$ViewInjector;

    .prologue
    .line 22
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$$ViewInjector$2;, "Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$$ViewInjector$2;"
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$$ViewInjector$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$$ViewInjector;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$$ViewInjector$2;->val$target:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/View;

    .prologue
    .line 26
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$$ViewInjector$2;, "Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$$ViewInjector$2;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment$$ViewInjector$2;->val$target:Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyErrorFragment;->onCancelClicked()V

    .line 27
    return-void
.end method
