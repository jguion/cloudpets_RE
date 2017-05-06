.class Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3$1;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3;->done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3;

.field final synthetic val$parseUser:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3;Lcom/parse/ParseUser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3$1;->val$parseUser:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3$1;->this$0:Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3;

    iget-object v0, v0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3;->val$callback:Lcom/parse/LogInCallback;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3$1;->val$parseUser:Lcom/parse/ParseUser;

    invoke-interface {v0, v1, p1}, Lcom/parse/LogInCallback;->done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    .line 194
    return-void
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 190
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/AccountHelper$3$1;->done(Lcom/parse/ParseException;)V

    return-void
.end method
