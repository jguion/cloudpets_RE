.class public Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;
.super Lcom/parse/ParseObject;
.source "ProfilePortrait.java"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "ProfilePortrait"
.end annotation


# static fields
.field public static final LOCAL_FILENAME:Ljava/lang/String; = "localFilename"

.field public static final PORTRAIT:Ljava/lang/String; = "portrait"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile()Lcom/parse/ParseFile;
    .locals 1

    .prologue
    .line 29
    const-string v0, "portrait"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->getParseFile(Ljava/lang/String;)Lcom/parse/ParseFile;

    move-result-object v0

    return-object v0
.end method

.method public getLocalFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "localFilename"

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFile(Lcom/parse/ParseFile;)V
    .locals 1
    .param p1, "portrait"    # Lcom/parse/ParseFile;

    .prologue
    .line 33
    const-string v0, "portrait"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public setLocalFilename(Ljava/lang/String;)V
    .locals 1
    .param p1, "localFilename"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string v0, "localFilename"

    invoke-virtual {p0, v0, p1}, Lcom/spiraltoys/cloudpets2/model/ProfilePortrait;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    return-void
.end method
