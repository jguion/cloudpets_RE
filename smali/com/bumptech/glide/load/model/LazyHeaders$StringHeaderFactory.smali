.class final Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;
.super Ljava/lang/Object;
.source "LazyHeaders.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/LazyHeaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/LazyHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringHeaderFactory"
.end annotation


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;->value:Ljava/lang/String;

    .line 151
    return-void
.end method


# virtual methods
.method public buildHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;->value:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 167
    instance-of v1, p1, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 168
    check-cast v0, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;

    .line 169
    .local v0, "other":Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;
    iget-object v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;->value:Ljava/lang/String;

    iget-object v2, v0, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 171
    .end local v0    # "other":Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringHeaderFactory{value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method