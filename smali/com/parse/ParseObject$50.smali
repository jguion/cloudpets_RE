.class final Lcom/parse/ParseObject$50;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;Z)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$includeAllChildren:Z

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$objects:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 3587
    iput-object p1, p0, Lcom/parse/ParseObject$50;->val$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/parse/ParseObject$50;->val$objects:Ljava/util/List;

    iput-boolean p3, p0, Lcom/parse/ParseObject$50;->val$includeAllChildren:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
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
    .line 3590
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v1

    iget-object v0, p0, Lcom/parse/ParseObject$50;->val$name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject$50;->val$name:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/parse/ParseObject$50;->val$objects:Ljava/util/List;

    iget-boolean v3, p0, Lcom/parse/ParseObject$50;->val$includeAllChildren:Z

    invoke-virtual {v1, v0, v2, v3}, Lcom/parse/OfflineStore;->pinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;Z)Lbolts/Task;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "_default"

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
    .line 3587
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$50;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
