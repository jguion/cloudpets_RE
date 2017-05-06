.class Lcom/spiraltoys/cloudpets2/model/StoryLoader$1;
.super Ljava/lang/Object;
.source "StoryLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/StoryLoader;->loadStories(Landroid/content/Context;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/spiraltoys/cloudpets2/model/Story;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/model/StoryLoader;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/model/StoryLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/model/StoryLoader;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/StoryLoader$1;->this$0:Lcom/spiraltoys/cloudpets2/model/StoryLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/spiraltoys/cloudpets2/model/Story;Lcom/spiraltoys/cloudpets2/model/Story;)I
    .locals 3
    .param p1, "lhs"    # Lcom/spiraltoys/cloudpets2/model/Story;
    .param p2, "rhs"    # Lcom/spiraltoys/cloudpets2/model/Story;

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Story;->getSortPriority()I

    move-result v1

    invoke-virtual {p2}, Lcom/spiraltoys/cloudpets2/model/Story;->getSortPriority()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    neg-int v0, v1

    .line 77
    .local v0, "sortPriorityCompare":I
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Story;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/spiraltoys/cloudpets2/model/Story;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .end local v0    # "sortPriorityCompare":I
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 73
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/Story;

    check-cast p2, Lcom/spiraltoys/cloudpets2/model/Story;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/model/StoryLoader$1;->compare(Lcom/spiraltoys/cloudpets2/model/Story;Lcom/spiraltoys/cloudpets2/model/Story;)I

    move-result v0

    return v0
.end method
