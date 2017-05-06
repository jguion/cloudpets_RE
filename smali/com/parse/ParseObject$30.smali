.class Lcom/parse/ParseObject$30;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->deleteAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseObject;

    .prologue
    .line 2040
    iput-object p1, p0, Lcom/parse/ParseObject$30;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$30;->val$sessionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2043
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseObject$30;->this$0:Lcom/parse/ParseObject;

    # getter for: Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;
    invoke-static {v0}, Lcom/parse/ParseObject;->access$900(Lcom/parse/ParseObject;)Lcom/parse/ParseObject$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2044
    invoke-virtual {p1}, Lbolts/Task;->cast()Lbolts/Task;

    move-result-object v0

    .line 2046
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseObject$30;->this$0:Lcom/parse/ParseObject;

    iget-object v1, p0, Lcom/parse/ParseObject$30;->val$sessionToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->deleteAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2040
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$30;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
