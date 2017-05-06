.class Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder$1;
.super Ljava/lang/Object;
.source "FriendedProfileAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->setParseObject(Lcom/spiraltoys/cloudpets2/model/Profile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder$1;->this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder$1;->this$1:Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;

    # invokes: Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->toggleSelection()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->access$300(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;)V

    .line 140
    return-void
.end method
