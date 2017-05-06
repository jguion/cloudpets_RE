.class public Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter$VoiceMessageViewHolder;
.super Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;
.source "VoiceMessageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VoiceMessageViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder",
        "<",
        "Lcom/spiraltoys/cloudpets2/model/VoiceMessage;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;

.field mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;)V
    .locals 1
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;
    .param p2, "binding"    # Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter$VoiceMessageViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;

    .line 67
    invoke-virtual {p2}, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;-><init>(Landroid/view/View;)V

    .line 68
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter$VoiceMessageViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;

    .line 69
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter$VoiceMessageViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/VoiceMessageClickedEvent;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter$VoiceMessageViewHolder;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/events/VoiceMessageClickedEvent;-><init>(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public setParseObject(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V
    .locals 10
    .param p1, "voiceMessage"    # Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 74
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter$VoiceMessageViewHolder;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .line 75
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter$VoiceMessageViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;

    invoke-virtual {v6, p1}, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->setVoiceMessage(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    .line 76
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter$VoiceMessageViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;

    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter$VoiceMessageViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;->mIsParentalControlEnabled:Z
    invoke-static {v7}, Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;->access$000(Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->setIsParentalControlEnabled(Z)V

    .line 77
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter$VoiceMessageViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;

    invoke-virtual {v6}, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->executePendingBindings()V

    .line 79
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter$VoiceMessageViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;

    invoke-virtual {v6}, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->getRoot()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter$VoiceMessageViewHolder;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v6}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getSender()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v1, ""

    .line 83
    .local v1, "displayName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v2, " "

    .line 85
    .local v2, "placeholderText":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter$VoiceMessageViewHolder;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v6}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getSender()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v6

    if-nez v6, :cond_2

    move-object v4, v5

    .line 86
    .local v4, "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :goto_2
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v3

    .line 87
    .local v3, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    if-nez v4, :cond_3

    .line 88
    :goto_3
    invoke-virtual {v6, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/bumptech/glide/load/Transformation;

    new-instance v7, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;

    const v8, 0x7f0f006e

    .line 89
    invoke-static {v0, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-direct {v7, v0, v3, v8, v9}, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    aput-object v7, v6, v9

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    .line 90
    invoke-static {v0, v2}, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->getListItemInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    .line 91
    invoke-virtual {v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter$VoiceMessageViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;

    iget-object v6, v6, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->profilePhoto:Landroid/widget/ImageView;

    .line 92
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 93
    return-void

    .line 82
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "placeholderText":Ljava/lang/String;
    .end local v3    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .end local v4    # "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :cond_0
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter$VoiceMessageViewHolder;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v6}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getSender()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 83
    .restart local v1    # "displayName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 85
    .restart local v2    # "placeholderText":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter$VoiceMessageViewHolder;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v6}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getSender()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPortrait()Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    move-result-object v4

    goto :goto_2

    .line 88
    .restart local v3    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .restart local v4    # "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :cond_3
    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->getFile()Lcom/parse/ParseFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public bridge synthetic setParseObject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/adapters/VoiceMessageAdapter$VoiceMessageViewHolder;->setParseObject(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    return-void
.end method
