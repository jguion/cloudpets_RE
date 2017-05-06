.class public Lcom/spiraltoys/cloudpets2/PlayStoryActivity$$Icepick;
.super Licepick/Injector$Object;
.source "PlayStoryActivity$$Icepick.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/spiraltoys/cloudpets2/PlayStoryActivity;",
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

    const-string v1, "com.spiraltoys.cloudpets2.PlayStoryActivity$$Icepick."

    invoke-direct {v0, v1}, Licepick/Injector$Helper;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$$Icepick;->H:Licepick/Injector$Helper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/PlayStoryActivity$$Icepick;, "Lcom/spiraltoys/cloudpets2/PlayStoryActivity$$Icepick<TT;>;"
    invoke-direct {p0}, Licepick/Injector$Object;-><init>()V

    return-void
.end method


# virtual methods
.method public restore(Lcom/spiraltoys/cloudpets2/PlayStoryActivity;Landroid/os/Bundle;)V
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
    .local p0, "this":Lcom/spiraltoys/cloudpets2/PlayStoryActivity$$Icepick;, "Lcom/spiraltoys/cloudpets2/PlayStoryActivity$$Icepick<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/PlayStoryActivity;, "TT;"
    if-nez p2, :cond_0

    .line 15
    :goto_0
    return-void

    .line 13
    :cond_0
    sget-object v0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mCurrentPage"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mCurrentPage:I

    .line 14
    invoke-super {p0, p1, p2}, Licepick/Injector$Object;->restore(Ljava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public bridge synthetic restore(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/PlayStoryActivity$$Icepick;, "Lcom/spiraltoys/cloudpets2/PlayStoryActivity$$Icepick<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$$Icepick;->restore(Lcom/spiraltoys/cloudpets2/PlayStoryActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lcom/spiraltoys/cloudpets2/PlayStoryActivity;Landroid/os/Bundle;)V
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
    .line 18
    .local p0, "this":Lcom/spiraltoys/cloudpets2/PlayStoryActivity$$Icepick;, "Lcom/spiraltoys/cloudpets2/PlayStoryActivity$$Icepick<TT;>;"
    .local p1, "target":Lcom/spiraltoys/cloudpets2/PlayStoryActivity;, "TT;"
    invoke-super {p0, p1, p2}, Licepick/Injector$Object;->save(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 19
    sget-object v0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "mCurrentPage"

    iget v2, p1, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->mCurrentPage:I

    invoke-virtual {v0, p2, v1, v2}, Licepick/Injector$Helper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 20
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/spiraltoys/cloudpets2/PlayStoryActivity$$Icepick;, "Lcom/spiraltoys/cloudpets2/PlayStoryActivity$$Icepick<TT;>;"
    check-cast p1, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$$Icepick;->save(Lcom/spiraltoys/cloudpets2/PlayStoryActivity;Landroid/os/Bundle;)V

    return-void
.end method
