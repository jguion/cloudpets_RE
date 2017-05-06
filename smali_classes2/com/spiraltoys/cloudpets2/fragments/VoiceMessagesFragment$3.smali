.class Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$3;
.super Ljava/lang/Object;
.source "VoiceMessagesFragment.java"

# interfaces
.implements Lcom/parse/CountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(ILcom/parse/ParseException;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    move-result-object v0

    sget-object v1, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->ADULT:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    if-ne v0, v1, :cond_2

    .line 107
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;->emptyViewTitle:Landroid/widget/TextView;

    const v1, 0x7f08010c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;->emptyViewTitle:Landroid/widget/TextView;

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    const v2, 0x7f08010e

    invoke-virtual {v0, v2}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f0a0000

    invoke-virtual {v0, v2, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
