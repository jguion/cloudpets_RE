.class public Lcom/spiraltoys/cloudpets2/events/ProfilesSelectedForSelectProfileEvent;
.super Ljava/lang/Object;
.source "ProfilesSelectedForSelectProfileEvent.java"


# instance fields
.field mPendingProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation
.end field

.field mSelectedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "selectedprofiles":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    .local p2, "pendingProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/events/ProfilesSelectedForSelectProfileEvent;->mSelectedProfiles:Ljava/util/List;

    .line 19
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/events/ProfilesSelectedForSelectProfileEvent;->mPendingProfiles:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public getPendingProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/events/ProfilesSelectedForSelectProfileEvent;->mPendingProfiles:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/events/ProfilesSelectedForSelectProfileEvent;->mSelectedProfiles:Ljava/util/List;

    return-object v0
.end method
