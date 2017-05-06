.class public Lcom/spiraltoys/cloudpets2/events/StoryClickedEvent;
.super Ljava/lang/Object;
.source "StoryClickedEvent.java"


# instance fields
.field private mStory:Lcom/spiraltoys/cloudpets2/model/Story;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/model/Story;)V
    .locals 0
    .param p1, "Story"    # Lcom/spiraltoys/cloudpets2/model/Story;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/events/StoryClickedEvent;->mStory:Lcom/spiraltoys/cloudpets2/model/Story;

    .line 11
    return-void
.end method


# virtual methods
.method public getStory()Lcom/spiraltoys/cloudpets2/model/Story;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/events/StoryClickedEvent;->mStory:Lcom/spiraltoys/cloudpets2/model/Story;

    return-object v0
.end method
