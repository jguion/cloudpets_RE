.class public Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;
.super Landroid/app/Fragment;
.source "ChildLullabyDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$OnChildDashboardLullabyInteractionListener;
    }
.end annotation


# static fields
.field private static final ARG_LULLABY:Ljava/lang/String; = "arg_lullaby"

.field private static final LULLABY_LENGTHS_MS:[J

.field private static final LULLABY_VOLUMES:[D


# instance fields
.field private mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

.field private mDurationLabels:[Ljava/lang/String;

.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$OnChildDashboardLullabyInteractionListener;

.field private mLullaby:Lcom/spiraltoys/cloudpets2/model/Lullaby;

.field mSelectedDurationIndex:I
    .annotation build Licepick/State;
    .end annotation
.end field

.field mSelectedVolumeIndex:I
    .annotation build Licepick/State;
    .end annotation
.end field

.field private mVolumeLabels:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->LULLABY_LENGTHS_MS:[J

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    sput-object v0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->LULLABY_VOLUMES:[D

    return-void

    .line 30
    nop

    :array_0
    .array-data 8
        0x493e0
        0x75300
        0x927c0
        0xafc80
        0xdbba0
    .end array-data

    .line 31
    :array_1
    .array-data 8
        0x3fa999999999999aL    # 0.05
        0x3fe0000000000000L    # 0.5
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/spiraltoys/cloudpets2/model/Lullaby;)Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;
    .locals 3
    .param p0, "lullaby"    # Lcom/spiraltoys/cloudpets2/model/Lullaby;

    .prologue
    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "arg_lullaby"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 48
    new-instance v1, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;

    invoke-direct {v1}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;-><init>()V

    .line 49
    .local v1, "fragment":Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;
    invoke-virtual {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-object v1
.end method

.method private updateButtonStates()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->updateDurationButtonStates()V

    .line 147
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->updateVolumeButtonStates()V

    .line 148
    return-void
.end method

.method private updateDurationButtonStates()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    iget v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedDurationIndex:I

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mDurationLabels:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->increaseDurationButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 157
    :goto_0
    iget v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedDurationIndex:I

    if-gtz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->reduceDurationButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 162
    :goto_1
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->increaseDurationButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->reduceDurationButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateVolumeButtonStates()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    iget v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedVolumeIndex:I

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mVolumeLabels:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->increaseVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 171
    :goto_0
    iget v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedVolumeIndex:I

    if-gtz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->reduceVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 176
    :goto_1
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->increaseVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->reduceVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 182
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$OnChildDashboardLullabyInteractionListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$OnChildDashboardLullabyInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    return-void

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnChildDashboardLullabyInteractionListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-static {p0, p1}, Licepick/Icepick;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mVolumeLabels:[Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mDurationLabels:[Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_lullaby"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/Lullaby;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mLullaby:Lcom/spiraltoys/cloudpets2/model/Lullaby;

    .line 64
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x0

    .line 72
    const v0, 0x7f040044

    invoke-static {p1, v0, p2, v6}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    .line 73
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mLullaby:Lcom/spiraltoys/cloudpets2/model/Lullaby;

    invoke-virtual {v0, v4}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->setLullaby(Lcom/spiraltoys/cloudpets2/model/Lullaby;)V

    .line 74
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->volumeLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mVolumeLabels:[Ljava/lang/String;

    iget v5, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedVolumeIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->durationLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mDurationLabels:[Ljava/lang/String;

    iget v5, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedDurationIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->updateButtonStates()V

    .line 81
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 82
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v2

    .line 83
    .local v2, "pool":Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v4, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mLullaby:Lcom/spiraltoys/cloudpets2/model/Lullaby;

    .line 84
    invoke-virtual {v4}, Lcom/spiraltoys/cloudpets2/model/Lullaby;->getImageResourceId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v7

    const/4 v0, 0x1

    new-array v8, v0, [Lcom/bumptech/glide/load/Transformation;

    new-instance v0, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;

    .line 85
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0068

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v5, v4

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/spiraltoys/cloudpets2/util/RoundedRectTransformation;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IIFZ)V

    aput-object v0, v8, v6

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/DrawableTypeRequest;->bitmapTransform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    iget-object v3, v3, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->lullabyImage:Landroid/widget/ImageView;

    .line 86
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 88
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method onIncreaseDurationClicked()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000f4
        }
    .end annotation

    .prologue
    .line 107
    iget v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedDurationIndex:I

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mDurationLabels:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->durationLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mDurationLabels:[Ljava/lang/String;

    iget v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedDurationIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedDurationIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->updateDurationButtonStates()V

    goto :goto_0
.end method

.method onIncreaseVolumeClicked()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000f7
        }
    .end annotation

    .prologue
    .line 127
    iget v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedVolumeIndex:I

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mVolumeLabels:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->volumeLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mVolumeLabels:[Ljava/lang/String;

    iget v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedVolumeIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedVolumeIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->updateVolumeButtonStates()V

    goto :goto_0
.end method

.method onReduceDurationClicked()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000f2
        }
    .end annotation

    .prologue
    .line 117
    iget v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedDurationIndex:I

    if-gtz v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->durationLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mDurationLabels:[Ljava/lang/String;

    iget v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedDurationIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedDurationIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->updateDurationButtonStates()V

    goto :goto_0
.end method

.method onReduceVolumeClicked()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000f5
        }
    .end annotation

    .prologue
    .line 137
    iget v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedVolumeIndex:I

    if-gtz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mBinding:Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->volumeLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mVolumeLabels:[Ljava/lang/String;

    iget v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedVolumeIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedVolumeIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->updateVolumeButtonStates()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    invoke-static {p0, p1}, Licepick/Icepick;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method onSendToToyClicked()V
    .locals 6
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1000f8
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$OnChildDashboardLullabyInteractionListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$OnChildDashboardLullabyInteractionListener;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mLullaby:Lcom/spiraltoys/cloudpets2/model/Lullaby;

    sget-object v2, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->LULLABY_VOLUMES:[D

    iget v3, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedVolumeIndex:I

    aget-wide v2, v2, v3

    sget-object v4, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->LULLABY_LENGTHS_MS:[J

    iget v5, p0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedDurationIndex:I

    aget-wide v4, v4, v5

    invoke-interface/range {v0 .. v5}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$OnChildDashboardLullabyInteractionListener;->onSendLullabyToToySelected(Lcom/spiraltoys/cloudpets2/model/Lullaby;DJ)V

    .line 102
    :cond_0
    return-void
.end method
