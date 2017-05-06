.class Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$4;
.super Ljava/lang/Object;
.source "FriendPermissionsAdapter.java"

# interfaces
.implements Lcom/parse/CountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->onEvent(Lcom/spiraltoys/cloudpets2/events/ProfileSavedToLocalDatastoreEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$4;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(ILcom/parse/ParseException;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$4;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    invoke-static {v0, p1}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->access$302(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;I)I

    .line 346
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$4;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;->notifyDataSetChanged()V

    .line 347
    return-void
.end method
