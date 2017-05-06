.class final Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2;
.super Ljava/lang/Object;
.source "ModelHelper.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->saveVoiceMessage(Lcom/spiraltoys/cloudpets2/model/VoiceMessage;Lcom/parse/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/parse/SaveCallback;

.field final synthetic val$voiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;


# direct methods
.method constructor <init>(Lcom/parse/SaveCallback;Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2;->val$callback:Lcom/parse/SaveCallback;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2;->val$voiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 3
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/parse/ParseException;->printStackTrace()V

    .line 88
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2;->val$callback:Lcom/parse/SaveCallback;

    invoke-interface {v0, p1}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V

    .line 102
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2;->val$voiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    const-string v1, "voice_messages"

    new-instance v2, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2$1;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2$1;-><init>(Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->pinInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 83
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$2;->done(Lcom/parse/ParseException;)V

    return-void
.end method
