.class public Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;
.super Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;
.source "ProfilesForSendingMessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProfileViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder",
        "<",
        "Lcom/spiraltoys/cloudpets2/model/Profile;",
        ">;"
    }
.end annotation


# instance fields
.field mCheckBox:Landroid/widget/ImageView;

.field mDisplayName:Landroid/widget/TextView;

.field mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

.field mProfilePhoto:Landroid/widget/ImageView;

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    .line 251
    invoke-direct {p0, p2}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;-><init>(Landroid/view/View;)V

    .line 252
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->mView:Landroid/view/View;

    .line 253
    const v0, 0x7f1000a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->mProfilePhoto:Landroid/widget/ImageView;

    .line 254
    const v0, 0x7f100141

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->mCheckBox:Landroid/widget/ImageView;

    .line 255
    const v0, 0x7f1000a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->mDisplayName:Landroid/widget/TextView;

    .line 256
    return-void
.end method

.method static synthetic access$500(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->toggleSelection()V

    return-void
.end method

.method private toggleSelection()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mSelectedProfiles:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->access$400(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->mCheckBox:Landroid/widget/ImageView;

    const v1, 0x7f020129

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mSelectedProfiles:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->access$400(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->mCheckBox:Landroid/widget/ImageView;

    const v1, 0x7f020128

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public setParseObject(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 11
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    const/4 v10, 0x0

    .line 259
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 261
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 263
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->mCheckBox:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->mSelectedProfiles:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;->access$400(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;)Ljava/util/HashSet;

    move-result-object v5

    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f020128

    :goto_0
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 264
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->mView:Landroid/view/View;

    new-instance v6, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder$1;

    invoke-direct {v6, p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder$1;-><init>(Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "displayName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v2, " "

    .line 277
    .local v2, "placeholderText":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->mDisplayName:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPortrait()Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    move-result-object v4

    .line 280
    .local v4, "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v3

    .line 281
    .local v3, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    if-nez v4, :cond_2

    const/4 v5, 0x0

    .line 282
    :goto_2
    invoke-virtual {v6, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/bumptech/glide/load/Transformation;

    new-instance v7, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;

    .line 283
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f006e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v0, v3, v8, v10}, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    aput-object v7, v6, v10

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    .line 284
    invoke-static {v0, v2}, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->getListItemInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    .line 285
    invoke-virtual {v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->mProfilePhoto:Landroid/widget/ImageView;

    .line 286
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 287
    return-void

    .line 263
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "placeholderText":Ljava/lang/String;
    .end local v3    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .end local v4    # "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :cond_0
    const v5, 0x7f020129

    goto :goto_0

    .line 275
    .restart local v1    # "displayName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 282
    .restart local v2    # "placeholderText":Ljava/lang/String;
    .restart local v3    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .restart local v4    # "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :cond_2
    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->getFile()Lcom/parse/ParseFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method public bridge synthetic setParseObject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 241
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$ProfileViewHolder;->setParseObject(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    return-void
.end method
