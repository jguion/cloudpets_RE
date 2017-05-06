.class public Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;
.super Ljava/lang/Object;
.source "VoiceMessageDateFormatter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spiraltoys/cloudpets2/model/VoiceMessage;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "voiceMessage"    # Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;->mContext:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    .line 19
    return-void
.end method


# virtual methods
.method public getDetailedRelativeCreationDateString()Ljava/lang/String;
    .locals 20

    .prologue
    .line 22
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 23
    .local v13, "midnightCalendar":Ljava/util/Calendar;
    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 24
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 25
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 26
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 28
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 29
    .local v16, "nowCalendar":Ljava/util/Calendar;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long v18, v2, v4

    .line 31
    .local v18, "timeSinceMidnight":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;->mVoiceMessage:Lcom/spiraltoys/cloudpets2/model/VoiceMessage;

    invoke-virtual {v2}, Lcom/spiraltoys/cloudpets2/model/VoiceMessage;->getCreatedAt()Ljava/util/Date;

    move-result-object v11

    .line 33
    .local v11, "createdDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 34
    .local v17, "thenCalendar":Ljava/util/Calendar;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 36
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long v14, v2, v4

    .line 39
    .local v14, "difference":J
    cmp-long v2, v14, v18

    if-lez v2, :cond_0

    .line 40
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    const-wide/32 v8, 0x240c8400

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v12

    .line 45
    .local v12, "dateString":Ljava/lang/CharSequence;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/spiraltoys/cloudpets2/util/VoiceMessageDateFormatter;->mContext:Landroid/content/Context;

    const v3, 0x7f0800de

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 42
    .end local v12    # "dateString":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v12

    .restart local v12    # "dateString":Ljava/lang/CharSequence;
    goto :goto_0
.end method
