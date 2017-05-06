.class public Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;
.super Ljava/lang/Object;
.source "ProfileSelectedForToyDashboardEvent.java"


# instance fields
.field private mSelectedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 0
    .param p1, "selectedProfile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;->mSelectedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 14
    return-void
.end method


# virtual methods
.method public getSelectedProfile()Lcom/spiraltoys/cloudpets2/model/Profile;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/events/ProfileSelectedForToyDashboardEvent;->mSelectedProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    return-object v0
.end method
