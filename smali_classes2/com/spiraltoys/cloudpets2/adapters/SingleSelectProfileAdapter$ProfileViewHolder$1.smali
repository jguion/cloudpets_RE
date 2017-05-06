.class Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter$ProfileViewHolder$1;
.super Ljava/lang/Object;
.source "SingleSelectProfileAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter$ProfileViewHolder;->setParseObject(Lcom/spiraltoys/cloudpets2/model/Profile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter$ProfileViewHolder;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter$ProfileViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter$ProfileViewHolder;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter$ProfileViewHolder$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter$ProfileViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedEvent;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter$ProfileViewHolder$1;->this$0:Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter$ProfileViewHolder;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/adapters/SingleSelectProfileAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedEvent;-><init>(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 97
    return-void
.end method
