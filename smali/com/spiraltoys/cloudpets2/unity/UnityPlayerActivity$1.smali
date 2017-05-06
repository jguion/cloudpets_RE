.class Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity$1;
.super Lcom/unity3d/player/UnityPlayer;
.source "UnityPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;Landroid/content/ContextWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;
    .param p2, "x0"    # Landroid/content/ContextWrapper;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/unity/UnityPlayerActivity;

    invoke-direct {p0, p2}, Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/ContextWrapper;)V

    return-void
.end method


# virtual methods
.method protected kill()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
