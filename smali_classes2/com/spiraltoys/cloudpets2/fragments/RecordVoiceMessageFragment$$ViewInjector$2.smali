.class Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$$ViewInjector$2;
.super Ljava/lang/Object;
.source "RecordVoiceMessageFragment$$ViewInjector.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$$ViewInjector;

.field final synthetic val$target:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$$ViewInjector;

    .prologue
    .line 21
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$$ViewInjector$2;, "Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$$ViewInjector$2;"
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$$ViewInjector$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$$ViewInjector;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$$ViewInjector$2;->val$target:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "p0"    # Landroid/view/View;
    .param p2, "p1"    # Landroid/view/MotionEvent;

    .prologue
    .line 26
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$$ViewInjector$2;, "Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$$ViewInjector$2;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$$ViewInjector$2;->val$target:Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;

    invoke-virtual {v0, p1, p2}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;->onRecordTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
