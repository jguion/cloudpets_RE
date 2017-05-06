.class Lcom/spiraltoys/cloudpets2/PlayStoryActivity$2;
.super Ljava/lang/Object;
.source "PlayStoryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->onBackPressed()V
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
    .line 198
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/PlayStoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$2;->this$0:Lcom/spiraltoys/cloudpets2/PlayStoryActivity;

    # invokes: Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->unpauseStory()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->access$100(Lcom/spiraltoys/cloudpets2/PlayStoryActivity;)V

    .line 202
    return-void
.end method
