.class Lcom/spiraltoys/cloudpets2/ManageProfilesActivity$1;
.super Ljava/lang/Object;
.source "ManageProfilesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllProfilesToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 65
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllFriendsToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 66
    return-void
.end method
