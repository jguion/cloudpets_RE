.class public abstract Landroid/databinding/ViewDataBinding;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/ViewDataBinding$IncludedLayouts;,
        Landroid/databinding/ViewDataBinding$CreateWeakListener;,
        Landroid/databinding/ViewDataBinding$WeakMapListener;,
        Landroid/databinding/ViewDataBinding$WeakListListener;,
        Landroid/databinding/ViewDataBinding$WeakPropertyListener;,
        Landroid/databinding/ViewDataBinding$WeakListener;,
        Landroid/databinding/ViewDataBinding$ObservableReference;
    }
.end annotation


# static fields
.field private static final BINDING_NUMBER_START:I

.field public static final BINDING_TAG_PREFIX:Ljava/lang/String; = "binding_"

.field private static final CREATE_LIST_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

.field private static final CREATE_MAP_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

.field private static final CREATE_PROPERTY_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

.field private static final HALTED:I = 0x2

.field private static final REBIND:I = 0x1

.field private static final REBIND_NOTIFIER:Landroid/databinding/CallbackRegistry$NotifierCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/CallbackRegistry$NotifierCallback",
            "<",
            "Landroid/databinding/OnRebindCallback;",
            "Landroid/databinding/ViewDataBinding;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final REBOUND:I = 0x3

.field private static final ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

.field static SDK_INT:I

.field private static final USE_CHOREOGRAPHER:Z

.field private static final USE_TAG_ID:Z


# instance fields
.field private mChoreographer:Landroid/view/Choreographer;

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mIsExecutingPendingBindings:Z

.field private mLocalFieldObservers:[Landroid/databinding/ViewDataBinding$WeakListener;

.field private mPendingRebind:Z

.field private mRebindCallbacks:Landroid/databinding/CallbackRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/CallbackRegistry",
            "<",
            "Landroid/databinding/OnRebindCallback;",
            "Landroid/databinding/ViewDataBinding;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mRebindHalted:Z

.field private final mRebindRunnable:Ljava/lang/Runnable;

.field private final mRoot:Landroid/view/View;

.field private mUIThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/databinding/ViewDataBinding;->SDK_INT:I

    .line 55
    const-string v0, "binding_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/databinding/ViewDataBinding;->BINDING_NUMBER_START:I

    .line 58
    sget v0, Landroid/databinding/DataBinderMapper;->TARGET_MIN_SDK:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/databinding/ViewDataBinding;->USE_TAG_ID:Z

    .line 60
    sget v0, Landroid/databinding/ViewDataBinding;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Landroid/databinding/ViewDataBinding;->USE_CHOREOGRAPHER:Z

    .line 65
    new-instance v0, Landroid/databinding/ViewDataBinding$1;

    invoke-direct {v0}, Landroid/databinding/ViewDataBinding$1;-><init>()V

    sput-object v0, Landroid/databinding/ViewDataBinding;->CREATE_PROPERTY_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

    .line 75
    new-instance v0, Landroid/databinding/ViewDataBinding$2;

    invoke-direct {v0}, Landroid/databinding/ViewDataBinding$2;-><init>()V

    sput-object v0, Landroid/databinding/ViewDataBinding;->CREATE_LIST_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

    .line 85
    new-instance v0, Landroid/databinding/ViewDataBinding$3;

    invoke-direct {v0}, Landroid/databinding/ViewDataBinding$3;-><init>()V

    sput-object v0, Landroid/databinding/ViewDataBinding;->CREATE_MAP_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

    .line 93
    new-instance v0, Landroid/databinding/ViewDataBinding$4;

    invoke-direct {v0}, Landroid/databinding/ViewDataBinding$4;-><init>()V

    sput-object v0, Landroid/databinding/ViewDataBinding;->REBIND_NOTIFIER:Landroid/databinding/CallbackRegistry$NotifierCallback;

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_2

    .line 117
    const/4 v0, 0x0

    sput-object v0, Landroid/databinding/ViewDataBinding;->ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

    .line 134
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 58
    goto :goto_0

    :cond_1
    move v1, v2

    .line 60
    goto :goto_1

    .line 119
    :cond_2
    new-instance v0, Landroid/databinding/ViewDataBinding$5;

    invoke-direct {v0}, Landroid/databinding/ViewDataBinding$5;-><init>()V

    sput-object v0, Landroid/databinding/ViewDataBinding;->ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

    goto :goto_2
.end method

.method protected constructor <init>(Landroid/view/View;I)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "localFieldCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Landroid/databinding/ViewDataBinding$6;

    invoke-direct {v0, p0}, Landroid/databinding/ViewDataBinding$6;-><init>(Landroid/databinding/ViewDataBinding;)V

    iput-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindRunnable:Ljava/lang/Runnable;

    .line 162
    iput-boolean v1, p0, Landroid/databinding/ViewDataBinding;->mPendingRebind:Z

    .line 167
    iput-boolean v1, p0, Landroid/databinding/ViewDataBinding;->mRebindHalted:Z

    .line 198
    new-array v0, p2, [Landroid/databinding/ViewDataBinding$WeakListener;

    iput-object v0, p0, Landroid/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroid/databinding/ViewDataBinding$WeakListener;

    .line 199
    iput-object p1, p0, Landroid/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    .line 200
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DataBinding must be created in view\'s UI Thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    sget-boolean v0, Landroid/databinding/ViewDataBinding;->USE_CHOREOGRAPHER:Z

    if-eqz v0, :cond_1

    .line 204
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/databinding/ViewDataBinding;->mChoreographer:Landroid/view/Choreographer;

    .line 205
    new-instance v0, Landroid/databinding/ViewDataBinding$7;

    invoke-direct {v0, p0}, Landroid/databinding/ViewDataBinding$7;-><init>(Landroid/databinding/ViewDataBinding;)V

    iput-object v0, p0, Landroid/databinding/ViewDataBinding;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/databinding/ViewDataBinding;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 213
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/databinding/ViewDataBinding;->mUIThreadHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$002(Landroid/databinding/ViewDataBinding;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/databinding/ViewDataBinding;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Landroid/databinding/ViewDataBinding;->mRebindHalted:Z

    return p1
.end method

.method static synthetic access$100(Landroid/databinding/ViewDataBinding;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/databinding/ViewDataBinding;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$202(Landroid/databinding/ViewDataBinding;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/databinding/ViewDataBinding;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Landroid/databinding/ViewDataBinding;->mPendingRebind:Z

    return p1
.end method

.method static synthetic access$300(Landroid/databinding/ViewDataBinding;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/databinding/ViewDataBinding;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400()Landroid/view/View$OnAttachStateChangeListener;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Landroid/databinding/ViewDataBinding;->ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/databinding/ViewDataBinding;ILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Landroid/databinding/ViewDataBinding;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/databinding/ViewDataBinding;->handleFieldChange(ILjava/lang/Object;I)V

    return-void
.end method

.method protected static bind(Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "layoutId"    # I

    .prologue
    .line 461
    invoke-static {p0, p1}, Landroid/databinding/DataBindingUtil;->bind(Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    return-object v0
.end method

.method private static findIncludeIndex(Ljava/lang/String;ILandroid/databinding/ViewDataBinding$IncludedLayouts;I)I
    .locals 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "minInclude"    # I
    .param p2, "included"    # Landroid/databinding/ViewDataBinding$IncludedLayouts;
    .param p3, "includedIndex"    # I

    .prologue
    .line 592
    const/16 v6, 0x2f

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 593
    .local v5, "slashIndex":I
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 595
    .local v2, "layoutName":Ljava/lang/CharSequence;
    iget-object v6, p2, Landroid/databinding/ViewDataBinding$IncludedLayouts;->layouts:[[Ljava/lang/String;

    aget-object v3, v6, p3

    .line 596
    .local v3, "layouts":[Ljava/lang/String;
    array-length v4, v3

    .line 597
    .local v4, "length":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 598
    aget-object v1, v3, v0

    .line 599
    .local v1, "layout":Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 603
    .end local v0    # "i":I
    .end local v1    # "layout":Ljava/lang/String;
    :goto_1
    return v0

    .line 597
    .restart local v0    # "i":I
    .restart local v1    # "layout":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 603
    .end local v1    # "layout":Ljava/lang/String;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static findLastMatching(Landroid/view/ViewGroup;I)I
    .locals 11
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "firstIncludedIndex"    # I

    .prologue
    .line 607
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 608
    .local v1, "firstView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 609
    .local v2, "firstViewTag":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 610
    .local v6, "tagBase":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 612
    .local v7, "tagSequenceIndex":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 613
    .local v0, "count":I
    move v4, p1

    .line 614
    .local v4, "max":I
    add-int/lit8 v3, p1, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 615
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 616
    .local v8, "view":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 617
    .local v5, "tag":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 618
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v9, v10, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-ne v9, v10, :cond_1

    .line 626
    .end local v5    # "tag":Ljava/lang/String;
    .end local v8    # "view":Landroid/view/View;
    :cond_0
    return v4

    .line 621
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v8    # "view":Landroid/view/View;
    :cond_1
    invoke-static {v5, v7}, Landroid/databinding/ViewDataBinding;->isNumeric(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 622
    move v4, v3

    .line 614
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static getBinding(Landroid/view/View;)Landroid/databinding/ViewDataBinding;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 358
    if-eqz p0, :cond_1

    .line 359
    sget-boolean v1, Landroid/databinding/ViewDataBinding;->USE_TAG_ID:Z

    if-eqz v1, :cond_0

    .line 360
    sget v1, Lcom/android/databinding/library/R$id;->dataBinding:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/databinding/ViewDataBinding;

    .line 368
    :goto_0
    return-object v1

    .line 362
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 363
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Landroid/databinding/ViewDataBinding;

    if-eqz v1, :cond_1

    .line 364
    check-cast v0, Landroid/databinding/ViewDataBinding;

    .end local v0    # "tag":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0

    .line 368
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getBuildSdkInt()I
    .locals 1

    .prologue
    .line 238
    sget v0, Landroid/databinding/ViewDataBinding;->SDK_INT:I

    return v0
.end method

.method private handleFieldChange(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "mLocalFieldId"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldId"    # I

    .prologue
    .line 380
    invoke-virtual {p0, p1, p2, p3}, Landroid/databinding/ViewDataBinding;->onFieldChange(ILjava/lang/Object;I)Z

    move-result v0

    .line 381
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 384
    :cond_0
    return-void
.end method

.method private static isNumeric(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "startIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 630
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 631
    .local v1, "length":I
    if-ne v1, p1, :cond_1

    .line 639
    :cond_0
    :goto_0
    return v2

    .line 634
    :cond_1
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 635
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 634
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 639
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static mapBindings(Landroid/view/View;[Ljava/lang/Object;Landroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V
    .locals 26
    .param p0, "view"    # Landroid/view/View;
    .param p1, "bindings"    # [Ljava/lang/Object;
    .param p2, "includes"    # Landroid/databinding/ViewDataBinding$IncludedLayouts;
    .param p3, "viewsWithIds"    # Landroid/util/SparseIntArray;
    .param p4, "isRoot"    # Z

    .prologue
    .line 509
    invoke-static/range {p0 .. p0}, Landroid/databinding/ViewDataBinding;->getBinding(Landroid/view/View;)Landroid/databinding/ViewDataBinding;

    move-result-object v7

    .line 510
    .local v7, "existingBinding":Landroid/databinding/ViewDataBinding;
    if-eqz v7, :cond_1

    .line 588
    :cond_0
    return-void

    .line 513
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 514
    .local v21, "tag":Ljava/lang/String;
    const/4 v15, 0x0

    .line 515
    .local v15, "isBound":Z
    if-eqz p4, :cond_8

    if-eqz v21, :cond_8

    const-string v25, "layout"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 516
    const/16 v25, 0x5f

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v23

    .line 517
    .local v23, "underscoreIndex":I
    if-lez v23, :cond_7

    add-int/lit8 v25, v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/databinding/ViewDataBinding;->isNumeric(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 518
    add-int/lit8 v25, v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/databinding/ViewDataBinding;->parseTagInt(Ljava/lang/String;I)I

    move-result v13

    .line 519
    .local v13, "index":I
    aget-object v25, p1, v13

    if-nez v25, :cond_2

    .line 520
    aput-object p0, p1, v13

    .line 522
    :cond_2
    if-nez p2, :cond_6

    const/4 v14, -0x1

    .line 523
    .local v14, "indexInIncludes":I
    :goto_0
    const/4 v15, 0x1

    .line 538
    .end local v13    # "index":I
    .end local v23    # "underscoreIndex":I
    :goto_1
    if-nez v15, :cond_3

    .line 539
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v9

    .line 540
    .local v9, "id":I
    if-lez v9, :cond_3

    .line 542
    if-eqz p3, :cond_3

    const/16 v25, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .restart local v13    # "index":I
    if-ltz v13, :cond_3

    aget-object v25, p1, v13

    if-nez v25, :cond_3

    .line 544
    aput-object p0, p1, v13

    .line 549
    .end local v9    # "id":I
    .end local v13    # "index":I
    :cond_3
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v24, p0

    .line 550
    check-cast v24, Landroid/view/ViewGroup;

    .line 551
    .local v24, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 552
    .local v6, "count":I
    const/16 v20, 0x0

    .line 553
    .local v20, "minInclude":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v6, :cond_0

    .line 554
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 555
    .local v4, "child":Landroid/view/View;
    const/16 v16, 0x0

    .line 556
    .local v16, "isInclude":Z
    if-ltz v14, :cond_4

    .line 557
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 558
    .local v5, "childTag":Ljava/lang/String;
    if-eqz v5, :cond_4

    const-string v25, "_0"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_4

    const-string v25, "layout"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_4

    const/16 v25, 0x2f

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v25

    if-lez v25, :cond_4

    .line 561
    move/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v5, v0, v1, v14}, Landroid/databinding/ViewDataBinding;->findIncludeIndex(Ljava/lang/String;ILandroid/databinding/ViewDataBinding$IncludedLayouts;I)I

    move-result v11

    .line 563
    .local v11, "includeIndex":I
    if-ltz v11, :cond_4

    .line 564
    const/16 v16, 0x1

    .line 565
    add-int/lit8 v20, v11, 0x1

    .line 566
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;->indexes:[[I

    move-object/from16 v25, v0

    aget-object v25, v25, v14

    aget v13, v25, v11

    .line 567
    .restart local v13    # "index":I
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;->layoutIds:[[I

    move-object/from16 v25, v0

    aget-object v25, v25, v14

    aget v19, v25, v11

    .line 568
    .local v19, "layoutId":I
    move-object/from16 v0, v24

    invoke-static {v0, v8}, Landroid/databinding/ViewDataBinding;->findLastMatching(Landroid/view/ViewGroup;I)I

    move-result v18

    .line 569
    .local v18, "lastMatchingIndex":I
    move/from16 v0, v18

    if-ne v0, v8, :cond_c

    .line 570
    move/from16 v0, v19

    invoke-static {v4, v0}, Landroid/databinding/DataBindingUtil;->bind(Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object v25

    aput-object v25, p1, v13

    .line 583
    .end local v5    # "childTag":Ljava/lang/String;
    .end local v11    # "includeIndex":I
    .end local v13    # "index":I
    .end local v18    # "lastMatchingIndex":I
    .end local v19    # "layoutId":I
    :cond_4
    :goto_3
    if-nez v16, :cond_5

    .line 584
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v25

    invoke-static {v4, v0, v1, v2, v3}, Landroid/databinding/ViewDataBinding;->mapBindings(Landroid/view/View;[Ljava/lang/Object;Landroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V

    .line 553
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v8    # "i":I
    .end local v14    # "indexInIncludes":I
    .end local v16    # "isInclude":Z
    .end local v20    # "minInclude":I
    .end local v24    # "viewGroup":Landroid/view/ViewGroup;
    .restart local v13    # "index":I
    .restart local v23    # "underscoreIndex":I
    :cond_6
    move v14, v13

    .line 522
    goto/16 :goto_0

    .line 525
    .end local v13    # "index":I
    :cond_7
    const/4 v14, -0x1

    .restart local v14    # "indexInIncludes":I
    goto/16 :goto_1

    .line 527
    .end local v14    # "indexInIncludes":I
    .end local v23    # "underscoreIndex":I
    :cond_8
    if-eqz v21, :cond_b

    const-string v25, "binding_"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 528
    sget v25, Landroid/databinding/ViewDataBinding;->BINDING_NUMBER_START:I

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/databinding/ViewDataBinding;->parseTagInt(Ljava/lang/String;I)I

    move-result v22

    .line 529
    .local v22, "tagIndex":I
    aget-object v25, p1, v22

    if-nez v25, :cond_9

    .line 530
    aput-object p0, p1, v22

    .line 532
    :cond_9
    const/4 v15, 0x1

    .line 533
    if-nez p2, :cond_a

    const/4 v14, -0x1

    .line 534
    .restart local v14    # "indexInIncludes":I
    :goto_4
    goto/16 :goto_1

    .end local v14    # "indexInIncludes":I
    :cond_a
    move/from16 v14, v22

    .line 533
    goto :goto_4

    .line 536
    .end local v22    # "tagIndex":I
    :cond_b
    const/4 v14, -0x1

    .restart local v14    # "indexInIncludes":I
    goto/16 :goto_1

    .line 572
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "childTag":Ljava/lang/String;
    .restart local v6    # "count":I
    .restart local v8    # "i":I
    .restart local v11    # "includeIndex":I
    .restart local v13    # "index":I
    .restart local v16    # "isInclude":Z
    .restart local v18    # "lastMatchingIndex":I
    .restart local v19    # "layoutId":I
    .restart local v20    # "minInclude":I
    .restart local v24    # "viewGroup":Landroid/view/ViewGroup;
    :cond_c
    sub-int v25, v18, v8

    add-int/lit8 v10, v25, 0x1

    .line 573
    .local v10, "includeCount":I
    new-array v12, v10, [Landroid/view/View;

    .line 574
    .local v12, "included":[Landroid/view/View;
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_5
    move/from16 v0, v17

    if-ge v0, v10, :cond_d

    .line 575
    add-int v25, v8, v17

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    aput-object v25, v12, v17

    .line 574
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 577
    :cond_d
    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/databinding/DataBindingUtil;->bind([Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object v25

    aput-object v25, p1, v13

    .line 578
    add-int/lit8 v25, v10, -0x1

    add-int v8, v8, v25

    goto :goto_3
.end method

.method protected static mapBindings(Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    .locals 2
    .param p0, "root"    # Landroid/view/View;
    .param p1, "numBindings"    # I
    .param p2, "includes"    # Landroid/databinding/ViewDataBinding$IncludedLayouts;
    .param p3, "viewsWithIds"    # Landroid/util/SparseIntArray;

    .prologue
    .line 479
    new-array v0, p1, [Ljava/lang/Object;

    .line 480
    .local v0, "bindings":[Ljava/lang/Object;
    const/4 v1, 0x1

    invoke-static {p0, v0, p2, p3, v1}, Landroid/databinding/ViewDataBinding;->mapBindings(Landroid/view/View;[Ljava/lang/Object;Landroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V

    .line 481
    return-object v0
.end method

.method protected static mapBindings([Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    .locals 4
    .param p0, "roots"    # [Landroid/view/View;
    .param p1, "numBindings"    # I
    .param p2, "includes"    # Landroid/databinding/ViewDataBinding$IncludedLayouts;
    .param p3, "viewsWithIds"    # Landroid/util/SparseIntArray;

    .prologue
    .line 499
    new-array v0, p1, [Ljava/lang/Object;

    .line 500
    .local v0, "bindings":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 501
    aget-object v2, p0, v1

    const/4 v3, 0x1

    invoke-static {v2, v0, p2, p3, v3}, Landroid/databinding/ViewDataBinding;->mapBindings(Landroid/view/View;[Ljava/lang/Object;Landroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    :cond_0
    return-object v0
.end method

.method private static parseTagInt(Ljava/lang/String;I)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "startIndex"    # I

    .prologue
    .line 649
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 650
    .local v1, "end":I
    const/4 v3, 0x0

    .line 651
    .local v3, "val":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 652
    mul-int/lit8 v3, v3, 0xa

    .line 653
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 654
    .local v0, "c":C
    add-int/lit8 v4, v0, -0x30

    add-int/2addr v3, v4

    .line 651
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 656
    .end local v0    # "c":C
    :cond_0
    return v3
.end method

.method private updateRegistration(ILjava/lang/Object;Landroid/databinding/ViewDataBinding$CreateWeakListener;)Z
    .locals 3
    .param p1, "localFieldId"    # I
    .param p2, "observable"    # Ljava/lang/Object;
    .param p3, "listenerCreator"    # Landroid/databinding/ViewDataBinding$CreateWeakListener;

    .prologue
    const/4 v1, 0x1

    .line 419
    if-nez p2, :cond_0

    .line 420
    invoke-virtual {p0, p1}, Landroid/databinding/ViewDataBinding;->unregisterFrom(I)Z

    move-result v1

    .line 432
    :goto_0
    return v1

    .line 422
    :cond_0
    iget-object v2, p0, Landroid/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroid/databinding/ViewDataBinding$WeakListener;

    aget-object v0, v2, p1

    .line 423
    .local v0, "listener":Landroid/databinding/ViewDataBinding$WeakListener;
    if-nez v0, :cond_1

    .line 424
    invoke-virtual {p0, p1, p2, p3}, Landroid/databinding/ViewDataBinding;->registerTo(ILjava/lang/Object;Landroid/databinding/ViewDataBinding$CreateWeakListener;)V

    goto :goto_0

    .line 427
    :cond_1
    invoke-virtual {v0}, Landroid/databinding/ViewDataBinding$WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_2

    .line 428
    const/4 v1, 0x0

    goto :goto_0

    .line 430
    :cond_2
    invoke-virtual {p0, p1}, Landroid/databinding/ViewDataBinding;->unregisterFrom(I)Z

    .line 431
    invoke-virtual {p0, p1, p2, p3}, Landroid/databinding/ViewDataBinding;->registerTo(ILjava/lang/Object;Landroid/databinding/ViewDataBinding$CreateWeakListener;)V

    goto :goto_0
.end method


# virtual methods
.method public addOnRebindCallback(Landroid/databinding/OnRebindCallback;)V
    .locals 2
    .param p1, "listener"    # Landroid/databinding/OnRebindCallback;

    .prologue
    .line 275
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindCallbacks:Landroid/databinding/CallbackRegistry;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Landroid/databinding/CallbackRegistry;

    sget-object v1, Landroid/databinding/ViewDataBinding;->REBIND_NOTIFIER:Landroid/databinding/CallbackRegistry$NotifierCallback;

    invoke-direct {v0, v1}, Landroid/databinding/CallbackRegistry;-><init>(Landroid/databinding/CallbackRegistry$NotifierCallback;)V

    iput-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindCallbacks:Landroid/databinding/CallbackRegistry;

    .line 278
    :cond_0
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindCallbacks:Landroid/databinding/CallbackRegistry;

    invoke-virtual {v0, p1}, Landroid/databinding/CallbackRegistry;->add(Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method protected abstract executeBindings()V
.end method

.method public executePendingBindings()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 297
    iget-boolean v0, p0, Landroid/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iput-boolean v1, p0, Landroid/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    .line 305
    iput-boolean v3, p0, Landroid/databinding/ViewDataBinding;->mRebindHalted:Z

    .line 306
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindCallbacks:Landroid/databinding/CallbackRegistry;

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindCallbacks:Landroid/databinding/CallbackRegistry;

    invoke-virtual {v0, p0, v1, v2}, Landroid/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 310
    iget-boolean v0, p0, Landroid/databinding/ViewDataBinding;->mRebindHalted:Z

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindCallbacks:Landroid/databinding/CallbackRegistry;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 314
    :cond_2
    iget-boolean v0, p0, Landroid/databinding/ViewDataBinding;->mRebindHalted:Z

    if-nez v0, :cond_3

    .line 315
    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding;->executeBindings()V

    .line 316
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindCallbacks:Landroid/databinding/CallbackRegistry;

    if-eqz v0, :cond_3

    .line 317
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindCallbacks:Landroid/databinding/CallbackRegistry;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 320
    :cond_3
    iput-boolean v3, p0, Landroid/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding;->unbind()V

    .line 355
    return-void
.end method

.method forceExecuteBindings()V
    .locals 0

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/databinding/ViewDataBinding;->executeBindings()V

    .line 325
    return-void
.end method

.method protected getObservedField(I)Ljava/lang/Object;
    .locals 2
    .param p1, "localFieldId"    # I

    .prologue
    .line 410
    iget-object v1, p0, Landroid/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroid/databinding/ViewDataBinding$WeakListener;

    aget-object v0, v1, p1

    .line 411
    .local v0, "listener":Landroid/databinding/ViewDataBinding$WeakListener;
    if-nez v0, :cond_0

    .line 412
    const/4 v1, 0x0

    .line 414
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/databinding/ViewDataBinding$WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public abstract hasPendingBindings()Z
.end method

.method public abstract invalidateAll()V
.end method

.method protected abstract onFieldChange(ILjava/lang/Object;I)Z
.end method

.method protected registerTo(ILjava/lang/Object;Landroid/databinding/ViewDataBinding$CreateWeakListener;)V
    .locals 2
    .param p1, "localFieldId"    # I
    .param p2, "observable"    # Ljava/lang/Object;
    .param p3, "listenerCreator"    # Landroid/databinding/ViewDataBinding$CreateWeakListener;

    .prologue
    .line 449
    if-nez p2, :cond_0

    .line 458
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v1, p0, Landroid/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroid/databinding/ViewDataBinding$WeakListener;

    aget-object v0, v1, p1

    .line 453
    .local v0, "listener":Landroid/databinding/ViewDataBinding$WeakListener;
    if-nez v0, :cond_1

    .line 454
    invoke-interface {p3, p0, p1}, Landroid/databinding/ViewDataBinding$CreateWeakListener;->create(Landroid/databinding/ViewDataBinding;I)Landroid/databinding/ViewDataBinding$WeakListener;

    move-result-object v0

    .line 455
    iget-object v1, p0, Landroid/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroid/databinding/ViewDataBinding$WeakListener;

    aput-object v0, v1, p1

    .line 457
    :cond_1
    invoke-virtual {v0, p2}, Landroid/databinding/ViewDataBinding$WeakListener;->setTarget(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeOnRebindCallback(Landroid/databinding/OnRebindCallback;)V
    .locals 1
    .param p1, "listener"    # Landroid/databinding/OnRebindCallback;

    .prologue
    .line 287
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindCallbacks:Landroid/databinding/CallbackRegistry;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mRebindCallbacks:Landroid/databinding/CallbackRegistry;

    invoke-virtual {v0, p1}, Landroid/databinding/CallbackRegistry;->remove(Ljava/lang/Object;)V

    .line 290
    :cond_0
    return-void
.end method

.method protected requestRebind()V
    .locals 2

    .prologue
    .line 395
    monitor-enter p0

    .line 396
    :try_start_0
    iget-boolean v0, p0, Landroid/databinding/ViewDataBinding;->mPendingRebind:Z

    if-eqz v0, :cond_0

    .line 397
    monitor-exit p0

    .line 407
    :goto_0
    return-void

    .line 399
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/databinding/ViewDataBinding;->mPendingRebind:Z

    .line 400
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    sget-boolean v0, Landroid/databinding/ViewDataBinding;->USE_CHOREOGRAPHER:Z

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/databinding/ViewDataBinding;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 404
    :cond_1
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mUIThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/databinding/ViewDataBinding;->mRebindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected setRootTag(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 218
    sget-boolean v0, Landroid/databinding/ViewDataBinding;->USE_TAG_ID:Z

    if-eqz v0, :cond_0

    .line 219
    sget v0, Lcom/android/databinding/library/R$id;->dataBinding:I

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected setRootTag([Landroid/view/View;)V
    .locals 5
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 226
    sget-boolean v4, Landroid/databinding/ViewDataBinding;->USE_TAG_ID:Z

    if-eqz v4, :cond_0

    .line 227
    move-object v0, p1

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 228
    .local v3, "view":Landroid/view/View;
    sget v4, Lcom/android/databinding/library/R$id;->dataBinding:I

    invoke-virtual {v3, v4, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "arr$":[Landroid/view/View;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    move-object v0, p1

    .restart local v0    # "arr$":[Landroid/view/View;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 232
    .restart local v3    # "view":Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 235
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public abstract setVariable(ILjava/lang/Object;)Z
.end method

.method public unbind()V
    .locals 4

    .prologue
    .line 345
    iget-object v0, p0, Landroid/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroid/databinding/ViewDataBinding$WeakListener;

    .local v0, "arr$":[Landroid/databinding/ViewDataBinding$WeakListener;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 346
    .local v3, "weakListener":Landroid/databinding/ViewDataBinding$WeakListener;
    if-eqz v3, :cond_0

    .line 347
    invoke-virtual {v3}, Landroid/databinding/ViewDataBinding$WeakListener;->unregister()Z

    .line 345
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v3    # "weakListener":Landroid/databinding/ViewDataBinding$WeakListener;
    :cond_1
    return-void
.end method

.method protected unregisterFrom(I)Z
    .locals 2
    .param p1, "localFieldId"    # I

    .prologue
    .line 387
    iget-object v1, p0, Landroid/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroid/databinding/ViewDataBinding$WeakListener;

    aget-object v0, v1, p1

    .line 388
    .local v0, "listener":Landroid/databinding/ViewDataBinding$WeakListener;
    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Landroid/databinding/ViewDataBinding$WeakListener;->unregister()Z

    move-result v1

    .line 391
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateRegistration(ILandroid/databinding/Observable;)Z
    .locals 1
    .param p1, "localFieldId"    # I
    .param p2, "observable"    # Landroid/databinding/Observable;

    .prologue
    .line 436
    sget-object v0, Landroid/databinding/ViewDataBinding;->CREATE_PROPERTY_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;->updateRegistration(ILjava/lang/Object;Landroid/databinding/ViewDataBinding$CreateWeakListener;)Z

    move-result v0

    return v0
.end method

.method protected updateRegistration(ILandroid/databinding/ObservableList;)Z
    .locals 1
    .param p1, "localFieldId"    # I
    .param p2, "observable"    # Landroid/databinding/ObservableList;

    .prologue
    .line 440
    sget-object v0, Landroid/databinding/ViewDataBinding;->CREATE_LIST_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;->updateRegistration(ILjava/lang/Object;Landroid/databinding/ViewDataBinding$CreateWeakListener;)Z

    move-result v0

    return v0
.end method

.method protected updateRegistration(ILandroid/databinding/ObservableMap;)Z
    .locals 1
    .param p1, "localFieldId"    # I
    .param p2, "observable"    # Landroid/databinding/ObservableMap;

    .prologue
    .line 444
    sget-object v0, Landroid/databinding/ViewDataBinding;->CREATE_MAP_LISTENER:Landroid/databinding/ViewDataBinding$CreateWeakListener;

    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;->updateRegistration(ILjava/lang/Object;Landroid/databinding/ViewDataBinding$CreateWeakListener;)Z

    move-result v0

    return v0
.end method
