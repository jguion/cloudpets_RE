.class public Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$$Icepick;
.super Licepick/Injector$Object;
.source "ChildDashboardDialogFragment$$Icepick.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;",
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

    const-string v1, "com.spiraltoys.cloudpets2.fragments.ChildDashboardDialogFragment$$Icepick."

    invoke-direct {v0, v1}, Licepick/Injector$Helper;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$$Icepick;->H:Licepick/Injector$Helper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$$Icepick;, "Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$$Icepick<TT;>;"
    invoke-direct {p0}, Licepick/Injector$Object;-><init>()V

    return-void
.end method


# virtual methods
.method public restore(Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;Landroid/os/Bundle;)V
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
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$$Icepick;, "Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$$Icepick<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;, "TT;"
    if-nez p2, :cond_0

    .line 16
    :goto_0
    return-void

    .line 13
    :cond_0
    sget-object v0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mTitleStack"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getStringArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mTitleStack:Ljava/util/ArrayList;

    .line 14
    sget-object v0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mTitleIconStack"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getIntegerArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mTitleIconStack:Ljava/util/ArrayList;

    .line 15
    invoke-super {p0, p1, p2}, Licepick/Injector$Object;->restore(Ljava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public bridge synthetic restore(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$$Icepick;, "Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$$Icepick<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$$Icepick;->restore(Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;Landroid/os/Bundle;)V
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
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$$Icepick;, "Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$$Icepick<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;, "TT;"
    invoke-super {p0, p1, p2}, Licepick/Injector$Object;->save(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 20
    sget-object v0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mTitleStack"

    iget-object v2, p1, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mTitleStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1, v2}, Licepick/Injector$Helper;->putStringArrayList(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 21
    sget-object v0, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mTitleIconStack"

    iget-object v2, p1, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;->mTitleIconStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1, v2}, Licepick/Injector$Helper;->putIntegerArrayList(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 22
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$$Icepick;, "Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$$Icepick<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment$$Icepick;->save(Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardDialogFragment;Landroid/os/Bundle;)V

    return-void
.end method
