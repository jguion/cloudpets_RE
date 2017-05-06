.class Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$2;
.super Ljava/lang/Object;
.source "ProfileAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->onBindViewHolder(Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;

.field final synthetic val$holder:Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;

.field final synthetic val$selectedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$2;->val$selectedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$2;->val$holder:Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$2;->val$selectedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$2;->val$selectedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$2;->val$holder:Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mCheckBox:Landroid/widget/ImageView;

    # invokes: Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->toggleSelection(Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/Profile;Landroid/widget/ImageView;)V
    invoke-static {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->access$000(Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;Ljava/lang/String;Lcom/spiraltoys/cloudpets2/model/Profile;Landroid/widget/ImageView;)V

    .line 123
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/ProfileSelectionChangedEvent;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$2;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->mSelectedStates:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;->access$100(Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/events/ProfileSelectionChangedEvent;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 124
    return-void
.end method
