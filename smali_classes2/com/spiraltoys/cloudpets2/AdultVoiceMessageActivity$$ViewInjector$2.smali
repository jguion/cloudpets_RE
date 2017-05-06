.class Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity$$ViewInjector$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "AdultVoiceMessageActivity$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity$$ViewInjector;

.field final synthetic val$target:Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity$$ViewInjector;Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity$$ViewInjector;

    .prologue
    .line 23
    .local p0, "this":Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity$$ViewInjector$2;, "Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity$$ViewInjector$2;"
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity$$ViewInjector$2;->this$0:Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity$$ViewInjector;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity$$ViewInjector$2;->val$target:Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/View;

    .prologue
    .line 27
    .local p0, "this":Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity$$ViewInjector$2;, "Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity$$ViewInjector$2;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity$$ViewInjector$2;->val$target:Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/AdultVoiceMessageActivity;->onDeleteClicked()V

    .line 28
    return-void
.end method
