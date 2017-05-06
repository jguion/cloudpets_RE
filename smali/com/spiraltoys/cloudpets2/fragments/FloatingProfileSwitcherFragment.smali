.class public Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;
.super Landroid/app/Fragment;
.source "FloatingProfileSwitcherFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$FloatingProfilePickerUnderlayProvider;,
        Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$OnFloatingProfileSwitcherFragmentInteractionListener;
    }
.end annotation


# static fields
.field private static final ARG_PROFILE_ID:Ljava/lang/String; = "arg_profile_id"

.field private static final MAX_MENU_ITEMS:I = 0x5

.field private static final MENU_ARROW_TRANSITION_DURATION_MS:I = 0xc8

.field private static final MENU_ITEM_OFFSET_DELAY_MS:I = 0x14

.field private static final MENU_UNDERLAY_TRANSITION_DURATION_MS:I = 0xc8

.field private static final NUMBER_OF_ANIMATEABLE_COMPONENTS_PER_MENU_ITEM:I = 0x3


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

.field private mCounterTypeface:Landroid/graphics/Typeface;

.field private mFloatingMenuDisabled:Z

.field private mFloatingMenuImageElevation:I

.field private mFloatingMenuImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mFloatingMenuImageSize:I

.field private mFloatingMenuItemWrapperLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mFloatingMenuLabelElevation:I

.field private mFloatingMenuLabelHorizontalPadding:I

.field private mFloatingMenuLabelLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mFloatingMenuLabelMargin:I

.field private mFloatingMenuLabelVerticalPadding:I

.field private mFloatingMenuSeparatorDotLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mFloatingMenuSeparatorMargin:I

.field private mFloatingMenuSeparatorSize:I

.field private mHandler:Landroid/os/Handler;

.field private mHasNoProfiles:Z

.field private mIsParentalControlEnabled:Z

.field private mIsPasswordProtectAdultDashboardEnabled:Z

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$OnFloatingProfileSwitcherFragmentInteractionListener;

.field private mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

.field private mProfileMessageCountTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mRotationInterpolator:Landroid/animation/TimeInterpolator;

.field private mShowViewAnimations:[Landroid/view/animation/Animation;

.field private mUnderlayProvider:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$FloatingProfilePickerUnderlayProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mProfileMessageCountTasks:Ljava/util/ArrayList;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getUnderlayView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 58
    iget v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuImageSize:I

    return v0
.end method

.method static synthetic access$1100(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->setupProfilePickerMoreButton()V

    return-void
.end method

.method static synthetic access$1200(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->setupAnimations()V

    return-void
.end method

.method static synthetic access$1300(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mCounterTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mIsParentalControlEnabled:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mProfileMessageCountTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuSeparatorDotLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuLabelLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$OnFloatingProfileSwitcherFragmentInteractionListener;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$OnFloatingProfileSwitcherFragmentInteractionListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuItemWrapperLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuDisabled:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;Landroid/widget/ImageView;Lcom/spiraltoys/cloudpets2/model/Profile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p3, "x3"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->setupProfilePhoto(Landroid/widget/ImageView;Lcom/spiraltoys/cloudpets2/model/Profile;Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->showMoreProfilesPicker()V

    return-void
.end method

.method static synthetic access$302(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mHasNoProfiles:Z

    return p1
.end method

.method static synthetic access$400(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->showProfilePickerButton()V

    return-void
.end method

.method static synthetic access$500(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)Lcom/spiraltoys/cloudpets2/model/Profile;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    return-object v0
.end method

.method static synthetic access$600(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->onProfileSelected(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    return-void
.end method

.method static synthetic access$700(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 58
    iget v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuSeparatorMargin:I

    return v0
.end method

.method static synthetic access$800(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 58
    iget v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuLabelHorizontalPadding:I

    return v0
.end method

.method static synthetic access$900(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    .prologue
    .line 58
    iget v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuLabelVerticalPadding:I

    return v0
.end method

.method private getUnderlayView()Landroid/view/View;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mUnderlayProvider:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$FloatingProfilePickerUnderlayProvider;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->floatingMenuUnderlay:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mUnderlayProvider:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$FloatingProfilePickerUnderlayProvider;

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$FloatingProfilePickerUnderlayProvider;->provideUnderlayView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized hideProfilePicker()V
    .locals 4

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->switchProfileButtonArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mRotationInterpolator:Landroid/animation/TimeInterpolator;

    .line 274
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 275
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 276
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 279
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getUnderlayView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getUnderlayView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$2;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$2;-><init>(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 288
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->floatingMenu:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->floatingMenu:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 290
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->floatingMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$3;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$3;-><init>(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isProfilePasswordLocked(Lcom/spiraltoys/cloudpets2/model/Profile;)Z
    .locals 1
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 246
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->isAdult()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mIsPasswordProtectAdultDashboardEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Lcom/spiraltoys/cloudpets2/model/Profile;)Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;
    .locals 4
    .param p0, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 99
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;-><init>()V

    .line 100
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_profile_id"

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->setArguments(Landroid/os/Bundle;)V

    .line 103
    return-object v1
.end method

.method private onProfileSelected(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 3
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->isProfilePasswordLocked(Lcom/spiraltoys/cloudpets2/model/Profile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->newInstance(Lcom/spiraltoys/cloudpets2/model/Profile;Z)Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$OnFloatingProfileSwitcherFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$OnFloatingProfileSwitcherFragmentInteractionListener;

    invoke-interface {v0, p1}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$OnFloatingProfileSwitcherFragmentInteractionListener;->onProfileSelected(Lcom/spiraltoys/cloudpets2/model/Profile;)V

    goto :goto_0
.end method

.method private setupAnimations()V
    .locals 6

    .prologue
    .line 558
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->floatingMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 560
    .local v2, "numChildViews":I
    mul-int/lit8 v3, v2, 0x3

    new-array v3, v3, [Landroid/view/animation/Animation;

    iput-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mShowViewAnimations:[Landroid/view/animation/Animation;

    .line 562
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mShowViewAnimations:[Landroid/view/animation/Animation;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f050018

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 564
    .local v0, "animation":Landroid/view/animation/Animation;
    mul-int/lit8 v3, v1, 0x14

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 565
    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mShowViewAnimations:[Landroid/view/animation/Animation;

    aput-object v0, v3, v1

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private setupProfilePhoto(Landroid/widget/ImageView;Lcom/spiraltoys/cloudpets2/model/Profile;Z)V
    .locals 11
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p3, "isCurrent"    # Z

    .prologue
    const/4 v10, 0x0

    .line 626
    invoke-virtual {p2}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, " "

    .line 629
    .local v1, "placeholderText":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPortrait()Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    move-result-object v3

    .line 630
    .local v3, "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v2

    .line 631
    .local v2, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    if-nez v3, :cond_1

    const/4 v4, 0x0

    .line 632
    :goto_1
    invoke-virtual {v5, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/bumptech/glide/load/Transformation;

    new-instance v6, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;

    .line 633
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0063

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    const/4 v9, -0x1

    invoke-direct {v6, v7, v2, v8, v9}, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    aput-object v6, v5, v10

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v5

    if-eqz p3, :cond_2

    .line 634
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->getFloatingProfileSwitcherLargeInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    .line 635
    invoke-virtual {v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    .line 636
    invoke-virtual {v4, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 637
    return-void

    .line 627
    .end local v1    # "placeholderText":Ljava/lang/String;
    .end local v2    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .end local v3    # "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :cond_0
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 632
    .restart local v1    # "placeholderText":Ljava/lang/String;
    .restart local v2    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .restart local v3    # "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :cond_1
    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->getFile()Lcom/parse/ParseFile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 634
    :cond_2
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->getFloatingProfileSwitcherInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;

    move-result-object v4

    goto :goto_2
.end method

.method private setupProfilePicker()V
    .locals 2
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mHasNoProfiles:Z

    .line 358
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->floatingMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 360
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getOwnedProfilesLocalDatastoreQuery(Lcom/spiraltoys/cloudpets2/model/Profile;)Lcom/parse/ParseQuery;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$5;-><init>(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    .line 555
    return-void
.end method

.method private setupProfilePickerMoreButton()V
    .locals 13

    .prologue
    const/16 v11, 0x15

    const/4 v12, 0x0

    const/4 v10, 0x1

    .line 570
    new-instance v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$6;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$6;-><init>(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V

    .line 577
    .local v0, "clickListener":Landroid/view/View$OnClickListener;
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 578
    .local v1, "clickableArea":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 579
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 580
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    iget v6, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuSeparatorMargin:I

    iget v7, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuSeparatorMargin:I

    iget v8, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuSeparatorMargin:I

    invoke-virtual {v1, v6, v12, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 582
    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 584
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 585
    .local v4, "profileImage":Landroid/widget/ImageView;
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 587
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 588
    .local v2, "label":Landroid/widget/TextView;
    const v6, 0x7f080049

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 589
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 590
    iget v6, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuLabelHorizontalPadding:I

    iget v7, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuLabelVerticalPadding:I

    iget v8, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuLabelHorizontalPadding:I

    iget v9, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuLabelVerticalPadding:I

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 591
    const v6, 0x7f0200b8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 592
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0f006a

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 593
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setClickable(Z)V

    .line 594
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v11, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0200bc

    invoke-static {v6, v7}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 598
    :cond_0
    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 599
    .local v5, "separatorDot":Landroid/view/View;
    const v6, 0x7f020104

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 601
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v11, :cond_1

    .line 602
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0200bb

    invoke-static {v6, v7}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 603
    new-instance v6, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$7;

    invoke-direct {v6, p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$7;-><init>(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 612
    :cond_1
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuSeparatorDotLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuLabelLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    iget-object v6, v6, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->floatingMenu:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuItemWrapperLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v3

    .line 618
    .local v3, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    const v7, 0x7f0200b9

    .line 619
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v6

    new-array v7, v10, [Lcom/bumptech/glide/load/Transformation;

    new-instance v8, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;

    .line 620
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0063

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    const/4 v11, -0x1

    invoke-direct {v8, v9, v3, v10, v11}, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    aput-object v8, v7, v12

    invoke-virtual {v6, v7}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v6

    .line 621
    invoke-virtual {v6, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 622
    return-void
.end method

.method private showMoreProfilesPicker()V
    .locals 3

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->newInstance(Lcom/spiraltoys/cloudpets2/model/Profile;Z)Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/fragments/ProfileSwitcherDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 347
    :cond_0
    return-void
.end method

.method private declared-synchronized showProfilePicker()V
    .locals 8

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$OnFloatingProfileSwitcherFragmentInteractionListener;

    if-eqz v5, :cond_0

    .line 305
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$OnFloatingProfileSwitcherFragmentInteractionListener;

    invoke-interface {v5}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$OnFloatingProfileSwitcherFragmentInteractionListener;->onProfileFlyoutMenuShown()V

    .line 308
    :cond_0
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    iget-object v5, v5, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->switchProfileButtonArrow:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mRotationInterpolator:Landroid/animation/TimeInterpolator;

    .line 309
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    .line 310
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x43340000    # 180.0f

    .line 311
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 312
    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 314
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    iget-object v5, v5, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->floatingMenu:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    iget-object v5, v5, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->floatingMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 316
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    iget-object v5, v5, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->floatingMenu:Landroid/widget/LinearLayout;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 317
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getUnderlayView()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 318
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getUnderlayView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$4;

    invoke-direct {v6, p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$4;-><init>(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 326
    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 328
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    iget-object v5, v5, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->floatingMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 329
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    iget-object v5, v5, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->floatingMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 330
    .local v4, "wrapper":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/4 v5, 0x3

    if-ge v3, v5, :cond_2

    .line 331
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 332
    .local v1, "childView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 333
    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/animation/Animation;->reset()V

    .line 334
    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/animation/Animation;->start()V

    .line 330
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 336
    :cond_1
    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mShowViewAnimations:[Landroid/view/animation/Animation;

    mul-int/lit8 v6, v2, 0x3

    add-int/2addr v6, v3

    aget-object v0, v5, v6

    .line 337
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 304
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "wrapper":Landroid/widget/LinearLayout;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 328
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "wrapper":Landroid/widget/LinearLayout;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    .end local v3    # "j":I
    .end local v4    # "wrapper":Landroid/widget/LinearLayout;
    :cond_3
    monitor-exit p0

    return-void
.end method

.method private showProfilePickerButton()V
    .locals 3

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f050018

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 351
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->switchProfileSpinner:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 352
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->switchProfileSpinner:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 353
    return-void
.end method

.method private toggleProfilePicker()V
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mHasNoProfiles:Z

    if-eqz v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuDisabled:Z

    if-eqz v0, :cond_1

    .line 261
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->showMoreProfilesPicker()V

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->floatingMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 266
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->hideProfilePicker()V

    goto :goto_0

    .line 268
    :cond_2
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->showProfilePicker()V

    goto :goto_0
.end method

.method private updateNewMessageCounters()V
    .locals 3

    .prologue
    .line 250
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mProfileMessageCountTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 251
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 253
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 207
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$OnFloatingProfileSwitcherFragmentInteractionListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$OnFloatingProfileSwitcherFragmentInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    instance-of v2, p1, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$FloatingProfilePickerUnderlayProvider;

    if-eqz v2, :cond_0

    .line 214
    check-cast p1, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$FloatingProfilePickerUnderlayProvider;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mUnderlayProvider:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$FloatingProfilePickerUnderlayProvider;

    .line 216
    :cond_0
    return-void

    .line 208
    .restart local p1    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnFloatingProfileSwitcherFragmentInteractionListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    const/4 v4, -0x2

    .line 113
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mHandler:Landroid/os/Handler;

    .line 117
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->isUseAdminPasswordEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mIsPasswordProtectAdultDashboardEnabled:Z

    .line 118
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->isParentalControlEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mIsParentalControlEnabled:Z

    .line 120
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "arg_profile_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfileFromLocalDatastore(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v1

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mRotationInterpolator:Landroid/animation/TimeInterpolator;

    .line 130
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuImageSize:I

    .line 131
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuSeparatorSize:I

    .line 132
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuSeparatorMargin:I

    .line 133
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuLabelMargin:I

    .line 134
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuLabelElevation:I

    .line 135
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuImageElevation:I

    .line 136
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuLabelHorizontalPadding:I

    .line 137
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuLabelVerticalPadding:I

    .line 139
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuImageSize:I

    iget v3, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuImageSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 140
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuLabelLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 141
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuSeparatorSize:I

    iget v3, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuSeparatorSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuSeparatorDotLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 142
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuItemWrapperLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 144
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuLabelLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuLabelMargin:I

    iget v3, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuLabelMargin:I

    iget v4, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuLabelMargin:I

    iget v5, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuLabelElevation:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 145
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuSeparatorDotLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuSeparatorMargin:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuSeparatorMargin:I

    iget v5, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuSeparatorMargin:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 146
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mFloatingMenuImageLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 147
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Lcom/parse/ParseException;
    invoke-virtual {v0}, Lcom/parse/ParseException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Lhugo/weaving/DebugLog;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 182
    const v0, 0x7f040050

    invoke-static {p1, v0, p2, v2}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    .line 183
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 185
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/merge_regular.otf"

    invoke-static {v0, v1}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mCounterTypeface:Landroid/graphics/Typeface;

    .line 187
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->switchProfileButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->profileSwitcher:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->profilePhoto:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->setupProfilePhoto(Landroid/widget/ImageView;Lcom/spiraltoys/cloudpets2/model/Profile;Z)V

    .line 191
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->setupProfilePicker()V

    .line 193
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getUnderlayView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment$OnFloatingProfileSwitcherFragmentInteractionListener;

    .line 222
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/VoiceMessageSavedToLocalDatastoreEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/VoiceMessageSavedToLocalDatastoreEvent;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->updateNewMessageCounters()V

    .line 168
    return-void
.end method

.method onMenuUnderlayClicked()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->hideProfilePicker()V

    .line 177
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 152
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 153
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 158
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 160
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->isUseAdminPasswordEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mIsPasswordProtectAdultDashboardEnabled:Z

    .line 161
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->isParentalControlEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->mIsParentalControlEnabled:Z

    .line 163
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->updateNewMessageCounters()V

    .line 164
    return-void
.end method

.method onSwitchProfileClicked()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100117
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/FloatingProfileSwitcherFragment;->toggleProfilePicker()V

    .line 173
    return-void
.end method
