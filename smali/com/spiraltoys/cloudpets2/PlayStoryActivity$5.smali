.class Lcom/spiraltoys/cloudpets2/PlayStoryActivity$5;
.super Ljava/lang/Object;
.source "PlayStoryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->onEvent(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/PlayStoryActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/PlayStoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/PlayStoryActivity;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$5;->this$0:Lcom/spiraltoys/cloudpets2/PlayStoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$5;->this$0:Lcom/spiraltoys/cloudpets2/PlayStoryActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->exitStory()V

    .line 282
    return-void
.end method
