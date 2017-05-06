.class public Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;
.super Landroid/widget/BaseAdapter;
.source "MonthAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasNoSelectionValue:Z

.field private mMonths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUseNoSelectionValueAsPlaceholder:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "hasNoSelectionValue"    # Z
    .param p3, "useNoSelectionValueAsPlaceholder"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput-boolean p2, p0, Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;->mHasNoSelectionValue:Z

    .line 31
    iput-boolean p3, p0, Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;->mUseNoSelectionValueAsPlaceholder:Z

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;->mMonths:Ljava/util/List;

    .line 33
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;->mHasNoSelectionValue:Z

    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;->mMonths:Ljava/util/List;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_1

    const v0, 0x7f080133

    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 36
    :cond_0
    return-void

    .line 34
    :cond_1
    const v0, 0x7f080074

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;->mMonths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 56
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    instance-of v3, p2, Landroid/widget/TextView;

    or-int/2addr v1, v3

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x1090009

    invoke-virtual {v1, v3, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 60
    :cond_0
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    .local v0, "text1":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;->mHasNoSelectionValue:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 62
    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 67
    :goto_1
    return-object p2

    .end local v0    # "text1":Landroid/widget/TextView;
    :cond_1
    move v1, v2

    .line 56
    goto :goto_0

    .line 64
    .restart local v0    # "text1":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;->mMonths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090008

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 74
    :cond_0
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    .local v0, "text1":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;->mHasNoSelectionValue:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/adapters/MonthAdapter;->mUseNoSelectionValueAsPlaceholder:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 78
    invoke-virtual {v0}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 81
    :cond_1
    return-object p2
.end method
