.class Lcom/spiraltoys/cloudpets2/audio/WavRecorder$1;
.super Ljava/lang/Object;
.source "WavRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->startRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/audio/WavRecorder;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/audio/WavRecorder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/audio/WavRecorder;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/audio/WavRecorder$1;->this$0:Lcom/spiraltoys/cloudpets2/audio/WavRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/WavRecorder$1;->this$0:Lcom/spiraltoys/cloudpets2/audio/WavRecorder;

    # invokes: Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->writeAudioDataToFile()V
    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/audio/WavRecorder;->access$000(Lcom/spiraltoys/cloudpets2/audio/WavRecorder;)V

    .line 47
    return-void
.end method
