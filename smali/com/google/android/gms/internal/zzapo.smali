.class public final Lcom/google/android/gms/internal/zzapo;
.super Lcom/google/android/gms/internal/zzapy;


# static fields
.field private static final bmu:Ljava/io/Reader;

.field private static final bmv:Ljava/lang/Object;


# instance fields
.field private final bmw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzapo$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzapo$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzapo;->bmu:Ljava/io/Reader;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzapo;->bmv:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzaoh;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzapo;->bmu:Ljava/io/Reader;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapy;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private bo()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private bp()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzapz;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public beginArray()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bok:Lcom/google/android/gms/internal/zzapz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapo;->zza(Lcom/google/android/gms/internal/zzapz;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaoe;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoe;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beginObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bom:Lcom/google/android/gms/internal/zzapz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapo;->zza(Lcom/google/android/gms/internal/zzapz;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaok;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaok;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bn()Lcom/google/android/gms/internal/zzapz;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bot:Lcom/google/android/gms/internal/zzapz;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bo()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/internal/zzaok;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->boo:Lcom/google/android/gms/internal/zzapz;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bon:Lcom/google/android/gms/internal/zzapz;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bol:Lcom/google/android/gms/internal/zzapz;

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lcom/google/android/gms/internal/zzaok;

    if-eqz v1, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bom:Lcom/google/android/gms/internal/zzapz;

    goto :goto_0

    :cond_5
    instance-of v1, v0, Lcom/google/android/gms/internal/zzaoe;

    if-eqz v1, :cond_6

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bok:Lcom/google/android/gms/internal/zzapz;

    goto :goto_0

    :cond_6
    instance-of v1, v0, Lcom/google/android/gms/internal/zzaon;

    if-eqz v1, :cond_a

    check-cast v0, Lcom/google/android/gms/internal/zzaon;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->bc()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bop:Lcom/google/android/gms/internal/zzapz;

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->ba()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bor:Lcom/google/android/gms/internal/zzapz;

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->bb()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->boq:Lcom/google/android/gms/internal/zzapz;

    goto :goto_0

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    instance-of v1, v0, Lcom/google/android/gms/internal/zzaoj;

    if-eqz v1, :cond_b

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bos:Lcom/google/android/gms/internal/zzapz;

    goto :goto_0

    :cond_b
    sget-object v1, Lcom/google/android/gms/internal/zzapo;->bmv:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bq()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->boo:Lcom/google/android/gms/internal/zzapz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapo;->zza(Lcom/google/android/gms/internal/zzapz;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/internal/zzaon;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzaon;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/zzapo;->bmv:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public endArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bol:Lcom/google/android/gms/internal/zzapz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapo;->zza(Lcom/google/android/gms/internal/zzapz;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    return-void
.end method

.method public endObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bon:Lcom/google/android/gms/internal/zzapz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapo;->zza(Lcom/google/android/gms/internal/zzapz;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    return-void
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->bon:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->bol:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bor:Lcom/google/android/gms/internal/zzapz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapo;->zza(Lcom/google/android/gms/internal/zzapz;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaon;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->getAsBoolean()Z

    move-result v0

    return v0
.end method

.method public nextDouble()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->boq:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->bop:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Lcom/google/android/gms/internal/zzapz;->boq:Lcom/google/android/gms/internal/zzapz;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaon;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->getAsDouble()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->isLenient()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x39

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    return-wide v0
.end method

.method public nextInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->boq:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->bop:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Lcom/google/android/gms/internal/zzapz;->boq:Lcom/google/android/gms/internal/zzapz;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaon;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->getAsInt()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    return v0
.end method

.method public nextLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->boq:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->bop:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Lcom/google/android/gms/internal/zzapz;->boq:Lcom/google/android/gms/internal/zzapz;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaon;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->getAsLong()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    return-wide v0
.end method

.method public nextName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->boo:Lcom/google/android/gms/internal/zzapz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapo;->zza(Lcom/google/android/gms/internal/zzapz;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzapo;->bmw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public nextNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzapz;->bos:Lcom/google/android/gms/internal/zzapz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzapo;->zza(Lcom/google/android/gms/internal/zzapz;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    return-void
.end method

.method public nextString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->bop:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->boq:Lcom/google/android/gms/internal/zzapz;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Lcom/google/android/gms/internal/zzapz;->bop:Lcom/google/android/gms/internal/zzapz;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaon;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaon;->aR()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public skipValue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->bn()Lcom/google/android/gms/internal/zzapz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzapz;->boo:Lcom/google/android/gms/internal/zzapz;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapo;->nextName()Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapo;->bp()Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
