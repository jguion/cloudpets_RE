.class Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$2;
.super Ljava/lang/Object;
.source "CreateOrEditChildProfileFragment.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->setupUsernameInputFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 365
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, "textToCheck":Ljava/lang/String;
    instance-of v7, p1, Landroid/text/SpannableStringBuilder;

    if-eqz v7, :cond_3

    .line 367
    const/4 v2, 0x0

    .local v2, "isChanged":Z
    move-object v5, p1

    .line 368
    check-cast v5, Landroid/text/SpannableStringBuilder;

    .line 369
    .local v5, "stringBuilder":Landroid/text/SpannableStringBuilder;
    add-int/lit8 v1, p3, -0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, p2, :cond_1

    .line 370
    add-int/lit8 v7, v1, 0x1

    invoke-interface {p1, v1, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 371
    .local v0, "currentChar":Ljava/lang/CharSequence;
    sget-object v7, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->INVALID_USERNAME_CHARACTER_SEQUENCES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 372
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v5, v1, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 373
    const/4 v2, 0x1

    .line 369
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 376
    .end local v0    # "currentChar":Ljava/lang/CharSequence;
    :cond_1
    if-eqz v2, :cond_2

    .line 380
    .end local v1    # "i":I
    .end local v2    # "isChanged":Z
    .end local v5    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :goto_1
    return-object v5

    .line 376
    .restart local v1    # "i":I
    .restart local v2    # "isChanged":Z
    .restart local v5    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 378
    .end local v1    # "i":I
    .end local v2    # "isChanged":Z
    .end local v5    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    :cond_3
    sget-object v7, Lcom/spiraltoys/cloudpets2/fragments/CreateOrEditChildProfileFragment;->INVALID_USERNAME_CHARACTER_SEQUENCES_PATTERN:Ljava/util/regex/Pattern;

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 379
    .local v3, "matcher":Ljava/util/regex/Matcher;
    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, "replacement":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v4, 0x0

    .end local v4    # "replacement":Ljava/lang/String;
    :cond_4
    move-object v5, v4

    goto :goto_1
.end method
