.class public Lde/greenrobot/event/util/ErrorDialogFragmentFactory$Honeycomb;
.super Lde/greenrobot/event/util/ErrorDialogFragmentFactory;
.source "ErrorDialogFragmentFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/event/util/ErrorDialogFragmentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Honeycomb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/event/util/ErrorDialogFragmentFactory",
        "<",
        "Landroid/app/Fragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lde/greenrobot/event/util/ErrorDialogConfig;)V
    .locals 0
    .param p1, "config"    # Lde/greenrobot/event/util/ErrorDialogConfig;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;-><init>(Lde/greenrobot/event/util/ErrorDialogConfig;)V

    .line 89
    return-void
.end method


# virtual methods
.method protected createErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroid/app/Fragment;
    .locals 1
    .param p1, "event"    # Lde/greenrobot/event/util/ThrowableFailureEvent;
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 92
    new-instance v0, Lde/greenrobot/event/util/ErrorDialogFragments$Honeycomb;

    invoke-direct {v0}, Lde/greenrobot/event/util/ErrorDialogFragments$Honeycomb;-><init>()V

    .line 93
    .local v0, "errorFragment":Lde/greenrobot/event/util/ErrorDialogFragments$Honeycomb;
    invoke-virtual {v0, p2}, Lde/greenrobot/event/util/ErrorDialogFragments$Honeycomb;->setArguments(Landroid/os/Bundle;)V

    .line 94
    return-object v0
.end method

.method protected bridge synthetic createErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lde/greenrobot/event/util/ThrowableFailureEvent;
    .param p2, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory$Honeycomb;->createErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method
