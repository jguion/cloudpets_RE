.class Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;
.super Ljava/lang/Object;
.source "VoiceMessagesFragment.java"

# interfaces
.implements Lcom/parse/GetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/GetCallback",
        "<",
        "Lcom/spiraltoys/cloudpets2/model/Profile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;->done(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/ParseException;)V
    .locals 4
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    new-instance v2, Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    move-result-object v0

    sget-object v3, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->CHILD:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {p1, v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getVoiceMessagesLocalDatastoreQuery(Lcom/spiraltoys/cloudpets2/model/Profile;Z)Lcom/parse/ParseQuery;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;-><init>(Lcom/parse/ParseQuery;)V

    invoke-static {v1, v2}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->access$102(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;)Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;

    .line 88
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;)V

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 95
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 87
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/Profile;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$2;->done(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/ParseException;)V

    return-void
.end method
