.class public Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;
.super Licepick/Injector$Object;
.source "CreateOrEditChildProfileActivity$$Icepick.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;",
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

    const-string v1, "com.spiraltoys.cloudpets2.CreateOrEditChildProfileActivity$$Icepick."

    invoke-direct {v0, v1}, Licepick/Injector$Helper;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;, "Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick<TT;>;"
    invoke-direct {p0}, Licepick/Injector$Object;-><init>()V

    return-void
.end method


# virtual methods
.method public restore(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;Landroid/os/Bundle;)V
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
    .local p0, "this":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;, "Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;, "TT;"
    if-nez p2, :cond_0

    .line 24
    :goto_0
    return-void

    .line 13
    :cond_0
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mBirthMonth"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mBirthMonth:I

    .line 14
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mBirthDayOfMonth"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mBirthDayOfMonth:I

    .line 15
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mProfilePhotoUri"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfilePhotoUri:Landroid/net/Uri;

    .line 16
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mDisplayName"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mDisplayName:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mUsername"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mUsername:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mPetNickname"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mPetNickname:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mToyIdentifier"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mToyIdentifier:Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mSelectedCharacter"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    iput-object v0, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSelectedCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    .line 21
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mIsDataPopulated"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mIsDataPopulated:Z

    .line 22
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mHasUnsavedChanges"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mHasUnsavedChanges:Z

    .line 23
    invoke-super {p0, p1, p2}, Licepick/Injector$Object;->restore(Ljava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public bridge synthetic restore(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;, "Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->restore(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;Landroid/os/Bundle;)V
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
    .line 27
    .local p0, "this":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;, "Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;, "TT;"
    invoke-super {p0, p1, p2}, Licepick/Injector$Object;->save(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 28
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mBirthMonth"

    iget v2, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mBirthMonth:I

    invoke-virtual {v0, p2, v1, v2}, Licepick/Injector$Helper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 29
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mBirthDayOfMonth"

    iget v2, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mBirthDayOfMonth:I

    invoke-virtual {v0, p2, v1, v2}, Licepick/Injector$Helper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 30
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mProfilePhotoUri"

    iget-object v2, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mProfilePhotoUri:Landroid/net/Uri;

    invoke-virtual {v0, p2, v1, v2}, Licepick/Injector$Helper;->putParcelable(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 31
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mDisplayName"

    iget-object v2, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Licepick/Injector$Helper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mUsername"

    iget-object v2, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Licepick/Injector$Helper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mPetNickname"

    iget-object v2, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mPetNickname:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Licepick/Injector$Helper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mToyIdentifier"

    iget-object v2, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mToyIdentifier:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Licepick/Injector$Helper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mSelectedCharacter"

    iget-object v2, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mSelectedCharacter:Lcom/spiraltoys/cloudpets2/model/PlushToy$Character;

    invoke-virtual {v0, p2, v1, v2}, Licepick/Injector$Helper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 36
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mIsDataPopulated"

    iget-boolean v2, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mIsDataPopulated:Z

    invoke-virtual {v0, p2, v1, v2}, Licepick/Injector$Helper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 37
    sget-object v0, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mHasUnsavedChanges"

    iget-boolean v2, p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;->mHasUnsavedChanges:Z

    invoke-virtual {v0, p2, v1, v2}, Licepick/Injector$Helper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 38
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;, "Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity$$Icepick;->save(Lcom/spiraltoys/cloudpets2/CreateOrEditChildProfileActivity;Landroid/os/Bundle;)V

    return-void
.end method
