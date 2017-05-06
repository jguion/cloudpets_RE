.class Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask$1;
.super Ljava/lang/Object;
.source "FadingMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;

.field final synthetic val$fadeTransitionListener:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask$1;->this$1:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask;

    iput-object p2, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask$1;->val$fadeTransitionListener:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTimerTask$1;->val$fadeTransitionListener:Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/util/FadingMediaPlayer$FadeTransitionListener;->onFadeComplete()V

    .line 115
    return-void
.end method
