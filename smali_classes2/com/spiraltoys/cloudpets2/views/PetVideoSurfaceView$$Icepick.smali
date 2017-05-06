.class public Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick;
.super Licepick/Injector$View;
.source "PetVideoSurfaceView$$Icepick.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;",
        ">",
        "Licepick/Injector$View",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final H:Licepick/Injector$Helper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Licepick/Injector$Helper;

    const-string v1, "com.spiraltoys.cloudpets2.views.PetVideoSurfaceView$$Icepick."

    invoke-direct {v0, v1}, Licepick/Injector$Helper;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick;->H:Licepick/Injector$Helper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick;, "Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick<TT;>;"
    invoke-direct {p0}, Licepick/Injector$View;-><init>()V

    return-void
.end method


# virtual methods
.method public restore(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 3
    .param p2, "p"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcelable;",
            ")",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick;, "Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;, "TT;"
    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 14
    .local v0, "state":Landroid/os/Bundle;
    sget-object v1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick;->H:Licepick/Injector$Helper;

    const-string v2, "mCurrentlyPlayingAnimation"

    invoke-virtual {v1, v0, v2}, Licepick/Injector$Helper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    .line 15
    sget-object v1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick;->H:Licepick/Injector$Helper;

    const-string v2, "mCurrentlyQueuedAnimation"

    invoke-virtual {v1, v0, v2}, Licepick/Injector$Helper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyQueuedAnimation:Ljava/lang/String;

    .line 16
    sget-object v1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick;->H:Licepick/Injector$Helper;

    const-string v2, "mSavedPosition"

    invoke-virtual {v1, v0, v2}, Licepick/Injector$Helper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mSavedPosition:I

    .line 17
    sget-object v1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick;->H:Licepick/Injector$Helper;

    const-string v2, "mVolume"

    invoke-virtual {v1, v0, v2}, Licepick/Injector$Helper;->getFloat(Landroid/os/Bundle;Ljava/lang/String;)F

    move-result v1

    iput v1, p1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mVolume:F

    .line 18
    sget-object v1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick;->H:Licepick/Injector$Helper;

    invoke-virtual {v1, v0}, Licepick/Injector$Helper;->getParent(Landroid/os/Bundle;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, p1, v1}, Licepick/Injector$View;->restore(Ljava/lang/Object;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic restore(Ljava/lang/Object;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 8
    .local p0, "this":Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick;, "Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick;->restore(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public save(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 4
    .param p2, "p"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcelable;",
            ")",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick;, "Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;, "TT;"
    sget-object v1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick;->H:Licepick/Injector$Helper;

    invoke-super {p0, p1, p2}, Licepick/Injector$View;->save(Ljava/lang/Object;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v2}, Licepick/Injector$Helper;->putParent(Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object v0

    .line 23
    .local v0, "state":Landroid/os/Bundle;
    sget-object v1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick;->H:Licepick/Injector$Helper;

    const-string v2, "mCurrentlyPlayingAnimation"

    iget-object v3, p1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyPlayingAnimation:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Licepick/Injector$Helper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object v1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick;->H:Licepick/Injector$Helper;

    const-string v2, "mCurrentlyQueuedAnimation"

    iget-object v3, p1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mCurrentlyQueuedAnimation:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Licepick/Injector$Helper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick;->H:Licepick/Injector$Helper;

    const-string v2, "mSavedPosition"

    iget v3, p1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mSavedPosition:I

    invoke-virtual {v1, v0, v2, v3}, Licepick/Injector$Helper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 26
    sget-object v1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick;->H:Licepick/Injector$Helper;

    const-string v2, "mVolume"

    iget v3, p1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;->mVolume:F

    invoke-virtual {v1, v0, v2, v3}, Licepick/Injector$Helper;->putFloat(Landroid/os/Bundle;Ljava/lang/String;F)V

    .line 27
    return-object v0
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 8
    .local p0, "this":Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick;, "Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView$$Icepick;->save(Lcom/spiraltoys/cloudpets2/views/PetVideoSurfaceView;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
