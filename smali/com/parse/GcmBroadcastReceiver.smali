.class public Lcom/parse/GcmBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GcmBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    const-class v0, Lcom/parse/PushService;

    invoke-static {p1, p2, v0}, Lcom/parse/ServiceUtils;->runWakefulIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)Z

    .line 22
    return-void
.end method
