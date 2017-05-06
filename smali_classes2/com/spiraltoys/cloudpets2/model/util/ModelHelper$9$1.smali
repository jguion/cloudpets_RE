.class Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9$1;
.super Ljava/lang/Object;
.source "ModelHelper.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9;->done(Lcom/spiraltoys/cloudpets2/model/FriendRecord;Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9;

.field final synthetic val$friendRecord:Lcom/spiraltoys/cloudpets2/model/FriendRecord;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9;Lcom/spiraltoys/cloudpets2/model/FriendRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9$1;->val$friendRecord:Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9;->val$callback:Lcom/parse/FunctionCallback;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9$1;->val$friendRecord:Lcom/spiraltoys/cloudpets2/model/FriendRecord;

    invoke-interface {v0, v1, p1}, Lcom/parse/FunctionCallback;->done(Ljava/lang/Object;Lcom/parse/ParseException;)V

    .line 418
    return-void
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 414
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$9$1;->done(Lcom/parse/ParseException;)V

    return-void
.end method
