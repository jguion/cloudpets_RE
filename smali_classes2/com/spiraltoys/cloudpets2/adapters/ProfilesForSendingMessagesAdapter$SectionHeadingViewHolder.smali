.class public Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$SectionHeadingViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ProfilesForSendingMessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SectionHeadingViewHolder"
.end annotation


# instance fields
.field mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemHeaderBinding;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/databinding/ListItemHeaderBinding;)V
    .locals 1
    .param p1, "binding"    # Lcom/spiraltoys/cloudpets2/databinding/ListItemHeaderBinding;

    .prologue
    .line 232
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/databinding/ListItemHeaderBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 233
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$SectionHeadingViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemHeaderBinding;

    .line 234
    return-void
.end method


# virtual methods
.method public setTitle(I)V
    .locals 1
    .param p1, "titleResourceId"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfilesForSendingMessagesAdapter$SectionHeadingViewHolder;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ListItemHeaderBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemHeaderBinding;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 238
    return-void
.end method
