.class Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment$$ViewInjector$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "RecordedVoiceMessagePlaybackFragment$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment$$ViewInjector;

.field final synthetic val$target:Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment$$ViewInjector;Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment$$ViewInjector;

    .prologue
    .line 22
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment$$ViewInjector$2;, "Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment$$ViewInjector$2;"
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment$$ViewInjector$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment$$ViewInjector;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment$$ViewInjector$2;->val$target:Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/View;

    .prologue
    .line 26
    .local p0, "this":Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment$$ViewInjector$2;, "Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment$$ViewInjector$2;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment$$ViewInjector$2;->val$target:Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->onSelectClicked()V

    .line 27
    return-void
.end method
