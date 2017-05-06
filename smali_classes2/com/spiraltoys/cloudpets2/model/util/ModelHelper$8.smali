.class final Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$8;
.super Ljava/lang/Object;
.source "ModelHelper.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->resendVerificationEmail(Lcom/parse/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/parse/SaveCallback;

.field final synthetic val$currentUser:Lcom/parse/ParseUser;

.field final synthetic val$originalEmail:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$8;->val$currentUser:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$8;->val$originalEmail:Ljava/lang/String;

    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$8;->val$callback:Lcom/parse/SaveCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$8;->val$currentUser:Lcom/parse/ParseUser;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$8;->val$originalEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->setEmail(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$8;->val$currentUser:Lcom/parse/ParseUser;

    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$8;->val$callback:Lcom/parse/SaveCallback;

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->saveEventually(Lcom/parse/SaveCallback;)V

    .line 386
    return-void
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 381
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$8;->done(Lcom/parse/ParseException;)V

    return-void
.end method
