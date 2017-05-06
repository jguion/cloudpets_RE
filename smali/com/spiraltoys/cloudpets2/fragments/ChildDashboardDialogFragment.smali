.class public Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;
.super Landroid/app/DialogFragment;
.source "ChildDashboardDialogFragment.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# static fields
.field private static final ARG_IS_DOWNLOADING_AUDIO:Ljava/lang/String; = "arg_is_downloading_audio"

.field private static final ARG_IS_HELP_INSTANCE:Ljava/lang/String; = "arg_is_help_instance"

.field private static final ARG_IS_LULLABY_INSTANCE:Ljava/lang/String; = "arg_is_lullaby_instance"

.field private static final ARG_IS_STORIES_INSTANCE:Ljava/lang/String; = "arg_is_stories_instance"

.field private static final ARG_PROFILE_ID:Ljava/lang/String; = "arg_profile_id"

.field private static final ARG_RECORDED_AUDIO_URI:Ljava/lang/String; = "arg_recorded_audio_uri"


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;

.field private mIsDownloadingAudio:Z

.field private mIsHelpInstance:Z

.field private mIsLullabyInstance:Z

.field private mIsStoriesInstance:Z

.field private mProfileId:Ljava/lang/String;

.field private mRecordedAudioUri:Landroid/net/Uri;

.field mTitleIconStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Licepick/State;
    .end annotation
.end field

.field mTitleStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Licepick/State;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->pop(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->peek(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;

    return-object v0
.end method

.method public static newHelpInstance()Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;
    .locals 4

    .prologue
    .line 101
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;-><init>()V

    .line 102
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_is_help_instance"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 105
    return-object v1
.end method

.method public static newInstance(Landroid/net/Uri;)Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;
    .locals 3
    .param p0, "recordedAudioUri"    # Landroid/net/Uri;

    .prologue
    .line 61
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;-><init>()V

    .line 62
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_recorded_audio_uri"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v1
.end method

.method public static newInstance(Z)Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;
    .locals 3
    .param p0, "isDownloadingAudio"    # Z

    .prologue
    .line 69
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;-><init>()V

    .line 70
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_is_downloading_audio"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 73
    return-object v1
.end method

.method public static newLullabyInstance()Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;
    .locals 4

    .prologue
    .line 85
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;-><init>()V

    .line 86
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_is_lullaby_instance"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    return-object v1
.end method

.method public static newMessagesInstance(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;
    .locals 3
    .param p0, "profileId"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;-><init>()V

    .line 78
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_profile_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 81
    return-object v1
.end method

.method public static newStoriesInstance()Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;
    .locals 4

    .prologue
    .line 93
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;-><init>()V

    .line 94
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_is_stories_instance"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 97
    return-object v1
.end method

.method private peek(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private pop(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private push(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p2, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    return-void
.end method

.method private setTitle(I)V
    .locals 2
    .param p1, "titleStringResource"    # I

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mTitleStack:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->push(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 209
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;->toolbarTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    return-void
.end method

.method private setTitleIcon(I)V
    .locals 2
    .param p1, "titleIconResource"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mTitleIconStack:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->push(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;->toolbarTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    return-void
.end method

.method private showHelpFragment()V
    .locals 3

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1000d0

    new-instance v2, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;

    invoke-direct {v2}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardHelpFragment;-><init>()V

    .line 228
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 229
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mIsDownloadingAudio:Z

    .line 234
    const v0, 0x7f080171

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setTitle(I)V

    .line 235
    const v0, 0x7f020141

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setTitleIcon(I)V

    .line 236
    return-void
.end method

.method private showLullabiesFragment()V
    .locals 3

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1000d0

    new-instance v2, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment;

    invoke-direct {v2}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabiesFragment;-><init>()V

    .line 255
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 256
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mIsDownloadingAudio:Z

    .line 261
    const v0, 0x7f08018a

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setTitle(I)V

    .line 262
    const v0, 0x7f0200d2

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setTitleIcon(I)V

    .line 263
    return-void
.end method

.method private showMessagesFragment()V
    .locals 3

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1000d0

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mProfileId:Ljava/lang/String;

    .line 242
    invoke-static {v2}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;->newInstance(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessagesFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 243
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mIsDownloadingAudio:Z

    .line 248
    const v0, 0x7f08018d

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setTitle(I)V

    .line 249
    const v0, 0x7f0200e7

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setTitleIcon(I)V

    .line 250
    return-void
.end method

.method private showRecordingFragment()V
    .locals 4

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mIsDownloadingAudio:Z

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 354
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mTitleStack:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->pop(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mTitleIconStack:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->pop(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f1000d0

    .line 360
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "arg_recorded_audio_uri"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;->newInstance(Landroid/net/Uri;)Lcom/spiraltoys/cloudpets2/fragments/ChildRecordedMessageActionsFragment;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 361
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mIsDownloadingAudio:Z

    .line 366
    const v0, 0x7f080187

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setTitle(I)V

    .line 367
    const v0, 0x7f0200e7

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setTitleIcon(I)V

    .line 368
    return-void
.end method

.method private showStoriesFragment()V
    .locals 3

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1000d0

    new-instance v2, Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment;

    invoke-direct {v2}, Lcom/spiraltoys/cloudpets2/fragments/ChildStoriesFragment;-><init>()V

    .line 281
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 282
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mIsDownloadingAudio:Z

    .line 287
    const v0, 0x7f0801ad

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setTitle(I)V

    .line 288
    const v0, 0x7f02013b

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setTitleIcon(I)V

    .line 289
    return-void
.end method

.method private updateToolbarIcon()V
    .locals 2

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    goto :goto_0
.end method


# virtual methods
.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 380
    :try_start_0
    const-class v2, Landroid/app/DialogFragment;

    const-string v3, "mDialog"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 381
    .local v1, "mDialog":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 382
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 383
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 384
    .end local v1    # "mDialog":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public hideIncomingRecordingFragment()V
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mIsDownloadingAudio:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->onBackPressed()V

    .line 375
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mIsDownloadingAudio:Z

    .line 376
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->updateToolbarIcon()V

    .line 204
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const/4 v0, 0x2

    const v1, 0x7f0d0096

    invoke-virtual {p0, v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setStyle(II)V

    .line 112
    invoke-static {p0, p1}, Licepick/Icepick;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 114
    if-nez p1, :cond_0

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mTitleStack:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mTitleIconStack:Ljava/util/ArrayList;

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_recorded_audio_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mRecordedAudioUri:Landroid/net/Uri;

    .line 121
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_is_downloading_audio"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mIsDownloadingAudio:Z

    .line 122
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_is_lullaby_instance"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mIsLullabyInstance:Z

    .line 123
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_is_stories_instance"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mIsStoriesInstance:Z

    .line 124
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_is_help_instance"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mIsHelpInstance:Z

    .line 125
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_profile_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mProfileId:Ljava/lang/String;

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 130
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 172
    new-instance v0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$2;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$2;-><init>(Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;Landroid/content/Context;I)V

    .line 188
    .local v0, "dialog":Landroid/support/v7/app/AppCompatDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    .line 189
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AppCompatDialog;->setCanceledOnTouchOutside(Z)V

    .line 190
    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 135
    const v0, 0x7f04003e

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;

    .line 137
    if-nez p3, :cond_0

    .line 138
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mIsHelpInstance:Z

    if-eqz v0, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->showHelpFragment()V

    .line 153
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;

    iget-object v1, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;->toolbarTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mTitleStack:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->peek(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;

    iget-object v1, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;->toolbarTitleIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mTitleIconStack:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->peek(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->updateToolbarIcon()V

    .line 167
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 140
    :cond_1
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mIsLullabyInstance:Z

    if-eqz v0, :cond_2

    .line 141
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->showLullabiesFragment()V

    goto :goto_0

    .line 142
    :cond_2
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mIsStoriesInstance:Z

    if-eqz v0, :cond_3

    .line 143
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->showStoriesFragment()V

    goto :goto_0

    .line 144
    :cond_3
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mIsDownloadingAudio:Z

    if-eqz v0, :cond_4

    .line 145
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->showIncomingRecordingFragment()V

    goto :goto_0

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mRecordedAudioUri:Landroid/net/Uri;

    if-nez v0, :cond_5

    .line 147
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->showMessagesFragment()V

    goto :goto_0

    .line 149
    :cond_5
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->showRecordingFragment()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 198
    invoke-static {p0, p1}, Licepick/Icepick;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 199
    return-void
.end method

.method public showIncomingRecordingFragment()V
    .locals 4

    .prologue
    const v3, 0x7f1000d0

    .line 331
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 334
    .local v0, "currentFragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDownloadingFragment;

    if-eqz v1, :cond_0

    .line 348
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 339
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDownloadingFragment;

    invoke-direct {v2}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDownloadingFragment;-><init>()V

    .line 340
    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    .line 341
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 342
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 344
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mIsDownloadingAudio:Z

    .line 346
    const v1, 0x7f08017e

    invoke-direct {p0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setTitle(I)V

    .line 347
    const v1, 0x7f0200e7

    invoke-direct {p0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setTitleIcon(I)V

    goto :goto_0
.end method

.method public showLullabyFragment(Lcom/spiraltoys/cloudpets2/model/Lullaby;)V
    .locals 3
    .param p1, "lullaby"    # Lcom/spiraltoys/cloudpets2/model/Lullaby;

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1000d0

    .line 268
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->newInstance(Lcom/spiraltoys/cloudpets2/model/Lullaby;)Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 269
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mIsDownloadingAudio:Z

    .line 274
    const v0, 0x7f08018a

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setTitle(I)V

    .line 275
    const v0, 0x7f0200d2

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setTitleIcon(I)V

    .line 276
    return-void
.end method

.method public showMessageFragment(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V
    .locals 3
    .param p1, "voiceMessage"    # Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1000d0

    .line 307
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->newInstance(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 308
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mIsDownloadingAudio:Z

    .line 313
    const v0, 0x7f08018b

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setTitle(I)V

    .line 314
    const v0, 0x7f0200e7

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setTitleIcon(I)V

    .line 315
    return-void
.end method

.method public showRecipientSelectorFragment(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 3
    .param p1, "sender"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1000d0

    .line 320
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;->newInstance(Lcom/spiraltoys/cloudpets2/model/Profile;)Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 321
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mIsDownloadingAudio:Z

    .line 326
    const v0, 0x7f0801a5

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setTitle(I)V

    .line 327
    const v0, 0x7f0200e7

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setTitleIcon(I)V

    .line 328
    return-void
.end method

.method public showRecording(Landroid/net/Uri;)V
    .locals 2
    .param p1, "recordedAudioUri"    # Landroid/net/Uri;

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 219
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "arg_recorded_audio_uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 220
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->showRecordingFragment()V

    .line 223
    :cond_0
    return-void
.end method

.method public showStoryFragment(Lcom/spiraltoys/cloudpets2/model/Story;)V
    .locals 3
    .param p1, "story"    # Lcom/spiraltoys/cloudpets2/model/Story;

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1000d0

    .line 294
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;->newInstance(Lcom/spiraltoys/cloudpets2/model/Story;)Lcom/spiraltoys/cloudpets2/fragments/ChildStoryDetailsFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 295
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mIsDownloadingAudio:Z

    .line 300
    const v0, 0x7f0801ad

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setTitle(I)V

    .line 301
    const v0, 0x7f02013b

    invoke-direct {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->setTitleIcon(I)V

    .line 302
    return-void
.end method
