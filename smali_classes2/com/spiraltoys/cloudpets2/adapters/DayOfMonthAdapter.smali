.class public Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;
.super Landroid/widget/BaseAdapter;
.source "DayOfMonthAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasNoSelectionValue:Z

.field private mMonth:I

.field private mUseNoSelectionValueAsPlaceholder:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "hasNoSelectionValue"    # Z
    .param p3, "useNoSelectionValueAsPlaceholder"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->mMonth:I

    .line 28
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput-boolean p2, p0, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->mHasNoSelectionValue:Z

    .line 30
    iput-boolean p3, p0, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->mUseNoSelectionValueAsPlaceholder:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 40
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v2, 0x7d0

    iget v3, p0, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->mMonth:I

    invoke-direct {v0, v2, v3, v1}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 41
    .local v0, "c":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    iget-boolean v3, p0, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->mHasNoSelectionValue:Z

    if-eqz v3, :cond_0

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 60
    if-eqz p2, :cond_0

    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 64
    :cond_1
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    .local v0, "text1":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->mHasNoSelectionValue:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 66
    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    :goto_0
    return-object p2

    .line 68
    :cond_2
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->mHasNoSelectionValue:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->mUseNoSelectionValueAsPlaceholder:Z

    if-eqz v0, :cond_0

    const v0, 0x7f080132

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_1
    return-object v0

    .line 47
    :cond_0
    const v0, 0x7f080074

    goto :goto_0

    .line 49
    :cond_1
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->mHasNoSelectionValue:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    if-nez p2, :cond_0

    .line 77
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090008

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 79
    :cond_0
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    .local v0, "text1":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->mHasNoSelectionValue:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->mUseNoSelectionValueAsPlaceholder:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {v0}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 85
    :cond_1
    return-object p2
.end method

.method public setMonth(I)V
    .locals 1
    .param p1, "month"    # I

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->mHasNoSelectionValue:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sub-int v0, p1, v0

    iput v0, p0, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->mMonth:I

    .line 35
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/adapters/DayOfMonthAdapter;->notifyDataSetChanged()V

    .line 36
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
