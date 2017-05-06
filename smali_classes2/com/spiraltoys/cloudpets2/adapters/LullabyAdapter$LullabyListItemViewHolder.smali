.class public Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "LullabyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LullabyListItemViewHolder"
.end annotation


# instance fields
.field mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;

.field mLullaby:Lcom/spiraltoys/cloudpets2/model/Lullaby;

.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter;Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;)V
    .locals 1
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter;
    .param p2, "binding"    # Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter;

    .line 58
    invoke-virtual {p2}, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 59
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;

    .line 60
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/LullabyClickedEvent;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;->mLullaby:Lcom/spiraltoys/cloudpets2/model/Lullaby;

    invoke-direct {v1, v2}, Lcom/spiraltoys/cloudpets2/events/LullabyClickedEvent;-><init>(Lcom/spiraltoys/cloudpets2/model/Lullaby;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public setLullaby(Lcom/spiraltoys/cloudpets2/model/Lullaby;)V
    .locals 10
    .param p1, "lullaby"    # Lcom/spiraltoys/cloudpets2/model/Lullaby;

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    .line 63
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;->mLullaby:Lcom/spiraltoys/cloudpets2/model/Lullaby;

    .line 64
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;->mLullaby:Lcom/spiraltoys/cloudpets2/model/Lullaby;

    invoke-virtual {v0, v4}, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->setLullaby(Lcom/spiraltoys/cloudpets2/model/Lullaby;)V

    .line 65
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->executePendingBindings()V

    .line 67
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 68
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v2

    .line 69
    .local v2, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;->mLullaby:Lcom/spiraltoys/cloudpets2/model/Lullaby;

    .line 70
    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/Lullaby;->getImageResourceId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v7

    new-array v8, v6, [Lcom/bumptech/glide/load/Transformation;

    const/4 v9, 0x0

    new-instance v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;

    .line 71
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0068

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v5, v4

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IIFZ)V

    aput-object v0, v8, v9

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->lullabyImage:Landroid/widget/ImageView;

    .line 72
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 74
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/LullabyAdapter$LullabyListItemViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->tile:Lcom/spiraltoys/cloudpets2/views/FixedAspectLayout;

    invoke-virtual {v0, p0}, Lcom/spiraltoys/cloudpets2/views/FixedAspectLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method
