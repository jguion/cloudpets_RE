.class public Lcom/parse/ParseEventuallyQueue$TestHelper;
.super Ljava/lang/Object;
.source "ParseEventuallyQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseEventuallyQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestHelper"
.end annotation


# static fields
.field public static final COMMAND_ENQUEUED:I = 0x3

.field public static final COMMAND_FAILED:I = 0x2

.field public static final COMMAND_NOT_ENQUEUED:I = 0x4

.field public static final COMMAND_OLD_FORMAT_DISCARDED:I = 0x8

.field public static final COMMAND_SUCCESSFUL:I = 0x1

.field private static final MAX_EVENTS:I = 0x3e8

.field public static final NETWORK_DOWN:I = 0x7

.field public static final OBJECT_REMOVED:I = 0x6

.field public static final OBJECT_UPDATED:I = 0x5


# instance fields
.field private events:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseEventuallyQueue$TestHelper;->events:Landroid/util/SparseArray;

    .line 170
    invoke-virtual {p0}, Lcom/parse/ParseEventuallyQueue$TestHelper;->clear()V

    .line 171
    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/ParseEventuallyQueue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parse/ParseEventuallyQueue$1;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/parse/ParseEventuallyQueue$TestHelper;-><init>()V

    return-void
.end method

.method public static getEventString(I)Ljava/lang/String;
    .locals 3
    .param p0, "event"    # I

    .prologue
    .line 145
    packed-switch p0, :pswitch_data_0

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered unknown event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :pswitch_0
    const-string v0, "COMMAND_SUCCESSFUL"

    .line 161
    :goto_0
    return-object v0

    .line 149
    :pswitch_1
    const-string v0, "COMMAND_FAILED"

    goto :goto_0

    .line 151
    :pswitch_2
    const-string v0, "COMMAND_ENQUEUED"

    goto :goto_0

    .line 153
    :pswitch_3
    const-string v0, "COMMAND_NOT_ENQUEUED"

    goto :goto_0

    .line 155
    :pswitch_4
    const-string v0, "OBJECT_UPDATED"

    goto :goto_0

    .line 157
    :pswitch_5
    const-string v0, "OBJECT_REMOVED"

    goto :goto_0

    .line 159
    :pswitch_6
    const-string v0, "NETWORK_DOWN"

    goto :goto_0

    .line 161
    :pswitch_7
    const-string v0, "COMMAND_OLD_FORMAT_DISCARDED"

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    const/16 v5, 0x3e8

    .line 174
    iget-object v2, p0, Lcom/parse/ParseEventuallyQueue$TestHelper;->events:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 175
    iget-object v2, p0, Lcom/parse/ParseEventuallyQueue$TestHelper;->events:Landroid/util/SparseArray;

    const/4 v3, 0x1

    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    iget-object v2, p0, Lcom/parse/ParseEventuallyQueue$TestHelper;->events:Landroid/util/SparseArray;

    const/4 v3, 0x2

    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    iget-object v2, p0, Lcom/parse/ParseEventuallyQueue$TestHelper;->events:Landroid/util/SparseArray;

    const/4 v3, 0x3

    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    iget-object v2, p0, Lcom/parse/ParseEventuallyQueue$TestHelper;->events:Landroid/util/SparseArray;

    const/4 v3, 0x4

    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    iget-object v2, p0, Lcom/parse/ParseEventuallyQueue$TestHelper;->events:Landroid/util/SparseArray;

    const/4 v3, 0x5

    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    iget-object v2, p0, Lcom/parse/ParseEventuallyQueue$TestHelper;->events:Landroid/util/SparseArray;

    const/4 v3, 0x6

    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    iget-object v2, p0, Lcom/parse/ParseEventuallyQueue$TestHelper;->events:Landroid/util/SparseArray;

    const/4 v3, 0x7

    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    iget-object v2, p0, Lcom/parse/ParseEventuallyQueue$TestHelper;->events:Landroid/util/SparseArray;

    const/16 v3, 0x8

    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/parse/ParseEventuallyQueue$TestHelper;->events:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/parse/ParseEventuallyQueue$TestHelper;->events:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 185
    .local v0, "event":I
    iget-object v2, p0, Lcom/parse/ParseEventuallyQueue$TestHelper;->events:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly(I)V

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "event":I
    :cond_0
    return-void
.end method

.method public getUnexpectedEvents()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v2, "unexpectedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/parse/ParseEventuallyQueue$TestHelper;->events:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 201
    iget-object v3, p0, Lcom/parse/ParseEventuallyQueue$TestHelper;->events:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 202
    .local v0, "event":I
    iget-object v3, p0, Lcom/parse/ParseEventuallyQueue$TestHelper;->events:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v3

    if-lez v3, :cond_0

    .line 203
    invoke-static {v0}, Lcom/parse/ParseEventuallyQueue$TestHelper;->getEventString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "event":I
    :cond_1
    return-object v2
.end method

.method public notify(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseEventuallyQueue$TestHelper;->notify(ILjava/lang/Throwable;)V

    .line 211
    return-void
.end method

.method public notify(ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/parse/ParseEventuallyQueue$TestHelper;->events:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 215
    return-void
.end method

.method public unexpectedEvents()I
    .locals 4

    .prologue
    .line 190
    const/4 v2, 0x0

    .line 191
    .local v2, "sum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/parse/ParseEventuallyQueue$TestHelper;->events:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/parse/ParseEventuallyQueue$TestHelper;->events:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 193
    .local v0, "event":I
    iget-object v3, p0, Lcom/parse/ParseEventuallyQueue$TestHelper;->events:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v3

    add-int/2addr v2, v3

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "event":I
    :cond_0
    return v2
.end method

.method public waitFor(I)Z
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseEventuallyQueue$TestHelper;->waitFor(II)Z

    move-result v0

    return v0
.end method

.method public waitFor(II)Z
    .locals 5
    .param p1, "event"    # I
    .param p2, "permits"    # I

    .prologue
    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseEventuallyQueue$TestHelper;->events:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p2, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 226
    :goto_0
    return v1

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 226
    const/4 v1, 0x0

    goto :goto_0
.end method
