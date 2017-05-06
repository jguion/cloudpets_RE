.class public Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;
.super Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;
.source "ProfileSwitcherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter",
        "<",
        "Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;",
        "Lcom/spiraltoys/cloudpets2/model/Profile;",
        ">;"
    }
.end annotation


# instance fields
.field private mSelectedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

.field private mSelectedProfileViewHolder:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;


# direct methods
.method public constructor <init>(Lcom/parse/ParseQuery;Lcom/spiraltoys/cloudpets2/model/Profile;Landroid/content/Context;)V
    .locals 1
    .param p2, "selectedProfile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    new-instance v0, Lcom/spiraltoys/cloudpets2/util/LastAccessedProfileComparator;

    invoke-direct {v0, p3}, Lcom/spiraltoys/cloudpets2/util/LastAccessedProfileComparator;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter;-><init>(Lcom/parse/ParseQuery;Ljava/util/Comparator;)V

    .line 34
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->mSelectedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;)Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->mSelectedProfileViewHolder:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;)Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->mSelectedProfileViewHolder:Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;)Lcom/spiraltoys/cloudpets2/model/Profile;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->mSelectedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    return-object v0
.end method

.method static synthetic access$102(Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;Lcom/spiraltoys/cloudpets2/model/Profile;)Lcom/spiraltoys/cloudpets2/model/Profile;
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;
    .param p1, "x1"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->mSelectedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/ParseQueryAdapter$ParseObjectViewHolder;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 39
    new-instance v1, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040066

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/databinding/ListItemProfileSwitcherBinding;

    invoke-direct {v1, p0, v0}, Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter$ProfileSwitcherViewHolder;-><init>(Lcom/spiraltoys/cloudpets2/adapters/ProfileSwitcherAdapter;Lcom/spiraltoys/cloudpets2/databinding/ListItemProfileSwitcherBinding;)V

    return-object v1
.end method
