.class final Lcom/parse/Parse$1;
.super Ljava/lang/Object;
.source "Parse.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/Parse;->initialize(Lcom/parse/Parse$Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/parse/Parse$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/parse/Parse$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/parse/Parse$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/parse/Parse;->getEventuallyQueue(Landroid/content/Context;)Lcom/parse/ParseEventuallyQueue;
    invoke-static {v0}, Lcom/parse/Parse;->access$800(Landroid/content/Context;)Lcom/parse/ParseEventuallyQueue;

    .line 418
    const/4 v0, 0x0

    return-object v0
.end method
