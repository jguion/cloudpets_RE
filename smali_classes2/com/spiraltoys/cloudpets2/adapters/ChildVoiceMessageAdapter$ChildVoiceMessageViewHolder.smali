.class public Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter$ChildVoiceMessageViewHolder;
.super Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;
.source "ChildVoiceMessageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChildVoiceMessageViewHolder"
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
.field mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;

.field mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;)V
    .locals 1
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;
    .param p2, "binding"    # Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter$ChildVoiceMessageViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter;

    .line 62
    invoke-virtual {p2}, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;-><init>(Landroid/view/View;)V

    .line 63
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter$ChildVoiceMessageViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;

    .line 64
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter$ChildVoiceMessageViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/VoiceMessageClickedEvent;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter$ChildVoiceMessageViewHolder;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/events/VoiceMessageClickedEvent;-><init>(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public setParseObject(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V
    .locals 11
    .param p1, "voiceMessage"    # Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .prologue
    const/4 v10, 0x0

    .line 69
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter$ChildVoiceMessageViewHolder;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .line 70
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter$ChildVoiceMessageViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;

    invoke-virtual {v5, p1}, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->setVoiceMessage(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    .line 71
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter$ChildVoiceMessageViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->executePendingBindings()V

    .line 73
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter$ChildVoiceMessageViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->getRoot()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    .local v0, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter$ChildVoiceMessageViewHolder;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getSender()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "displayName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v2, " "

    .line 79
    .local v2, "placeholderText":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getSender()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPortrait()Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    move-result-object v4

    .line 80
    .local v4, "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v3

    .line 81
    .local v3, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    if-nez v4, :cond_1

    const/4 v5, 0x0

    .line 82
    :goto_1
    invoke-virtual {v6, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/bumptech/glide/load/Transformation;

    new-instance v7, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;

    .line 83
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f006e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v0, v3, v8, v10}, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    aput-object v7, v6, v10

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    .line 84
    invoke-static {v0, v2}, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->getListItemInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    .line 85
    invoke-virtual {v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter$ChildVoiceMessageViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;

    iget-object v6, v6, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->profilePhoto:Landroid/widget/ImageView;

    .line 86
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 87
    return-void

    .line 77
    .end local v2    # "placeholderText":Ljava/lang/String;
    .end local v3    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .end local v4    # "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :cond_0
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 82
    .restart local v2    # "placeholderText":Ljava/lang/String;
    .restart local v3    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .restart local v4    # "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :cond_1
    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->getFile()Lcom/parse/ParseFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public bridge synthetic setParseObject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/adapters/ChildVoiceMessageAdapter$ChildVoiceMessageViewHolder;->setParseObject(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    return-void
.end method
