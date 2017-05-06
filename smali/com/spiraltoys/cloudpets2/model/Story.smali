.class public Lcom/spiraltoys/cloudpets2/model/Story;
.super Ljava/lang/Object;
.source "Story.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/model/Story$Page;
    }
.end annotation


# instance fields
.field private mAuthor:Ljava/lang/String;

.field private mAuthorStringResourceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authorStringResource"
    .end annotation
.end field

.field private mPageStringsResourceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pageStringsResource"
    .end annotation
.end field

.field private mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Story$Page;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewImagePath:Ljava/lang/String;

.field private mSortPriority:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sortPriority"
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mTitleStringResourceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "titleStringResource"
    .end annotation
.end field

.field private mUnitySceneName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unitySceneName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/model/Story;->mPages:Ljava/util/ArrayList;

    .line 38
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/Story;->mAuthor:Ljava/lang/String;

    return-object v0
.end method

.method protected getAuthorStringResourceId(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/Story;->mAuthorStringResourceName:Ljava/lang/String;

    const-string v2, "string"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPage(I)Lcom/spiraltoys/cloudpets2/model/Story$Page;
    .locals 1
    .param p1, "pageNumber"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/Story;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/Story$Page;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/Story;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getPageStringsArrayResourceId(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/Story;->mPageStringsResourceName:Ljava/lang/String;

    const-string v2, "array"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Story$Page;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/Story;->mPages:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPreviewImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/Story;->mPreviewImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSortPriority()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/spiraltoys/cloudpets2/model/Story;->mSortPriority:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/Story;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected getTitleStringResourceId(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/Story;->mTitleStringResourceName:Ljava/lang/String;

    const-string v2, "string"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUnitySceneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/Story;->mUnitySceneName:Ljava/lang/String;

    return-object v0
.end method

.method protected loadResources(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/model/Story;->getTitleStringResourceId(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/model/Story;->mTitle:Ljava/lang/String;

    .line 46
    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/model/Story;->getAuthorStringResourceId(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spiraltoys/cloudpets2/model/Story;->mAuthor:Ljava/lang/String;

    .line 47
    return-void
.end method

.method protected setPages(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Story$Page;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/spiraltoys/cloudpets2/model/Story$Page;>;"
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/Story;->mPages:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method protected setPreviewImagePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "previewImagePath"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/Story;->mPreviewImagePath:Ljava/lang/String;

    .line 95
    return-void
.end method
