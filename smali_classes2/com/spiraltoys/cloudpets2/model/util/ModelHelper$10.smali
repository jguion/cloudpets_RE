.class final Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$10;
.super Ljava/lang/Object;
.source "ModelHelper.java"

# interfaces
.implements Lcom/parse/GetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getProfileById(Ljava/lang/String;Lcom/parse/GetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/GetCallback",
        "<",
        "Lcom/spiraltoys/cloudpets2/model/Profile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/parse/GetCallback;


# direct methods
.method constructor <init>(Lcom/parse/GetCallback;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$10;->val$callback:Lcom/parse/GetCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 0

    .prologue
    .line 510
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$10;->done(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "profile"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    const/4 v1, 0x0

    .line 513
    if-eqz p2, :cond_0

    .line 514
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$10;->val$callback:Lcom/parse/GetCallback;

    invoke-interface {v0, v1, p2}, Lcom/parse/GetCallback;->done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$10;->val$callback:Lcom/parse/GetCallback;

    invoke-interface {v0, p1, v1}, Lcom/parse/GetCallback;->done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 510
    check-cast p1, Lcom/spiraltoys/cloudpets2/model/Profile;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$10;->done(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/ParseException;)V

    return-void
.end method
