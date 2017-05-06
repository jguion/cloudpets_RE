.class final Ltimber/log/Timber$1;
.super Ltimber/log/Timber$Tree;
.source "Timber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltimber/log/Timber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ltimber/log/Timber$Tree;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 168
    # getter for: Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;
    invoke-static {}, Ltimber/log/Timber;->access$100()[Ltimber/log/Timber$Tree;

    move-result-object v1

    .line 170
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 171
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 176
    # getter for: Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;
    invoke-static {}, Ltimber/log/Timber;->access$100()[Ltimber/log/Timber$Tree;

    move-result-object v1

    .line 178
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 179
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 216
    # getter for: Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;
    invoke-static {}, Ltimber/log/Timber;->access$100()[Ltimber/log/Timber$Tree;

    move-result-object v1

    .line 218
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 219
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 224
    # getter for: Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;
    invoke-static {}, Ltimber/log/Timber;->access$100()[Ltimber/log/Timber$Tree;

    move-result-object v1

    .line 226
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 227
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    :cond_0
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 184
    # getter for: Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;
    invoke-static {}, Ltimber/log/Timber;->access$100()[Ltimber/log/Timber$Tree;

    move-result-object v1

    .line 186
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 187
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method

.method public varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 192
    # getter for: Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;
    invoke-static {}, Ltimber/log/Timber;->access$100()[Ltimber/log/Timber$Tree;

    move-result-object v1

    .line 194
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 195
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method protected log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 264
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Missing override for log method."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 248
    # getter for: Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;
    invoke-static {}, Ltimber/log/Timber;->access$100()[Ltimber/log/Timber$Tree;

    move-result-object v1

    .line 250
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 251
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    :cond_0
    return-void
.end method

.method public varargs log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 256
    # getter for: Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;
    invoke-static {}, Ltimber/log/Timber;->access$100()[Ltimber/log/Timber$Tree;

    move-result-object v1

    .line 258
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 259
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3, p4}, Ltimber/log/Timber$Tree;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    :cond_0
    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 152
    # getter for: Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;
    invoke-static {}, Ltimber/log/Timber;->access$100()[Ltimber/log/Timber$Tree;

    move-result-object v1

    .line 154
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 155
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method public varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 160
    # getter for: Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;
    invoke-static {}, Ltimber/log/Timber;->access$100()[Ltimber/log/Timber$Tree;

    move-result-object v1

    .line 162
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 163
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 200
    # getter for: Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;
    invoke-static {}, Ltimber/log/Timber;->access$100()[Ltimber/log/Timber$Tree;

    move-result-object v1

    .line 202
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 203
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_0
    return-void
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 208
    # getter for: Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;
    invoke-static {}, Ltimber/log/Timber;->access$100()[Ltimber/log/Timber$Tree;

    move-result-object v1

    .line 210
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 211
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method public varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 232
    # getter for: Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;
    invoke-static {}, Ltimber/log/Timber;->access$100()[Ltimber/log/Timber$Tree;

    move-result-object v1

    .line 234
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 235
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Ltimber/log/Timber$Tree;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    :cond_0
    return-void
.end method

.method public varargs wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 240
    # getter for: Ltimber/log/Timber;->forestAsArray:[Ltimber/log/Timber$Tree;
    invoke-static {}, Ltimber/log/Timber;->access$100()[Ltimber/log/Timber$Tree;

    move-result-object v1

    .line 242
    .local v1, "forest":[Ltimber/log/Timber$Tree;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v1

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 243
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2, p3}, Ltimber/log/Timber$Tree;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method
