.class public Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;
.super Landroid/app/Fragment;
.source "VoiceMessagePlayerFragment.java"


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;

.field private mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    return-void
.end method

.method public static newInstance(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;
    .locals 2
    .param p0, "voiceMessage"    # Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .prologue
    .line 44
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/spiraltoys/cloudpets2/events/VoiceMessageSelectedForPlaybackEvent;

    invoke-direct {v1, p0}, Lcom/spiraltoys/cloudpets2/events/VoiceMessageSelectedForPlaybackEvent;-><init>(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 45
    new-instance v0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;-><init>()V

    return-object v0
.end method

.method private setAdultVoiceMessageTitle()V
    .locals 5

    .prologue
    .line 115
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->messageTitle:Landroid/widget/TextView;

    const v1, 0x7f080106

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getSender()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method private setChildVoiceMessageTitle()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 119
    new-instance v3, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/merge_bold.otf"

    invoke-static {v4, v5}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v3, v4}, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    .line 121
    .local v3, "typefaceSpan":Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;
    const v4, 0x7f080102

    new-array v5, v7, [Ljava/lang/Object;

    const-string v6, ""

    aput-object v6, v5, v9

    invoke-virtual {p0, v4, v5}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "prefixText":Ljava/lang/String;
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getRecipient()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "recipient":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 125
    .local v2, "sBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 126
    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f080070

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .line 127
    invoke-virtual {v8}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getSender()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 131
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->messageTitle:Landroid/widget/TextView;

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 132
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 53
    const v4, 0x7f04005f

    invoke-static {p1, v4, p2, v10}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;

    iput-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;

    .line 55
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v4

    const-class v5, Lcom/spiraltoys/cloudpets2/events/VoiceMessageSelectedForPlaybackEvent;

    invoke-virtual {v4, v5}, Lde/greenrobot/event/EventBus;->getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/spiraltoys/cloudpets2/events/VoiceMessageSelectedForPlaybackEvent;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/events/VoiceMessageSelectedForPlaybackEvent;->getVoiceMessage()Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    move-result-object v4

    iput-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .line 56
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v4, v5}, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->setVoiceMessage(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    .line 57
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;

    new-instance v5, Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-direct {v5, v6, v7}, Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;-><init>(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    invoke-virtual {v4, v5}, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->setVoiceMessageDateFormatter(Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;)V

    .line 58
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->isParentalControlEnabled(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->setIsParentalControlEnabled(Z)V

    .line 60
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getRecipient()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPrivateProfile()Lcom/spiraltoys/cloudpets2/model/PrivateProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/PrivateProfile;->isAdult()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->setAdultVoiceMessageTitle()V

    .line 62
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getSender()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 63
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->messageForMeCharacterImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getSender()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPlushToy()Lcom/spiraltoys/cloudpets2/model/PlushToy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getCharacter()Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    move-result-object v5

    invoke-static {v5}, Lcom/spiraltoys/cloudpets2/model/PlushToy;->getMessageForMeAvatarResourceForCharacter(Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getSender()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, " "

    .line 74
    .local v1, "placeholderText":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getSender()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPortrait()Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    move-result-object v3

    .line 75
    .local v3, "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v2

    .line 76
    .local v2, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    if-nez v3, :cond_3

    const/4 v4, 0x0

    .line 77
    :goto_2
    invoke-virtual {v5, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/bumptech/glide/load/Transformation;

    new-instance v6, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;

    .line 78
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f006e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    const/4 v9, -0x1

    invoke-direct {v6, v7, v2, v8, v9}, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    aput-object v6, v5, v10

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    .line 79
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->getLargeInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;

    iget-object v5, v5, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->profilePhoto:Landroid/widget/ImageView;

    .line 80
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 82
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 83
    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f1000e3

    iget-object v6, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .line 84
    invoke-virtual {v6}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getFile()Lcom/parse/ParseFile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;->newInstance(Landroid/net/Uri;Z)Lcom/spiraltoys/cloudpets2/fragments/AudioPlayerFragment;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 85
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 87
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->getRoot()Landroid/view/View;

    move-result-object v4

    return-object v4

    .line 66
    .end local v0    # "displayName":Ljava/lang/String;
    .end local v1    # "placeholderText":Ljava/lang/String;
    .end local v2    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .end local v3    # "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :cond_1
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->messageForMeCharacterImage:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->setChildVoiceMessageTitle()V

    goto/16 :goto_0

    .line 72
    .restart local v0    # "displayName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 77
    .restart local v1    # "placeholderText":Ljava/lang/String;
    .restart local v2    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .restart local v3    # "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :cond_3
    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->getFile()Lcom/parse/ParseFile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 99
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 100
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/VoiceMessagePlaybackCompletedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/VoiceMessagePlaybackCompletedEvent;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->playbackRippleEffect:Lcom/spiraltoys/cloudpets2/views/RippleView;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/views/RippleView;->stopRippleAnimation()V

    .line 112
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/VoiceMessagePlaybackPausedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/VoiceMessagePlaybackPausedEvent;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->playbackRippleEffect:Lcom/spiraltoys/cloudpets2/views/RippleView;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/views/RippleView;->stopRippleAnimation()V

    .line 108
    return-void
.end method

.method public onEvent(Lcom/spiraltoys/cloudpets2/events/VoiceMessagePlaybackStartedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/spiraltoys/cloudpets2/events/VoiceMessagePlaybackStartedEvent;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagePlayerFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->playbackRippleEffect:Lcom/spiraltoys/cloudpets2/views/RippleView;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/views/RippleView;->startRippleAnimation()V

    .line 104
    return-void
.end method
