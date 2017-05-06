.class public Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FriendPermissionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChildFriendsViewHolder"
.end annotation


# instance fields
.field private deleteRequest:Landroid/view/View$OnClickListener;

.field mAcceptButton:Landroid/widget/ImageView;

.field mDeclineButton:Landroid/widget/ImageView;

.field mProfilePhotoView:Landroid/widget/ImageView;

.field mRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

.field mRequestPendingText:Landroid/widget/TextView;

.field mTextField1:Landroid/widget/TextView;

.field mTextField2:Landroid/widget/TextView;

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->this$0:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter;

    .line 523
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 597
    new-instance v0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$2;-><init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->deleteRequest:Landroid/view/View$OnClickListener;

    .line 524
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mView:Landroid/view/View;

    .line 525
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f10013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mTextField1:Landroid/widget/TextView;

    .line 526
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f10013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mTextField2:Landroid/widget/TextView;

    .line 527
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f1000a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mProfilePhotoView:Landroid/widget/ImageView;

    .line 528
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f100138

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mAcceptButton:Landroid/widget/ImageView;

    .line 529
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f100139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mDeclineButton:Landroid/widget/ImageView;

    .line 530
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mView:Landroid/view/View;

    const v1, 0x7f100137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mRequestPendingText:Landroid/widget/TextView;

    .line 531
    return-void
.end method


# virtual methods
.method public setParseObject(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;)V
    .locals 13
    .param p1, "recordGroup"    # Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    .line 536
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 537
    .local v0, "context":Landroid/content/Context;
    const-string v1, ""

    .line 538
    .local v1, "displayName":Ljava/lang/String;
    const/4 v2, 0x1

    .line 540
    .local v2, "isPending":Z
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    invoke-virtual {v7}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    .line 541
    .local v6, "record":Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    invoke-virtual {v6}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getStatus()Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    move-result-object v8

    sget-object v9, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->PENDING:Lcom/spiraltoys/cloudpets2/model/FriendStatus;

    invoke-virtual {v8, v9}, Lcom/spiraltoys/cloudpets2/model/FriendStatus;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 542
    const/4 v2, 0x0

    .line 547
    .end local v6    # "record":Lcom/spiraltoys/cloudpets2/model/FriendRecord;
    :cond_1
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    invoke-virtual {v7}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->first()Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getTargetProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v7

    if-nez v7, :cond_2

    .line 548
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mTextField1:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    invoke-virtual {v8}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->first()Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    move-result-object v8

    invoke-virtual {v8}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getRelationship()Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->getLocalizedString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    :goto_0
    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mTextField2:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    invoke-virtual {v7}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->first()Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getTargetEmailAddress()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mAcceptButton:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 557
    if-eqz v2, :cond_4

    .line 558
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mTextField1:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 559
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mTextField2:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 560
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v4

    .line 561
    .local v4, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v7

    const v8, 0x7f02012d

    .line 562
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/bumptech/glide/load/Transformation;

    const/4 v9, 0x0

    new-instance v10, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;

    const v11, 0x7f0f006e

    .line 563
    invoke-static {v0, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v10, v0, v4, v11, v12}, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v7

    .line 564
    invoke-virtual {v7}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mProfilePhotoView:Landroid/widget/ImageView;

    .line 565
    invoke-virtual {v7, v8}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 566
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mDeclineButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->deleteRequest:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mDeclineButton:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 569
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mDeclineButton:Landroid/widget/ImageView;

    const v8, 0x7f0200c0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 570
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mRequestPendingText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 595
    :goto_2
    return-void

    .line 550
    .end local v4    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    :cond_2
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    invoke-virtual {v7}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->first()Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getTargetProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 551
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mTextField1:Landroid/widget/TextView;

    const v8, 0x7f0800d9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    invoke-virtual {v11}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->first()Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    move-result-object v11

    invoke-virtual {v11}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getRelationship()Lcom/spiraltoys/cloudpets2/model/FriendRelationship;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/spiraltoys/cloudpets2/model/FriendRelationship;->getLocalizedString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 554
    :cond_3
    const v7, 0x7f080028

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 572
    :cond_4
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mTextField1:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 573
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mTextField2:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 574
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mDeclineButton:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 575
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mRequestPendingText:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 577
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mView:Landroid/view/View;

    new-instance v8, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$1;

    invoke-direct {v8, p0, v0}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder$1;-><init>(Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v3, " "

    .line 586
    .local v3, "placeholderText":Ljava/lang/String;
    :goto_3
    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mRecordGroup:Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;

    invoke-virtual {v7}, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendRecordGroup;->first()Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/spiraltoys/cloudpets2/model/FriendRecord;->getTargetProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPortrait()Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    move-result-object v5

    .line 587
    .local v5, "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v4

    .line 588
    .restart local v4    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v8

    if-nez v5, :cond_6

    const/4 v7, 0x0

    .line 589
    :goto_4
    invoke-virtual {v8, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/bumptech/glide/load/Transformation;

    const/4 v9, 0x0

    new-instance v10, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;

    const v11, 0x7f0f006e

    .line 590
    invoke-static {v0, v11}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v10, v0, v4, v11, v12}, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v7

    .line 591
    invoke-static {v0, v3}, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->getListItemInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v7

    .line 592
    invoke-virtual {v7}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/adapters/FriendPermissionsAdapter$ChildFriendsViewHolder;->mProfilePhotoView:Landroid/widget/ImageView;

    .line 593
    invoke-virtual {v7, v8}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_2

    .line 585
    .end local v3    # "placeholderText":Ljava/lang/String;
    .end local v4    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .end local v5    # "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :cond_5
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 589
    .restart local v3    # "placeholderText":Ljava/lang/String;
    .restart local v4    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .restart local v5    # "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :cond_6
    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->getFile()Lcom/parse/ParseFile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v7

    goto :goto_4
.end method
