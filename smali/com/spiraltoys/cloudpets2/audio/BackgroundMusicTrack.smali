.class public final enum Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;
.super Ljava/lang/Enum;
.source "BackgroundMusicTrack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

.field public static final enum BENTLEY_AMBIENT:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

.field public static final enum BUBBLES_AMBIENT:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

.field public static final enum CHARLEY_AMBIENT:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

.field public static final enum DIESEL_AMBIENT:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

.field public static final enum FRONT_END:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

.field public static final enum STARBURST_AMBIENT:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;


# instance fields
.field private mFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    const-string v1, "BENTLEY_AMBIENT"

    const-string v2, "background_music/BentleyTheBear_MusicAmb.mp3"

    invoke-direct {v0, v1, v4, v2}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->BENTLEY_AMBIENT:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    .line 11
    new-instance v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    const-string v1, "BUBBLES_AMBIENT"

    const-string v2, "background_music/BubblesTheBunny_MusicAmb.mp3"

    invoke-direct {v0, v1, v5, v2}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->BUBBLES_AMBIENT:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    .line 12
    new-instance v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    const-string v1, "CHARLEY_AMBIENT"

    const-string v2, "background_music/CharleyTheCat_MusicAmb.mp3"

    invoke-direct {v0, v1, v6, v2}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->CHARLEY_AMBIENT:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    .line 13
    new-instance v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    const-string v1, "DIESEL_AMBIENT"

    const-string v2, "background_music/DieselTheDog_MusicAmb.mp3"

    invoke-direct {v0, v1, v7, v2}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->DIESEL_AMBIENT:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    .line 14
    new-instance v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    const-string v1, "STARBURST_AMBIENT"

    const-string v2, "background_music/StarburstTheUnicorn_MusicAmb.mp3"

    invoke-direct {v0, v1, v8, v2}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->STARBURST_AMBIENT:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    .line 15
    new-instance v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    const-string v1, "FRONT_END"

    const/4 v2, 0x5

    const-string v3, "background_music/FE_MusicLoop.mp3"

    invoke-direct {v0, v1, v2, v3}, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->FRONT_END:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    sget-object v1, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->BENTLEY_AMBIENT:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->BUBBLES_AMBIENT:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    aput-object v1, v0, v5

    sget-object v1, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->CHARLEY_AMBIENT:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    aput-object v1, v0, v6

    sget-object v1, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->DIESEL_AMBIENT:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    aput-object v1, v0, v7

    sget-object v1, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->STARBURST_AMBIENT:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->FRONT_END:Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    aput-object v2, v0, v1

    sput-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->$VALUES:[Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->mFileName:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    return-object v0
.end method

.method public static values()[Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->$VALUES:[Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    invoke-virtual {v0}, [Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;

    return-object v0
.end method


# virtual methods
.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;->mFileName:Ljava/lang/String;

    return-object v0
.end method
