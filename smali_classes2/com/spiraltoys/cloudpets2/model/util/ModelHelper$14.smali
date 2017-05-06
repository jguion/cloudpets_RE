.class final Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;
.super Ljava/lang/Object;
.source "ModelHelper.java"

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getLocalVoiceMessagesWithServerFallback(Lcom/spiraltoys/cloudpets2/model/Profile;ZZLcom/parse/FindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/FindCallback",
        "<",
        "Lcom/spiraltoys/cloudpets2/model/VoiceMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/parse/FindCallback;

.field final synthetic val$excludeProfile:Z

.field final synthetic val$isParentalControlled:Z

.field final synthetic val$profile:Lcom/spiraltoys/cloudpets2/model/Profile;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/model/Profile;ZZLcom/parse/FindCallback;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;->val$profile:Lcom/spiraltoys/cloudpets2/model/Profile;

    iput-boolean p2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;->val$excludeProfile:Z

    iput-boolean p3, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;->val$isParentalControlled:Z

    iput-object p4, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;->val$callback:Lcom/parse/FindCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 672
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 2
    .param p2, "e"    # Lcom/parse/ParseException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/VoiceMessage;",
            ">;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 676
    .local p1, "voiceMessages":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/VoiceMessage;>;"
    if-nez p2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    :cond_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14$1;

    invoke-direct {v0, p0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14$1;-><init>(Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllVoiceMessagesToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 688
    :goto_0
    return-void

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;->val$callback:Lcom/parse/FindCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/parse/FindCallback;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    goto :goto_0
.end method
