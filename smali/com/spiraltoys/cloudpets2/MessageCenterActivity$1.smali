.class Lcom/spiraltoys/cloudpets2/MessageCenterActivity$1;
.super Ljava/lang/Object;
.source "MessageCenterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/MessageCenterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/MessageCenterActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/MessageCenterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/MessageCenterActivity;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/MessageCenterActivity$1;->this$0:Lcom/spiraltoys/cloudpets2/MessageCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllVoiceMessagesToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 53
    return-void
.end method
