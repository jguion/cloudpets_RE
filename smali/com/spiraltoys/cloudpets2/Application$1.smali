.class Lcom/spiraltoys/cloudpets2/Application$1;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/Application;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/Application;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/Application;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/Application;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/Application$1;->this$0:Lcom/spiraltoys/cloudpets2/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    const-string v0, "com.parse.push"

    const-string v1, "successfully subscribed to the broadcast channel."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v0, "com.parse.push"

    const-string v1, "failed to subscribe for push"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 72
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/Application$1;->done(Lcom/parse/ParseException;)V

    return-void
.end method
