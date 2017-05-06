.class public Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;
.super Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;
.source "ProfileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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
.field isPending:Z

.field isSelected:Z

.field mCheckBox:Landroid/widget/ImageView;

.field mDisplayname:Landroid/widget/TextView;

.field mEventType:Ljava/lang/Class;

.field mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

.field mProfilePhoto:Landroid/widget/ImageView;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Class;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "eventType"    # Ljava/lang/Class;
    .param p3, "isSelected"    # Z

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;-><init>(Landroid/view/View;)V

    .line 155
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mView:Landroid/view/View;

    .line 156
    const v0, 0x7f1000a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mProfilePhoto:Landroid/widget/ImageView;

    .line 157
    const v0, 0x7f100141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mCheckBox:Landroid/widget/ImageView;

    .line 158
    const v0, 0x7f1000a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mDisplayname:Landroid/widget/TextView;

    .line 159
    iput-boolean p3, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->isSelected:Z

    .line 160
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mEventType:Ljava/lang/Class;

    .line 161
    return-void
.end method


# virtual methods
.method public setParseObject(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 10
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    const/4 v9, 0x0

    .line 164
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 166
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 169
    .local v0, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "displayName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v2, " "

    .line 172
    .local v2, "placeholderText":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPortrait()Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    move-result-object v4

    .line 173
    .local v4, "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v3

    .line 174
    .local v3, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    if-nez v4, :cond_1

    const/4 v5, 0x0

    .line 175
    :goto_1
    invoke-virtual {v6, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/bumptech/glide/load/Transformation;

    new-instance v7, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;

    const v8, 0x7f0f006e

    .line 176
    invoke-static {v0, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-direct {v7, v0, v3, v8, v9}, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    aput-object v7, v6, v9

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    .line 177
    invoke-static {v0, v2}, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->getListItemInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    .line 178
    invoke-virtual {v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->mProfilePhoto:Landroid/widget/ImageView;

    .line 179
    invoke-virtual {v5, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 180
    return-void

    .line 170
    .end local v2    # "placeholderText":Ljava/lang/String;
    .end local v3    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .end local v4    # "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :cond_0
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 175
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
    .line 140
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/adapters/ProfileAdapter$ProfileViewHolder;->setParseObject(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    return-void
.end method
