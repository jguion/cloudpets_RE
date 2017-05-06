.class public Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$Icepick;
.super Licepick/Injector$Object;
.source "ChildLullabyDetailsFragment$$Icepick.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;",
        ">",
        "Licepick/Injector$Object",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final H:Licepick/Injector$Helper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Licepick/Injector$Helper;

    const-string v1, "com.spiraltoys.cloudpets2.fragments.ChildLullabyDetailsFragment$$Icepick."

    invoke-direct {v0, v1}, Licepick/Injector$Helper;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$Icepick;->H:Licepick/Injector$Helper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$Icepick;, "Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$Icepick<TT;>;"
    invoke-direct {p0}, Licepick/Injector$Object;-><init>()V

    return-void
.end method


# virtual methods
.method public restore(Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;Landroid/os/Bundle;)V
    .locals 2
    .param p2, "state"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$Icepick;, "Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$Icepick<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;, "TT;"
    if-nez p2, :cond_0

    .line 16
    :goto_0
    return-void

    .line 13
    :cond_0
    sget-object v0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mSelectedVolumeIndex"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedVolumeIndex:I

    .line 14
    sget-object v0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mSelectedDurationIndex"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedDurationIndex:I

    .line 15
    invoke-super {p0, p1, p2}, Licepick/Injector$Object;->restore(Ljava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public bridge synthetic restore(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$Icepick;, "Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$Icepick<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$Icepick;->restore(Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;Landroid/os/Bundle;)V
    .locals 3
    .param p2, "state"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$Icepick;, "Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$Icepick<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;, "TT;"
    invoke-super {p0, p1, p2}, Licepick/Injector$Object;->save(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 20
    sget-object v0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mSelectedVolumeIndex"

    iget v2, p1, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedVolumeIndex:I

    invoke-virtual {v0, p2, v1, v2}, Licepick/Injector$Helper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 21
    sget-object v0, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mSelectedDurationIndex"

    iget v2, p1, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;->mSelectedDurationIndex:I

    invoke-virtual {v0, p2, v1, v2}, Licepick/Injector$Helper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 22
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$Icepick;, "Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$Icepick<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment$$Icepick;->save(Lcom/spiraltoys/cloudpets2/fragments/ChildLullabyDetailsFragment;Landroid/os/Bundle;)V

    return-void
.end method
