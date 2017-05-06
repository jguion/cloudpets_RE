.class public Lcom/parse/ParseGeoPoint;
.super Ljava/lang/Object;
.source "ParseGeoPoint.java"


# static fields
.field static EARTH_MEAN_RADIUS_KM:D

.field static EARTH_MEAN_RADIUS_MILE:D


# instance fields
.field private latitude:D

.field private longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-wide v0, 0x40b8e30000000000L    # 6371.0

    sput-wide v0, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_KM:D

    .line 37
    const-wide v0, 0x40aeed999999999aL    # 3958.8

    sput-wide v0, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_MILE:D

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide v0, p0, Lcom/parse/ParseGeoPoint;->latitude:D

    .line 40
    iput-wide v0, p0, Lcom/parse/ParseGeoPoint;->longitude:D

    .line 46
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide v0, p0, Lcom/parse/ParseGeoPoint;->latitude:D

    .line 40
    iput-wide v0, p0, Lcom/parse/ParseGeoPoint;->longitude:D

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseGeoPoint;->setLatitude(D)V

    .line 58
    invoke-virtual {p0, p3, p4}, Lcom/parse/ParseGeoPoint;->setLongitude(D)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/parse/ParseGeoPoint;)V
    .locals 4
    .param p1, "point"    # Lcom/parse/ParseGeoPoint;

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/parse/ParseGeoPoint;-><init>(DD)V

    .line 69
    return-void
.end method

.method public static getCurrentLocationInBackground(J)Lbolts/Task;
    .locals 4
    .param p0, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseGeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 174
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 175
    .local v0, "criteria":Landroid/location/Criteria;
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 176
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 177
    invoke-static {}, Lcom/parse/Parse;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0, p1, v0}, Lcom/parse/LocationNotifier;->getCurrentLocationAsync(Landroid/content/Context;JLandroid/location/Criteria;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseGeoPoint$1;

    invoke-direct {v2}, Lcom/parse/ParseGeoPoint$1;-><init>()V

    .line 178
    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 177
    return-object v1
.end method

.method public static getCurrentLocationInBackground(JLandroid/location/Criteria;)Lbolts/Task;
    .locals 2
    .param p0, "timeout"    # J
    .param p2, "criteria"    # Landroid/location/Criteria;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/location/Criteria;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseGeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    invoke-static {}, Lcom/parse/Parse;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/parse/LocationNotifier;->getCurrentLocationAsync(Landroid/content/Context;JLandroid/location/Criteria;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseGeoPoint$2;

    invoke-direct {v1}, Lcom/parse/ParseGeoPoint$2;-><init>()V

    .line 231
    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 230
    return-object v0
.end method

.method public static getCurrentLocationInBackground(JLandroid/location/Criteria;Lcom/parse/LocationCallback;)V
    .locals 2
    .param p0, "timeout"    # J
    .param p2, "criteria"    # Landroid/location/Criteria;
    .param p3, "callback"    # Lcom/parse/LocationCallback;

    .prologue
    .line 264
    invoke-static {p0, p1, p2}, Lcom/parse/ParseGeoPoint;->getCurrentLocationInBackground(JLandroid/location/Criteria;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 265
    return-void
.end method

.method public static getCurrentLocationInBackground(JLcom/parse/LocationCallback;)V
    .locals 2
    .param p0, "timeout"    # J
    .param p2, "callback"    # Lcom/parse/LocationCallback;

    .prologue
    .line 205
    invoke-static {p0, p1}, Lcom/parse/ParseGeoPoint;->getCurrentLocationInBackground(J)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 206
    return-void
.end method


# virtual methods
.method public distanceInKilometersTo(Lcom/parse/ParseGeoPoint;)D
    .locals 4
    .param p1, "point"    # Lcom/parse/ParseGeoPoint;

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/parse/ParseGeoPoint;->distanceInRadiansTo(Lcom/parse/ParseGeoPoint;)D

    move-result-wide v0

    sget-wide v2, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_KM:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public distanceInMilesTo(Lcom/parse/ParseGeoPoint;)D
    .locals 4
    .param p1, "point"    # Lcom/parse/ParseGeoPoint;

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/parse/ParseGeoPoint;->distanceInRadiansTo(Lcom/parse/ParseGeoPoint;)D

    move-result-wide v0

    sget-wide v2, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_MILE:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public distanceInRadiansTo(Lcom/parse/ParseGeoPoint;)D
    .locals 28
    .param p1, "point"    # Lcom/parse/ParseGeoPoint;

    .prologue
    .line 119
    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    .line 120
    .local v4, "d2r":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseGeoPoint;->latitude:D

    move-wide/from16 v22, v0

    mul-double v10, v22, v4

    .line 121
    .local v10, "lat1rad":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseGeoPoint;->longitude:D

    move-wide/from16 v22, v0

    mul-double v14, v22, v4

    .line 122
    .local v14, "long1rad":D
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v22

    mul-double v12, v22, v4

    .line 123
    .local v12, "lat2rad":D
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v22

    mul-double v16, v22, v4

    .line 124
    .local v16, "long2rad":D
    sub-double v6, v10, v12

    .line 125
    .local v6, "deltaLat":D
    sub-double v8, v14, v16

    .line 126
    .local v8, "deltaLong":D
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v22, v6, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    .line 127
    .local v18, "sinDeltaLatDiv2":D
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v22, v8, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    .line 130
    .local v20, "sinDeltaLongDiv2":D
    mul-double v22, v18, v18

    .line 131
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    mul-double v24, v24, v20

    mul-double v24, v24, v20

    add-double v2, v22, v24

    .line 133
    .local v2, "a":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 134
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->asin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    return-wide v22
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/parse/ParseGeoPoint;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/parse/ParseGeoPoint;->longitude:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 3
    .param p1, "latitude"    # D

    .prologue
    .line 78
    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Latitude must be within the range (-90.0, 90.0)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    iput-wide p1, p0, Lcom/parse/ParseGeoPoint;->latitude:D

    .line 82
    return-void
.end method

.method public setLongitude(D)V
    .locals 3
    .param p1, "longitude"    # D

    .prologue
    .line 98
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Longitude must be within the range (-180.0, 180.0)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    iput-wide p1, p0, Lcom/parse/ParseGeoPoint;->longitude:D

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 269
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "ParseGeoPoint[%.6f,%.6f]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/parse/ParseGeoPoint;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/parse/ParseGeoPoint;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
