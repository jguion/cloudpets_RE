.class public Lcom/spiraltoys/cloudpets2/events/VoiceMessageSelectedForEditEvent;
.super Ljava/lang/Object;
.source "VoiceMessageSelectedForEditEvent.java"


# instance fields
.field private mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V
    .locals 0
    .param p1, "voiceMessage"    # Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/events/VoiceMessageSelectedForEditEvent;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .line 14
    return-void
.end method


# virtual methods
.method public getVoiceMessage()Lcom/spiraltoys/cloudpets2/model/VoiceMessage;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/events/VoiceMessageSelectedForEditEvent;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    return-object v0
.end method
