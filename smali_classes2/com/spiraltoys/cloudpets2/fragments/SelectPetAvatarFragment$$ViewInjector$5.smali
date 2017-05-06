.class Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector$5;
.super Ljava/lang/Object;
.source "SelectPetAvatarFragment$$ViewInjector.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector;

.field final synthetic val$target:Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector;

    .prologue
    .line 73
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector$5;, "Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector$5;"
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector$5;->val$target:Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "p0"    # Landroid/widget/CompoundButton;
    .param p2, "p1"    # Z

    .prologue
    .line 78
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector$5;, "Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector$5;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment$$ViewInjector$5;->val$target:Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;

    invoke-virtual {v0, p2}, Lcom/spiraltoys/cloudpets2/fragments/SelectPetAvatarFragment;->onBunnyChecked(Z)V

    .line 79
    return-void
.end method
