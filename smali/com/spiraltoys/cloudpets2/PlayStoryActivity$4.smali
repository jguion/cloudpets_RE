.class Lcom/spiraltoys/cloudpets2/PlayStoryActivity$4;
.super Ljava/lang/Object;
.source "PlayStoryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 186
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/PlayStoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/PlayStoryActivity$4;->this$0:Lcom/spiraltoys/cloudpets2/PlayStoryActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/PlayStoryActivity;->exitStory()V

    .line 190
    return-void
.end method
