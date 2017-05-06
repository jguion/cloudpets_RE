.class Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1$2;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;

.field final synthetic val$e:Lcom/parse/ParseException;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;Lcom/parse/ParseException;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1$2;->this$1:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1$2;->val$e:Lcom/parse/ParseException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1$2;->this$1:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1;->val$callback:Lcom/parse/SaveCallback;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$1$1$2;->val$e:Lcom/parse/ParseException;

    invoke-interface {v0, v1}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V

    .line 120
    return-void
.end method
