.class public Lcom/spiraltoys/cloudpets2/events/ProfilePickerItemClickedEvent;
.super Ljava/lang/Object;
.source "ProfilePickerItemClickedEvent.java"


# instance fields
.field private mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 0
    .param p1, "clickedProfile"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/events/ProfilePickerItemClickedEvent;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 14
    return-void
.end method


# virtual methods
.method public getClickedProfile()Lcom/spiraltoys/cloudpets2/model/Profile;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/events/ProfilePickerItemClickedEvent;->mProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    return-object v0
.end method
