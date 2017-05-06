.class public Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;
.super Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;
.source "FriendedProfileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;
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
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemSelectableProfileBinding;

.field private mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;Lcom/spiraltoys/cloudpets2/databinding/ListItemSelectableProfileBinding;)V
    .locals 1
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;
    .param p2, "binding"    # Lcom/spiraltoys/cloudpets2/databinding/ListItemSelectableProfileBinding;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;

    .line 121
    invoke-virtual {p2}, Lcom/spiraltoys/cloudpets2/databinding/ListItemSelectableProfileBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;-><init>(Landroid/view/View;)V

    .line 122
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemSelectableProfileBinding;

    .line 123
    return-void
.end method

.method static synthetic access$300(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->toggleSelection()V

    return-void
.end method

.method private toggleSelection()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->mSelectedProfiles:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->access$000(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemSelectableProfileBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemSelectableProfileBinding;->checkboxImage:Landroid/widget/ImageView;

    const v1, 0x7f020129

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    :goto_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/ProfileSelectionChangedEvent;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->mSelectedProfiles:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->access$000(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;)Ljava/util/HashSet;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/events/ProfileSelectionChangedEvent;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 166
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->mSelectedProfiles:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->access$000(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemSelectableProfileBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemSelectableProfileBinding;->checkboxImage:Landroid/widget/ImageView;

    const v1, 0x7f020128

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public setParseObject(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 14
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 126
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 128
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 130
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->mPendingProfiles:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->access$100(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;)Ljava/util/HashSet;

    move-result-object v6

    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 132
    .local v2, "isPending":Z
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemSelectableProfileBinding;

    iget-object v7, v6, Lcom/spiraltoys/cloudpets2/databinding/ListItemSelectableProfileBinding;->checkboxImage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->mSelectedProfiles:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;->access$000(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter;)Ljava/util/HashSet;

    move-result-object v6

    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const v6, 0x7f020128

    :goto_0
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemSelectableProfileBinding;

    iget-object v7, v6, Lcom/spiraltoys/cloudpets2/databinding/ListItemSelectableProfileBinding;->displayName:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0800d9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v10}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    iget-object v10, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0800ab

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemSelectableProfileBinding;

    iget-object v7, v6, Lcom/spiraltoys/cloudpets2/databinding/ListItemSelectableProfileBinding;->displayName:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    const/high16 v6, 0x1060000

    :goto_2
    invoke-static {v0, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->itemView:Landroid/view/View;

    new-instance v7, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder$1;

    invoke-direct {v7, p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder$1;-><init>(Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v6}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "displayName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v3, " "

    .line 147
    .local v3, "placeholderText":Ljava/lang/String;
    :goto_3
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v6}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPortrait()Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    move-result-object v5

    .line 148
    .local v5, "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v4

    .line 149
    .local v4, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v7

    if-nez v5, :cond_4

    const/4 v6, 0x0

    .line 150
    :goto_4
    invoke-virtual {v7, v6}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v6

    new-array v7, v13, [Lcom/bumptech/glide/load/Transformation;

    new-instance v8, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;

    const v9, 0x7f0f006e

    .line 151
    invoke-static {v0, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v8, v0, v4, v9, v12}, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    aput-object v8, v7, v12

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v6

    .line 152
    invoke-static {v0, v3}, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->getListItemInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v6

    .line 153
    invoke-virtual {v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemSelectableProfileBinding;

    iget-object v7, v7, Lcom/spiraltoys/cloudpets2/databinding/ListItemSelectableProfileBinding;->profilePhoto:Landroid/widget/ImageView;

    .line 154
    invoke-virtual {v6, v7}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 155
    return-void

    .line 132
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v3    # "placeholderText":Ljava/lang/String;
    .end local v4    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .end local v5    # "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :cond_0
    const v6, 0x7f020129

    goto/16 :goto_0

    .line 133
    :cond_1
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v6}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 134
    :cond_2
    const v6, 0x106000c

    goto :goto_2

    .line 145
    .restart local v1    # "displayName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 150
    .restart local v3    # "placeholderText":Ljava/lang/String;
    .restart local v4    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .restart local v5    # "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :cond_4
    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->getFile()Lcom/parse/ParseFile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v6

    goto :goto_4
.end method

.method public bridge synthetic setParseObject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 115
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/adapters/FriendedProfileAdapter$ProfileViewHolder;->setParseObject(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    return-void
.end method
