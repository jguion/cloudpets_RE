.class public abstract Lcom/parse/NotificationCompat$Builder$Style;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/NotificationCompat$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field mBuilder:Lcom/parse/NotificationCompat$Builder;

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/NotificationCompat$Builder$Style;->mSummaryTextSet:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/parse/NotificationCompat$Builder$Style;->mBuilder:Lcom/parse/NotificationCompat$Builder;

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/parse/NotificationCompat$Builder$Style;->mBuilder:Lcom/parse/NotificationCompat$Builder;

    invoke-virtual {v1}, Lcom/parse/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 361
    :cond_0
    return-object v0
.end method

.method public setBuilder(Lcom/parse/NotificationCompat$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/parse/NotificationCompat$Builder;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder$Style;->mBuilder:Lcom/parse/NotificationCompat$Builder;

    if-eq v0, p1, :cond_0

    .line 349
    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder$Style;->mBuilder:Lcom/parse/NotificationCompat$Builder;

    .line 350
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder$Style;->mBuilder:Lcom/parse/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder$Style;->mBuilder:Lcom/parse/NotificationCompat$Builder;

    invoke-virtual {v0, p0}, Lcom/parse/NotificationCompat$Builder;->setStyle(Lcom/parse/NotificationCompat$Builder$Style;)Lcom/parse/NotificationCompat$Builder;

    .line 354
    :cond_0
    return-void
.end method
