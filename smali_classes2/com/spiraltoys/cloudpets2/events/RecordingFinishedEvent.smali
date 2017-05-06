.class public Lcom/spiraltoys/cloudpets2/events/RecordingFinishedEvent;
.super Ljava/lang/Object;
.source "RecordingFinishedEvent.java"


# instance fields
.field private mAudio:Lcom/spiraltoys/cloudpets2/audio/WavAudio;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/audio/WavAudio;)V
    .locals 0
    .param p1, "audio"    # Lcom/spiraltoys/cloudpets2/audio/WavAudio;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/events/RecordingFinishedEvent;->mAudio:Lcom/spiraltoys/cloudpets2/audio/WavAudio;

    .line 14
    return-void
.end method


# virtual methods
.method public getAudio()Lcom/spiraltoys/cloudpets2/audio/WavAudio;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/events/RecordingFinishedEvent;->mAudio:Lcom/spiraltoys/cloudpets2/audio/WavAudio;

    return-object v0
.end method
