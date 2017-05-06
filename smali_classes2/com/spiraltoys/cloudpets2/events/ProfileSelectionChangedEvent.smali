.class public Lcom/spiraltoys/cloudpets2/events/ProfileSelectionChangedEvent;
.super Ljava/lang/Object;
.source "ProfileSelectionChangedEvent.java"


# instance fields
.field private mSelectedProfiles:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "selectedProfiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/events/ProfileSelectionChangedEvent;->mSelectedProfiles:Ljava/util/Collection;

    .line 16
    return-void
.end method


# virtual methods
.method public getSelectedProfiles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/events/ProfileSelectionChangedEvent;->mSelectedProfiles:Ljava/util/Collection;

    return-object v0
.end method
