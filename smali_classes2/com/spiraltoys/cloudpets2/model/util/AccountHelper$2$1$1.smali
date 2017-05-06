.class Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1$1;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1;->done(Lcom/parse/ParseException;)V
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
        "Lcom/spiraltoys/cloudpets2/model/Profile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1$1;->this$1:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 169
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1$1;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 1
    .param p2, "e"    # Lcom/parse/ParseException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1$1;->this$1:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$2;->val$callback:Lcom/parse/SaveCallback;

    invoke-interface {v0, p2}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V

    .line 173
    return-void
.end method
