.class final Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$3;
.super Ljava/lang/Object;
.source "ModelHelper.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->saveVoiceMessages(Ljava/util/List;Lcom/parse/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/parse/SaveCallback;

.field final synthetic val$voiceMessages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/SaveCallback;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$3;->val$callback:Lcom/parse/SaveCallback;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$3;->val$voiceMessages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 3
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1}, Lcom/parse/ParseException;->printStackTrace()V

    .line 113
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$3;->val$callback:Lcom/parse/SaveCallback;

    invoke-interface {v0, p1}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V

    .line 127
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v0, "voice_messages"

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$3;->val$voiceMessages:Ljava/util/List;

    new-instance v2, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$3$1;

    invoke-direct {v2, p0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$3$1;-><init>(Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$3;)V

    invoke-static {v0, v1, v2}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;Lcom/parse/SaveCallback;)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 108
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$3;->done(Lcom/parse/ParseException;)V

    return-void
.end method
