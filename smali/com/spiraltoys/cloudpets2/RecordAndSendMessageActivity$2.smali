.class Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;
.super Ljava/lang/Object;
.source "RecordAndSendMessageActivity.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->onProfilesSelected(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

.field final synthetic val$file:Lcom/parse/ParseFile;

.field final synthetic val$selectedProfiles:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;Ljava/util/Collection;Lcom/parse/ParseFile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->val$selectedProfiles:Ljava/util/Collection;

    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->val$file:Lcom/parse/ParseFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 6
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/parse/ParseException;->printStackTrace()V

    .line 163
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

    const/4 v4, 0x0

    # setter for: Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->mIsSending:Z
    invoke-static {v3, v4}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->access$002(Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;Z)Z

    .line 164
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->hideProgress()V

    .line 165
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    new-instance v4, Lcom/spiraltoys/cloudpets2/events/VoiceMessageFailedToSend;

    invoke-direct {v4}, Lcom/spiraltoys/cloudpets2/events/VoiceMessageFailedToSend;-><init>()V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 166
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

    invoke-static {v4, p1}, Lcom/spiraltoys/cloudpets2/util/ErrorMessages;->getStringResourceIdForErrorSendingVoiceMessage(Landroid/content/Context;Lcom/parse/ParseException;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;I)V

    .line 210
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/VoiceMessage;>;"
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->val$selectedProfiles:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 174
    .local v2, "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;-><init>()V

    .line 175
    .local v0, "message":Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->val$file:Lcom/parse/ParseFile;

    invoke-virtual {v0, v4}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setFile(Lcom/parse/ParseFile;)V

    .line 176
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->val$file:Lcom/parse/ParseFile;

    invoke-virtual {v4}, Lcom/parse/ParseFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setLocalFilename(Ljava/lang/String;)V

    .line 177
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->mAdultProfile:Lcom/spiraltoys/cloudpets2/model/Profile;
    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->access$100(Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setSender(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 178
    invoke-virtual {v0, v2}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setRecipient(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 179
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->mAdultProfile:Lcom/spiraltoys/cloudpets2/model/Profile;
    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->access$100(Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->getProfileType()Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setType(Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;)V

    .line 182
    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/Profile;->getOwner()Lcom/parse/ParseUser;

    move-result-object v4

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->mAdultProfile:Lcom/spiraltoys/cloudpets2/model/Profile;
    invoke-static {v5}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->access$100(Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/Profile;->getOwner()Lcom/parse/ParseUser;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->setApproved(Z)V

    .line 186
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    .end local v0    # "message":Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    .end local v2    # "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    :cond_2
    new-instance v3, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2$1;

    invoke-direct {v3, p0}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2$1;-><init>(Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;)V

    invoke-static {v1, v3}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->saveVoiceMessages(Ljava/util/List;Lcom/parse/SaveCallback;)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 158
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;->done(Lcom/parse/ParseException;)V

    return-void
.end method
