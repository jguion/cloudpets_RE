.class public Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;
.super Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;
.source "ProfileSwitcherAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProfileSwitcherViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder",
        "<",
        "Lcom/spiraltoys/cloudpets2/model/Profile;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemProfileSwitcherBinding;

.field mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;Lcom/spiraltoys/cloudpets2/databinding/ListItemProfileSwitcherBinding;)V
    .locals 1
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;
    .param p2, "binding"    # Lcom/spiraltoys/cloudpets2/databinding/ListItemProfileSwitcherBinding;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;

    .line 49
    invoke-virtual {p2}, Lcom/spiraltoys/cloudpets2/databinding/ListItemProfileSwitcherBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;-><init>(Landroid/view/View;)V

    .line 50
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemProfileSwitcherBinding;

    .line 51
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemProfileSwitcherBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemProfileSwitcherBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method private setupProfilePhoto()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 75
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemProfileSwitcherBinding;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/databinding/ListItemProfileSwitcherBinding;->getRoot()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    .local v0, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "displayName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v2, " "

    .line 81
    .local v2, "placeholderText":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPortrait()Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    move-result-object v4

    .line 82
    .local v4, "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v3

    .line 83
    .local v3, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    if-nez v4, :cond_1

    const/4 v5, 0x0

    .line 84
    :goto_1
    invoke-virtual {v6, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/bumptech/glide/load/Transformation;

    new-instance v7, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;

    .line 85
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f006d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v0, v3, v8, v10}, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    aput-object v7, v6, v10

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    .line 86
    invoke-static {v0, v2}, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->getListItemInstanceLightBorder(Landroid/content/Context;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    .line 87
    invoke-virtual {v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemProfileSwitcherBinding;

    iget-object v6, v6, Lcom/spiraltoys/cloudpets2/databinding/ListItemProfileSwitcherBinding;->profilePhoto:Landroid/widget/ImageView;

    .line 88
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 89
    return-void

    .line 79
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

    .line 84
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

.method private updateSelectionIndicator()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemProfileSwitcherBinding;

    iget-object v1, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemProfileSwitcherBinding;->selectionIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public isSelected()Z
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->mSelectedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->access$100(Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    # setter for: Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->mSelectedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;
    invoke-static {v1, v2}, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->access$102(Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;Lcom/spiraltoys/cloudpets2/model/Profile;)Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 99
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->mSelectedProfileViewHolder:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->access$000(Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;)Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;

    move-result-object v0

    .line 100
    .local v0, "lastSelectedViewHolder":Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;

    # setter for: Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->mSelectedProfileViewHolder:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;
    invoke-static {v1, p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->access$002(Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;)Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->updateSelectionIndicator()V

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->updateSelectionIndicator()V

    .line 108
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/spiraltoys/cloudpets2/events/ProfilePickerItemClickedEvent;

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-direct {v2, v3}, Lcom/spiraltoys/cloudpets2/events/ProfilePickerItemClickedEvent;-><init>(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public setParseObject(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 2
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 57
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemProfileSwitcherBinding;

    invoke-virtual {v0, p1}, Lcom/spiraltoys/cloudpets2/databinding/ListItemProfileSwitcherBinding;->setProfile(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 58
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemProfileSwitcherBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemProfileSwitcherBinding;->executePendingBindings()V

    .line 60
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;

    # setter for: Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->mSelectedProfileViewHolder:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;
    invoke-static {v0, p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->access$002(Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;)Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;

    .line 66
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->setupProfilePhoto()V

    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->updateSelectionIndicator()V

    .line 68
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;

    # getter for: Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->mSelectedProfileViewHolder:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->access$000(Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;)Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;

    const/4 v1, 0x0

    # setter for: Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->mSelectedProfileViewHolder:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;
    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->access$002(Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;)Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;

    goto :goto_0
.end method

.method public bridge synthetic setParseObject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;->setParseObject(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    return-void
.end method
