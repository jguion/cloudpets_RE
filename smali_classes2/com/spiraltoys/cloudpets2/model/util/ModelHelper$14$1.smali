.class Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14$1;
.super Ljava/lang/Object;
.source "ModelHelper.java"

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;->done(Ljava/util/List;Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;

    .prologue
    .line 677
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 677
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14$1;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 3
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
    .line 680
    .local p1, "voiceMessages":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/VoiceMessage;>;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;->val$profile:Lcom/spiraltoys/cloudpets2/model/Profile;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;

    iget-boolean v1, v1, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;->val$excludeProfile:Z

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;

    iget-boolean v2, v2, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;->val$isParentalControlled:Z

    invoke-static {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->access$100(Lcom/spiraltoys/cloudpets2/model/Profile;ZZ)Lcom/parse/ParseQuery;

    move-result-object v0

    const-string v1, "voice_messages"

    .line 681
    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;

    iget-object v1, v1, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$14;->val$callback:Lcom/parse/FindCallback;

    .line 682
    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    .line 683
    return-void
.end method
