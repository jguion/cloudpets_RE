.class Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;
.super Ljava/lang/Object;
.source "FloatingProfileSwitcherFragment.java"

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->setupProfilePicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/FindCallback",
        "<",
        "Lcom/spiraltoys/cloudpets2/model/Profile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 360
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 21
    .param p2, "e"    # Lcom/parse/ParseException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$OnFloatingProfileSwitcherFragmentInteractionListener;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$200(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$OnFloatingProfileSwitcherFragmentInteractionListener;

    move-result-object v18

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_3

    :cond_0
    const/16 v17, 0x1

    :goto_0
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$OnFloatingProfileSwitcherFragmentInteractionListener;->onProfileMenuLoaded(Z)V

    .line 367
    :cond_1
    if-eqz p2, :cond_4

    .line 553
    :cond_2
    :goto_1
    return-void

    .line 364
    :cond_3
    const/16 v17, 0x0

    goto :goto_0

    .line 372
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->isAdded()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->isRemoving()Z

    move-result v17

    if-nez v17, :cond_2

    .line 376
    if-eqz p1, :cond_5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 377
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$302(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;Z)Z

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$400(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V

    goto :goto_1

    .line 382
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->floatingMenu:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->profileSwitcher:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$500(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->isAdult()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->switchProfileButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const v18, 0x7f020109

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 393
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->switchProfileButtonArrow:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$302(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;Z)Z

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$400(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V

    .line 397
    const/4 v13, 0x0

    .line 398
    .local v13, "menuSectionHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->floatingMenu:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    .line 400
    .local v4, "availableMenuHeight":I
    new-instance v17, Lcom/spiraltoys/cloudpets2/util/LastAccessedProfileComparator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/spiraltoys/cloudpets2/util/LastAccessedProfileComparator;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 402
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    const/16 v17, 0x6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_f

    .line 403
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 404
    .local v14, "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    new-instance v5, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v14}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;Lcom/spiraltoys/cloudpets2/model/Profile;)V

    .line 411
    .local v5, "clickListener":Landroid/view/View$OnClickListener;
    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 412
    .local v6, "clickableArea":Landroid/widget/LinearLayout;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 413
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 414
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$700(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)I

    move-result v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$700(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$700(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 416
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 417
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 419
    new-instance v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 420
    .local v15, "profileImage":Landroid/widget/ImageView;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 421
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 423
    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 424
    .local v10, "label":Landroid/widget/TextView;
    invoke-virtual {v14}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$800(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$900(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$800(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$900(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 426
    const v17, 0x7f0200b8

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0f006a

    invoke-static/range {v17 .. v18}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 428
    const/16 v17, 0x11

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 429
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x15

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0200bc

    invoke-static/range {v17 .. v18}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 433
    :cond_7
    new-instance v16, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 434
    .local v16, "separatorDot":Landroid/view/View;
    const v17, 0x7f020104

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundResource(I)V

    .line 436
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x15

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0200bb

    invoke-static/range {v17 .. v18}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 438
    new-instance v17, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$2;-><init>(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 448
    :cond_8
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1100(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1200(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V

    goto/16 :goto_1

    .line 388
    .end local v4    # "availableMenuHeight":I
    .end local v5    # "clickListener":Landroid/view/View$OnClickListener;
    .end local v6    # "clickableArea":Landroid/widget/LinearLayout;
    .end local v8    # "i":I
    .end local v10    # "label":Landroid/widget/TextView;
    .end local v13    # "menuSectionHeight":I
    .end local v14    # "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    .end local v15    # "profileImage":Landroid/widget/ImageView;
    .end local v16    # "separatorDot":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->switchProfileButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const v18, 0x7f02010a

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->switchProfileButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setTextColor(I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->switchProfileButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v18

    const-string v19, "fonts/merge_bold.otf"

    invoke-static/range {v18 .. v19}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 455
    .restart local v4    # "availableMenuHeight":I
    .restart local v5    # "clickListener":Landroid/view/View$OnClickListener;
    .restart local v6    # "clickableArea":Landroid/widget/LinearLayout;
    .restart local v8    # "i":I
    .restart local v10    # "label":Landroid/widget/TextView;
    .restart local v13    # "menuSectionHeight":I
    .restart local v14    # "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    .restart local v15    # "profileImage":Landroid/widget/ImageView;
    .restart local v16    # "separatorDot":Landroid/view/View;
    :cond_a
    mul-int/lit8 v17, v13, 0x2

    sub-int v17, v4, v17

    if-lez v17, :cond_d

    .line 456
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 457
    .local v11, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v17, 0x11

    invoke-virtual {v15}, Landroid/widget/ImageView;->getId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 458
    const/16 v17, 0x6

    invoke-virtual {v15}, Landroid/widget/ImageView;->getId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0082

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0082

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 462
    new-instance v7, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 463
    .local v7, "count":Landroid/widget/TextView;
    new-instance v9, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 465
    .local v9, "imageLayout":Landroid/widget/RelativeLayout;
    const v17, 0x7f020055

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 466
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c004f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 467
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 468
    const/16 v17, 0x11

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1300(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/graphics/Typeface;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0064

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0064

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 472
    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    .line 473
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 474
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 477
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1400(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v15, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    invoke-virtual {v9, v7, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    .line 481
    invoke-virtual/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0082

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v19, v0

    .line 483
    invoke-virtual/range {v19 .. v19}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c0082

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    .line 480
    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 486
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x15

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_b

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0200bb

    invoke-static/range {v17 .. v18}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 490
    :cond_b
    new-instance v12, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14, v7}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5$3;-><init>(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;Lcom/spiraltoys/cloudpets2/model/Profile;Landroid/widget/TextView;)V

    .line 512
    .local v12, "mMessageCountRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1600(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1700(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1800(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    const/16 v17, -0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1000(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1900(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$100(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->floatingMenu:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$2000(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    if-nez v13, :cond_c

    .line 522
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1800(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v18, v0

    .line 524
    invoke-static/range {v18 .. v18}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1400(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v18, v0

    add-int v17, v17, v18

    .line 525
    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v18

    add-int v17, v17, v18

    .line 526
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v18

    add-int v17, v17, v18

    .line 527
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v18

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v18, v0

    .line 528
    invoke-static/range {v18 .. v18}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1800(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v18, v0

    .line 529
    invoke-static/range {v18 .. v18}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1800(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v18, v0

    .line 530
    invoke-static/range {v18 .. v18}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1400(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v18, v0

    .line 531
    invoke-static/range {v18 .. v18}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1400(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v18, v0

    .line 532
    invoke-static/range {v18 .. v18}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1900(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v18, v0

    .line 533
    invoke-static/range {v18 .. v18}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1900(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    add-int v13, v17, v18

    .line 536
    :cond_c
    sub-int/2addr v4, v13

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v15, v14, v1}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$2200(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;Landroid/widget/ImageView;Lcom/spiraltoys/cloudpets2/model/Profile;Z)V

    .line 402
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 537
    .end local v7    # "count":Landroid/widget/TextView;
    .end local v9    # "imageLayout":Landroid/widget/RelativeLayout;
    .end local v11    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "mMessageCountRunnable":Ljava/lang/Runnable;
    :cond_d
    if-ge v4, v13, :cond_e

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$2102(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;Z)Z

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1200(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V

    goto/16 :goto_1

    .line 543
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1100(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1200(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V

    goto/16 :goto_1

    .line 551
    .end local v5    # "clickListener":Landroid/view/View$OnClickListener;
    .end local v6    # "clickableArea":Landroid/widget/LinearLayout;
    .end local v10    # "label":Landroid/widget/TextView;
    .end local v14    # "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    .end local v15    # "profileImage":Landroid/widget/ImageView;
    .end local v16    # "separatorDot":Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$2102(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;Z)Z

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;->this$0:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->access$1200(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V

    goto/16 :goto_1
.end method
