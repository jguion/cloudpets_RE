.class Lcom/parse/ParseACL$Permissions;
.super Ljava/lang/Object;
.source "ParseACL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseACL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Permissions"
.end annotation


# static fields
.field private static final READ_PERMISSION:Ljava/lang/String; = "read"

.field private static final WRITE_PERMISSION:Ljava/lang/String; = "write"


# instance fields
.field private final readPermission:Z

.field private final writePermission:Z


# direct methods
.method constructor <init>(Lcom/parse/ParseACL$Permissions;)V
    .locals 1
    .param p1, "permissions"    # Lcom/parse/ParseACL$Permissions;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-boolean v0, p1, Lcom/parse/ParseACL$Permissions;->readPermission:Z

    iput-boolean v0, p0, Lcom/parse/ParseACL$Permissions;->readPermission:Z

    .line 45
    iget-boolean v0, p1, Lcom/parse/ParseACL$Permissions;->writePermission:Z

    iput-boolean v0, p0, Lcom/parse/ParseACL$Permissions;->writePermission:Z

    .line 46
    return-void
.end method

.method constructor <init>(ZZ)V
    .locals 0
    .param p1, "readPermission"    # Z
    .param p2, "write"    # Z

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean p1, p0, Lcom/parse/ParseACL$Permissions;->readPermission:Z

    .line 40
    iput-boolean p2, p0, Lcom/parse/ParseACL$Permissions;->writePermission:Z

    .line 41
    return-void
.end method

.method static createPermissionsFromJSONObject(Lorg/json/JSONObject;)Lcom/parse/ParseACL$Permissions;
    .locals 4
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    .line 73
    const-string v2, "read"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 74
    .local v0, "read":Z
    const-string v2, "write"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 75
    .local v1, "write":Z
    new-instance v2, Lcom/parse/ParseACL$Permissions;

    invoke-direct {v2, v0, v1}, Lcom/parse/ParseACL$Permissions;-><init>(ZZ)V

    return-object v2
.end method


# virtual methods
.method getReadPermission()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/parse/ParseACL$Permissions;->readPermission:Z

    return v0
.end method

.method getWritePermission()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/parse/ParseACL$Permissions;->writePermission:Z

    return v0
.end method

.method toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 49
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    iget-boolean v2, p0, Lcom/parse/ParseACL$Permissions;->readPermission:Z

    if-eqz v2, :cond_0

    .line 53
    const-string v2, "read"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 55
    :cond_0
    iget-boolean v2, p0, Lcom/parse/ParseACL$Permissions;->writePermission:Z

    if-eqz v2, :cond_1

    .line 56
    const-string v2, "write"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_1
    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
