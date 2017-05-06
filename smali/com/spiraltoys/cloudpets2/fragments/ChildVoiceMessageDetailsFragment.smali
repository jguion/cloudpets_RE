.class public Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;
.super Landroid/app/Fragment;
.source "ChildVoiceMessageDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment$OnChildVoiceMessageDetailsFragmentInteractionListener;
    }
.end annotation


# static fields
.field private static final ARG_VOICE_MESSAGE_ID:Ljava/lang/String; = "arg_voice_message_id"


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment$OnChildVoiceMessageDetailsFragmentInteractionListener;

.field private mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 53
    return-void
.end method

.method public static newInstance(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;
    .locals 4
    .param p0, "voiceMessage"    # Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .prologue
    .line 44
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;-><init>()V

    .line 45
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_voice_message_id"

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v1
.end method

.method private setVoiceMessageTitle()V
    .locals 8

    .prologue
    .line 122
    new-instance v3, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/merge_bold.otf"

    invoke-static {v4, v5}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v3, v4}, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    .line 124
    .local v3, "typefaceSpan":Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;
    const v4, 0x7f080106

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "prefixText":Ljava/lang/String;
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getSender()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "sender":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 128
    .local v1, "sBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 129
    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    const/16 v6, 0x21

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 133
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->messageTitle:Landroid/widget/TextView;

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 134
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 101
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment$OnChildVoiceMessageDetailsFragmentInteractionListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment$OnChildVoiceMessageDetailsFragmentInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    return-void

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnChildVoiceMessageDetailsFragmentInteractionListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "arg_voice_message_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getVoiceMessageFromLocalDatastore(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lcom/parse/ParseException;
    invoke-virtual {v0}, Lcom/parse/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 70
    const v4, 0x7f040049

    invoke-static {p1, v4, p2, v10}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;

    iput-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;

    .line 71
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->getRoot()Landroid/view/View;

    move-result-object v4

    invoke-static {p0, v4}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 73
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v4, v5}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->setVoiceMessage(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    .line 74
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;

    new-instance v5, Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-direct {v5, v6, v7}, Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;-><init>(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    invoke-virtual {v4, v5}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->setVoiceMessageDateFormatter(Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;)V

    .line 77
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->pushToToyButtonLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 78
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;

    iget-object v4, v4, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->deleteVoiceMessageButtonLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 81
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getSender()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, " "

    .line 84
    .local v1, "placeholderText":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getSender()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/Profile;->getPortrait()Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;

    move-result-object v3

    .line 85
    .local v3, "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v2

    .line 86
    .local v2, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    if-nez v3, :cond_1

    const/4 v4, 0x0

    .line 87
    :goto_1
    invoke-virtual {v5, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    new-array v5, v8, [Lcom/bumptech/glide/load/Transformation;

    new-instance v6, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;

    .line 88
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f006e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    const/4 v9, -0x1

    invoke-direct {v6, v7, v2, v8, v9}, Lcom/spiraltoys/cloudpets2/util/DoubleBorderCropCircleTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    aput-object v6, v5, v10

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    .line 89
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;->getLargeInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/views/ProfilePlaceholderDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;

    iget-object v5, v5, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->profilePhoto:Landroid/widget/ImageView;

    .line 90
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 92
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->setVoiceMessageTitle()V

    .line 94
    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;

    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->getRoot()Landroid/view/View;

    move-result-object v4

    return-object v4

    .line 82
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

    .line 87
    .restart local v1    # "placeholderText":Ljava/lang/String;
    .restart local v2    # "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .restart local v3    # "profilePortrait":Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
    :cond_1
    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->getFile()Lcom/parse/ParseFile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method onDeleteClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f10008a
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment$OnChildVoiceMessageDetailsFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment$OnChildVoiceMessageDetailsFragmentInteractionListener;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment$OnChildVoiceMessageDetailsFragmentInteractionListener;->onDeleteVoiceMessageClicked(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    .line 119
    :cond_0
    return-void
.end method

.method onPushToToyClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100101
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment$OnChildVoiceMessageDetailsFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment$OnChildVoiceMessageDetailsFragmentInteractionListener;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildVoiceMessageDetailsFragment$OnChildVoiceMessageDetailsFragmentInteractionListener;->onPushToToyClicked(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V

    .line 112
    :cond_0
    return-void
.end method
