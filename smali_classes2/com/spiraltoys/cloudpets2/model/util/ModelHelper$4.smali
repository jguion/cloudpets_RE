.class final Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$4;
.super Ljava/lang/Object;
.source "ModelHelper.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->saveProfile(Lcom/spiraltoys/cloudpets2/model/Profile;Lcom/parse/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/parse/SaveCallback;

.field final synthetic val$profile:Lcom/spiraltoys/cloudpets2/model/Profile;


# direct methods
.method constructor <init>(Lcom/parse/SaveCallback;Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$4;->val$callback:Lcom/parse/SaveCallback;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$4;->val$profile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 3
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/parse/ParseException;->printStackTrace()V

    .line 137
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$4;->val$callback:Lcom/parse/SaveCallback;

    invoke-interface {v0, p1}, Lcom/parse/SaveCallback;->done(Lcom/parse/ParseException;)V

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$4;->val$profile:Lcom/spiraltoys/cloudpets2/model/Profile;

    const-string v1, "profiles"

    iget-object v2, p0, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$4;->val$callback:Lcom/parse/SaveCallback;

    invoke-virtual {v0, v1, v2}, Lcom/spiraltoys/cloudpets2/model/Profile;->pinInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 132
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper$4;->done(Lcom/parse/ParseException;)V

    return-void
.end method
