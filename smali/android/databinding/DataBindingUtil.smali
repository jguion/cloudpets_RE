.class public Landroid/databinding/DataBindingUtil;
.super Ljava/lang/Object;
.source "DataBindingUtil.java"


# static fields
.field private static sMapper:Landroid/databinding/DataBinderMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Landroid/databinding/DataBinderMapper;

    invoke-direct {v0}, Landroid/databinding/DataBinderMapper;-><init>()V

    sput-object v0, Landroid/databinding/DataBindingUtil;->sMapper:Landroid/databinding/DataBinderMapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Landroid/databinding/ViewDataBinding;
    .locals 6
    .param p0, "root"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p0}, Landroid/databinding/DataBindingUtil;->getBinding(Landroid/view/View;)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    .line 85
    .local v0, "binding":Landroid/databinding/ViewDataBinding;, "TT;"
    if-eqz v0, :cond_0

    .line 97
    .end local v0    # "binding":Landroid/databinding/ViewDataBinding;, "TT;"
    :goto_0
    return-object v0

    .line 88
    .restart local v0    # "binding":Landroid/databinding/ViewDataBinding;, "TT;"
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 89
    .local v3, "tagObj":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_1

    .line 90
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "View is not a binding layout"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    move-object v2, v3

    .line 92
    check-cast v2, Ljava/lang/String;

    .line 93
    .local v2, "tag":Ljava/lang/String;
    sget-object v4, Landroid/databinding/DataBindingUtil;->sMapper:Landroid/databinding/DataBinderMapper;

    invoke-virtual {v4, v2}, Landroid/databinding/DataBinderMapper;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    .line 94
    .local v1, "layoutId":I
    if-nez v1, :cond_2

    .line 95
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "View is not a binding layout"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 97
    :cond_2
    sget-object v4, Landroid/databinding/DataBindingUtil;->sMapper:Landroid/databinding/DataBinderMapper;

    invoke-virtual {v4, p0, v1}, Landroid/databinding/DataBinderMapper;->getDataBinder(Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    goto :goto_0
.end method

.method static bind(Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .locals 1
    .param p0, "root"    # Landroid/view/View;
    .param p1, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 107
    sget-object v0, Landroid/databinding/DataBindingUtil;->sMapper:Landroid/databinding/DataBinderMapper;

    invoke-virtual {v0, p0, p1}, Landroid/databinding/DataBinderMapper;->getDataBinder(Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    return-object v0
.end method

.method static bind([Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .locals 1
    .param p0, "roots"    # [Landroid/view/View;
    .param p1, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">([",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 103
    sget-object v0, Landroid/databinding/DataBindingUtil;->sMapper:Landroid/databinding/DataBinderMapper;

    invoke-virtual {v0, p0, p1}, Landroid/databinding/DataBinderMapper;->getDataBinder([Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    return-object v0
.end method

.method public static convertBrIdToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 198
    sget-object v0, Landroid/databinding/DataBindingUtil;->sMapper:Landroid/databinding/DataBinderMapper;

    invoke-virtual {v0, p0}, Landroid/databinding/DataBinderMapper;->convertBrIdToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findBinding(Landroid/view/View;)Landroid/databinding/ViewDataBinding;
    .locals 14
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v13, 0x2f

    const/4 v12, -0x1

    .line 124
    :goto_0
    if-eqz p0, :cond_7

    .line 125
    invoke-static {p0}, Landroid/databinding/ViewDataBinding;->getBinding(Landroid/view/View;)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    .line 126
    .local v0, "binding":Landroid/databinding/ViewDataBinding;
    if-eqz v0, :cond_0

    .line 157
    .end local v0    # "binding":Landroid/databinding/ViewDataBinding;
    :goto_1
    return-object v0

    .line 129
    .restart local v0    # "binding":Landroid/databinding/ViewDataBinding;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 130
    .local v5, "tag":Ljava/lang/Object;
    instance-of v11, v5, Ljava/lang/String;

    if-eqz v11, :cond_5

    move-object v6, v5

    .line 131
    check-cast v6, Ljava/lang/String;

    .line 132
    .local v6, "tagString":Ljava/lang/String;
    const-string v11, "layout"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "_0"

    invoke-virtual {v6, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 133
    const/4 v11, 0x6

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 134
    .local v2, "nextChar":C
    const/4 v11, 0x7

    invoke-virtual {v6, v13, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 135
    .local v4, "slashIndex":I
    const/4 v1, 0x0

    .line 136
    .local v1, "isUnboundRoot":Z
    if-ne v2, v13, :cond_3

    .line 138
    if-ne v4, v12, :cond_2

    move v1, v8

    .line 144
    :cond_1
    :goto_2
    if-eqz v1, :cond_5

    move-object v0, v10

    .line 146
    goto :goto_1

    :cond_2
    move v1, v9

    .line 138
    goto :goto_2

    .line 139
    :cond_3
    const/16 v11, 0x2d

    if-ne v2, v11, :cond_1

    if-eq v4, v12, :cond_1

    .line 140
    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v6, v13, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 142
    .local v3, "nextSlashIndex":I
    if-ne v3, v12, :cond_4

    move v1, v8

    :goto_3
    goto :goto_2

    :cond_4
    move v1, v9

    goto :goto_3

    .line 150
    .end local v1    # "isUnboundRoot":Z
    .end local v2    # "nextChar":C
    .end local v3    # "nextSlashIndex":I
    .end local v4    # "slashIndex":I
    .end local v6    # "tagString":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 151
    .local v7, "viewParent":Landroid/view/ViewParent;
    instance-of v11, v7, Landroid/view/View;

    if-eqz v11, :cond_6

    move-object p0, v7

    .line 152
    check-cast p0, Landroid/view/View;

    goto :goto_0

    .line 154
    :cond_6
    const/4 p0, 0x0

    goto :goto_0

    .end local v0    # "binding":Landroid/databinding/ViewDataBinding;
    .end local v5    # "tag":Ljava/lang/Object;
    .end local v7    # "viewParent":Landroid/view/ViewParent;
    :cond_7
    move-object v0, v10

    .line 157
    goto :goto_1
.end method

.method public static getBinding(Landroid/view/View;)Landroid/databinding/ViewDataBinding;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {p0}, Landroid/databinding/ViewDataBinding;->getBinding(Landroid/view/View;)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;
    .locals 9
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "layoutId"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "attachToParent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 51
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    move v6, v8

    .line 52
    .local v6, "useChildren":Z
    :goto_0
    if-eqz v6, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 53
    .local v5, "startChildren":I
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 54
    .local v7, "view":Landroid/view/View;
    if-eqz v6, :cond_4

    .line 55
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 56
    .local v3, "endChildren":I
    sub-int v2, v3, v5

    .line 57
    .local v2, "childrenAdded":I
    if-ne v2, v8, :cond_2

    .line 58
    add-int/lit8 v8, v3, -0x1

    invoke-virtual {p2, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "childView":Landroid/view/View;
    invoke-static {v0, p1}, Landroid/databinding/DataBindingUtil;->bind(Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object v8

    .line 68
    .end local v0    # "childView":Landroid/view/View;
    .end local v2    # "childrenAdded":I
    .end local v3    # "endChildren":I
    :goto_1
    return-object v8

    .end local v5    # "startChildren":I
    .end local v6    # "useChildren":Z
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    move v6, v5

    .line 51
    goto :goto_0

    .line 61
    .restart local v2    # "childrenAdded":I
    .restart local v3    # "endChildren":I
    .restart local v5    # "startChildren":I
    .restart local v6    # "useChildren":Z
    .restart local v7    # "view":Landroid/view/View;
    :cond_2
    new-array v1, v2, [Landroid/view/View;

    .line 62
    .local v1, "children":[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_3

    .line 63
    add-int v8, v4, v5

    invoke-virtual {p2, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v1, v4

    .line 62
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 65
    :cond_3
    invoke-static {v1, p1}, Landroid/databinding/DataBindingUtil;->bind([Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object v8

    goto :goto_1

    .line 68
    .end local v1    # "children":[Landroid/view/View;
    .end local v2    # "childrenAdded":I
    .end local v3    # "endChildren":I
    .end local v4    # "i":I
    :cond_4
    invoke-static {v7, p1}, Landroid/databinding/DataBindingUtil;->bind(Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object v8

    goto :goto_1
.end method

.method public static setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/databinding/ViewDataBinding;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 184
    .local v2, "decorView":Landroid/view/View;
    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 185
    .local v1, "contentView":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p1, v1, v4}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    .line 186
    .local v0, "binding":Landroid/databinding/ViewDataBinding;, "TT;"
    invoke-virtual {v0}, Landroid/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0}, Landroid/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    return-object v0
.end method
