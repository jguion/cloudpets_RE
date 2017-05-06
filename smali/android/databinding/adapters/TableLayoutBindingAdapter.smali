.class public Landroid/databinding/adapters/TableLayoutBindingAdapter;
.super Ljava/lang/Object;
.source "TableLayoutBindingAdapter.java"


# static fields
.field private static final MAX_COLUMNS:I = 0x14

.field private static sColumnPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "\\s*,\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/databinding/adapters/TableLayoutBindingAdapter;->sColumnPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseColumns(Ljava/lang/CharSequence;)Landroid/util/SparseBooleanArray;
    .locals 8
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 78
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 79
    .local v4, "columns":Landroid/util/SparseBooleanArray;
    if-nez p0, :cond_1

    .line 98
    :cond_0
    return-object v4

    .line 82
    :cond_1
    sget-object v7, Landroid/databinding/adapters/TableLayoutBindingAdapter;->sColumnPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "columnDefs":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v0, v5

    .line 86
    .local v2, "columnIdentifier":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 88
    .local v3, "columnIndex":I
    if-ltz v3, :cond_2

    .line 91
    const/4 v7, 0x1

    invoke-virtual {v4, v3, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v3    # "columnIndex":I
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static setCollapseColumns(Landroid/widget/TableLayout;Ljava/lang/CharSequence;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TableLayout;
    .param p1, "columnsStr"    # Ljava/lang/CharSequence;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:collapseColumns"
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {p1}, Landroid/databinding/adapters/TableLayoutBindingAdapter;->parseColumns(Ljava/lang/CharSequence;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 33
    .local v0, "columns":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x14

    if-ge v1, v3, :cond_1

    .line 34
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    .line 35
    .local v2, "isCollapsed":Z
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->isColumnCollapsed(I)Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 36
    invoke-virtual {p0, v1, v2}, Landroid/widget/TableLayout;->setColumnCollapsed(IZ)V

    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v2    # "isCollapsed":Z
    :cond_1
    return-void
.end method

.method public static setShrinkColumns(Landroid/widget/TableLayout;Ljava/lang/CharSequence;)V
    .locals 8
    .param p0, "view"    # Landroid/widget/TableLayout;
    .param p1, "columnsStr"    # Ljava/lang/CharSequence;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:shrinkColumns"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 43
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x2a

    if-ne v5, v6, :cond_1

    .line 44
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 57
    :cond_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {p0, v7}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 47
    invoke-static {p1}, Landroid/databinding/adapters/TableLayoutBindingAdapter;->parseColumns(Ljava/lang/CharSequence;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 48
    .local v2, "columns":Landroid/util/SparseBooleanArray;
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 49
    .local v1, "columnCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 50
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 51
    .local v0, "column":I
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 52
    .local v4, "shrinkable":Z
    if-eqz v4, :cond_2

    .line 53
    invoke-virtual {p0, v0, v4}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    .line 49
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static setStretchColumns(Landroid/widget/TableLayout;Ljava/lang/CharSequence;)V
    .locals 8
    .param p0, "view"    # Landroid/widget/TableLayout;
    .param p1, "columnsStr"    # Ljava/lang/CharSequence;
    .annotation build Landroid/databinding/BindingAdapter;
        value = {
            "android:stretchColumns"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 61
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x2a

    if-ne v5, v6, :cond_1

    .line 62
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    .line 75
    :cond_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p0, v7}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    .line 65
    invoke-static {p1}, Landroid/databinding/adapters/TableLayoutBindingAdapter;->parseColumns(Ljava/lang/CharSequence;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 66
    .local v2, "columns":Landroid/util/SparseBooleanArray;
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 67
    .local v1, "columnCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 68
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 69
    .local v0, "column":I
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 70
    .local v4, "stretchable":Z
    if-eqz v4, :cond_2

    .line 71
    invoke-virtual {p0, v0, v4}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    .line 67
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
