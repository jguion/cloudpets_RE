.class Lcom/parse/ParseUser$9$1;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$9;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser$9;

.field final synthetic val$newCurrent:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$9;Lcom/parse/ParseUser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseUser$9;

    .prologue
    .line 767
    iput-object p1, p0, Lcom/parse/ParseUser$9$1;->this$0:Lcom/parse/ParseUser$9;

    iput-object p2, p0, Lcom/parse/ParseUser$9$1;->val$newCurrent:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParseUser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/ParseUser;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 770
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseUser$9$1;->val$newCurrent:Lcom/parse/ParseUser;

    return-object v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 767
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$9$1;->then(Lbolts/Task;)Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method
