.class public Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick;
.super Licepick/Injector$Object;
.source "EditParentProfileActivity$$Icepick.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;",
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

    const-string v1, "com.spiraltoys.cloudpets2.EditParentProfileActivity$$Icepick."

    invoke-direct {v0, v1}, Licepick/Injector$Helper;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick;, "Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick<TT;>;"
    invoke-direct {p0}, Licepick/Injector$Object;-><init>()V

    return-void
.end method


# virtual methods
.method public restore(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;Landroid/os/Bundle;)V
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
    .local p0, "this":Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick;, "Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;, "TT;"
    if-nez p2, :cond_0

    .line 19
    :goto_0
    return-void

    .line 13
    :cond_0
    sget-object v0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mProfilePhotoUri"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfilePhotoUri:Landroid/net/Uri;

    .line 14
    sget-object v0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mDisplayName"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mDisplayName:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mEmailAddress"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mEmailAddress:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mIsDataPopulated"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mIsDataPopulated:Z

    .line 17
    sget-object v0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mHasUnsavedChanges"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mHasUnsavedChanges:Z

    .line 18
    invoke-super {p0, p1, p2}, Licepick/Injector$Object;->restore(Ljava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public bridge synthetic restore(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick;, "Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick;->restore(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;Landroid/os/Bundle;)V
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
    .line 22
    .local p0, "this":Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick;, "Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;, "TT;"
    invoke-super {p0, p1, p2}, Licepick/Injector$Object;->save(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 23
    sget-object v0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mProfilePhotoUri"

    iget-object v2, p1, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mProfilePhotoUri:Landroid/net/Uri;

    invoke-virtual {v0, p2, v1, v2}, Licepick/Injector$Helper;->putParcelable(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 24
    sget-object v0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mDisplayName"

    iget-object v2, p1, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Licepick/Injector$Helper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mEmailAddress"

    iget-object v2, p1, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Licepick/Injector$Helper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mIsDataPopulated"

    iget-boolean v2, p1, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mIsDataPopulated:Z

    invoke-virtual {v0, p2, v1, v2}, Licepick/Injector$Helper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 27
    sget-object v0, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mHasUnsavedChanges"

    iget-boolean v2, p1, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;->mHasUnsavedChanges:Z

    invoke-virtual {v0, p2, v1, v2}, Licepick/Injector$Helper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 28
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick;, "Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/EditParentProfileActivity$$Icepick;->save(Lcom/spiraltoys/cloudpets2/EditParentProfileActivity;Landroid/os/Bundle;)V

    return-void
.end method
