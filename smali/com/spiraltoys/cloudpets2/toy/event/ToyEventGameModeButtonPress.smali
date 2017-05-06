.class public Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress;
.super Ljava/lang/Object;
.source "ToyEventGameModeButtonPress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;
    }
.end annotation


# instance fields
.field private mButton:Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;)V
    .locals 0
    .param p1, "button"    # Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress;->mButton:Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    .line 17
    return-void
.end method


# virtual methods
.method public getButton()Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress;->mButton:Lcom/spiraltoys/cloudpets2/toy/event/ToyEventGameModeButtonPress$Button;

    return-object v0
.end method
