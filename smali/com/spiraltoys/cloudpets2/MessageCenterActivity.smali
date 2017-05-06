.class public Lcom/spiraltoys/cloudpets2/MessageCenterActivity;
.super Lcom/spiraltoys/cloudpets2/BaseActivity;
.source "MessageCenterActivity.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment$OnMessageFragmentInteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/MessageCenterActivity$MessagesPagerAdapter;
    }
.end annotation


# static fields
.field private static final FETCH_ALL_DELAY_MS:I = 0xfa

.field private static final TAB_LABELS:[I

.field private static final TAB_PROFILE_TYPES:[Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;


# instance fields
.field mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityMessageCenterBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 30
    new-array v0, v3, [Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    const/4 v1, 0x0

    sget-object v2, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->ADULT:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;->CHILD:Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/spiraltoys/cloudpets2/MessageCenterActivity;->TAB_PROFILE_TYPES:[Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    .line 31
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/spiraltoys/cloudpets2/MessageCenterActivity;->TAB_LABELS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0800df
        0x7f0800d0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/spiraltoys/cloudpets2/MessageCenterActivity;->TAB_LABELS:[I

    return-object v0
.end method

.method static synthetic access$100()[Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/spiraltoys/cloudpets2/MessageCenterActivity;->TAB_PROFILE_TYPES:[Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f040027

    invoke-static {p0, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityMessageCenterBinding;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/MessageCenterActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityMessageCenterBinding;

    .line 39
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 41
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/MessageCenterActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityMessageCenterBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityMessageCenterBinding;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/MessageCenterActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityMessageCenterBinding;

    iget-object v2, v2, Lcom/spiraltoys/cloudpets2/databinding/ActivityMessageCenterBinding;->tabs:Landroid/support/design/widget/TabLayout;

    invoke-direct {v1, v2}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 42
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/MessageCenterActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityMessageCenterBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityMessageCenterBinding;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/spiraltoys/cloudpets2/MessageCenterActivity$MessagesPagerAdapter;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/MessageCenterActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/spiraltoys/cloudpets2/MessageCenterActivity$MessagesPagerAdapter;-><init>(Lcom/spiraltoys/cloudpets2/MessageCenterActivity;Landroid/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 43
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/MessageCenterActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityMessageCenterBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/ActivityMessageCenterBinding;->tabs:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/MessageCenterActivity;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/ActivityMessageCenterBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/ActivityMessageCenterBinding;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 45
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/MessageCenterActivity;->initToolbar()V

    .line 46
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/MessageCenterActivity;->showToolbarTitle()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/spiraltoys/cloudpets2/MessageCenterActivity$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/MessageCenterActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/MessageCenterActivity;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/VoiceMessageClickedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/VoiceMessageClickedEvent;

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/events/VoiceMessageClickedEvent;->getVoiceMessage()Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->start(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    .line 81
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/VoiceMessagePushNotificationReceivedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/VoiceMessagePushNotificationReceivedEvent;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllVoiceMessagesToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 86
    return-void
.end method

.method public onRefresh(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 1
    .param p1, "swipeRefreshLayout"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    .prologue
    .line 71
    new-instance v0, Lcom/spiraltoys/cloudpets2/MessageCenterActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/spiraltoys/cloudpets2/MessageCenterActivity$2;-><init>(Lcom/spiraltoys/cloudpets2/MessageCenterActivity;Landroid/support/v4/widget/SwipeRefreshLayout;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllVoiceMessagesToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 77
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onStart()V

    .line 60
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 66
    invoke-super {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onStop()V

    .line 67
    return-void
.end method
