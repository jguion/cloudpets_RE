.class public Lcom/parse/CloudPetsPushBroadcastReceiver;
.super Lcom/parse/ParsePushBroadcastReceiver;
.source "CloudPetsPushBroadcastReceiver.java"


# static fields
.field public static final NOTIFICATION_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "CLOUD_PETS"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/parse/CloudPetsPushBroadcastReceiver;->NOTIFICATION_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/parse/ParsePushBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPushReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    const/4 v4, 0x0

    .line 28
    .local v4, "pushData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    const-string v6, "com.parse.Data"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "pushData":Lorg/json/JSONObject;
    .local v5, "pushData":Lorg/json/JSONObject;
    move-object v4, v5

    .line 33
    .end local v5    # "pushData":Lorg/json/JSONObject;
    .restart local v4    # "pushData":Lorg/json/JSONObject;
    :goto_0
    const/4 v0, 0x0

    .line 34
    .local v0, "action":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 35
    const-string v6, "action"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_0
    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 40
    .local v3, "notification":Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v1, "broadcastIntent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 42
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 47
    .end local v1    # "broadcastIntent":Landroid/content/Intent;
    .end local v3    # "notification":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/parse/CloudPetsPushBroadcastReceiver;->getNotification(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v3

    .line 48
    .local v3, "notification":Landroid/app/Notification;
    if-eqz v3, :cond_2

    .line 49
    invoke-static {}, Lcom/parse/ParseNotificationManager;->getInstance()Lcom/parse/ParseNotificationManager;

    move-result-object v7

    monitor-enter v7

    .line 50
    :try_start_1
    invoke-static {}, Lcom/parse/ParseNotificationManager;->getInstance()Lcom/parse/ParseNotificationManager;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/parse/ParseNotificationManager;->setShouldShowNotifications(Z)V

    .line 51
    invoke-static {}, Lcom/parse/ParseNotificationManager;->getInstance()Lcom/parse/ParseNotificationManager;

    move-result-object v6

    invoke-virtual {v6, p1, v3}, Lcom/parse/ParseNotificationManager;->showNotification(Landroid/content/Context;Landroid/app/Notification;)V

    .line 52
    invoke-static {}, Lcom/parse/ParseNotificationManager;->getInstance()Lcom/parse/ParseNotificationManager;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/parse/ParseNotificationManager;->setShouldShowNotifications(Z)V

    .line 53
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-virtual {p0, p1, v3}, Lcom/parse/CloudPetsPushBroadcastReceiver;->showNotification(Landroid/content/Context;Landroid/app/Notification;)V

    .line 55
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v6

    new-instance v7, Lcom/spiraltoys/cloudpets2/events/VoiceMessagePushNotificationReceivedEvent;

    invoke-direct {v7}, Lcom/spiraltoys/cloudpets2/events/VoiceMessagePushNotificationReceivedEvent;-><init>()V

    invoke-virtual {v6, v7}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 58
    :cond_2
    return-void

    .line 29
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "notification":Landroid/app/Notification;
    :catch_0
    move-exception v2

    .line 30
    .local v2, "ex":Lorg/json/JSONException;
    const-string v6, "com.parse.ParsePushReceiver"

    const-string v7, "Unexpected JSONException when receiving push data: "

    invoke-static {v6, v7, v2}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 53
    .end local v2    # "ex":Lorg/json/JSONException;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v3    # "notification":Landroid/app/Notification;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method public showNotification(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 63
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 65
    .local v0, "nm":Landroid/app/NotificationManager;
    :try_start_0
    sget v2, Lcom/parse/CloudPetsPushBroadcastReceiver;->NOTIFICATION_ID:I

    invoke-virtual {v0, v2, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0    # "nm":Landroid/app/NotificationManager;
    :cond_0
    :goto_0
    return-void

    .line 66
    .restart local v0    # "nm":Landroid/app/NotificationManager;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "sec":Ljava/lang/SecurityException;
    const/4 v2, -0x1

    iput v2, p2, Landroid/app/Notification;->defaults:I

    .line 68
    sget v2, Lcom/parse/CloudPetsPushBroadcastReceiver;->NOTIFICATION_ID:I

    invoke-virtual {v0, v2, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method
