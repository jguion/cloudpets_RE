.class public final Lcom/google/android/gms/internal/zzarp$zzc;
.super Lcom/google/android/gms/internal/zzare;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzarp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzare",
        "<",
        "Lcom/google/android/gms/internal/zzarp$zzc;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public bqW:[B

.field public bqX:Ljava/lang/String;

.field public bqY:[[B

.field public bqZ:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzare;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarp$zzc;->dh()Lcom/google/android/gms/internal/zzarp$zzc;

    return-void
.end method


# virtual methods
.method public synthetic cP()Lcom/google/android/gms/internal/zzare;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarp$zzc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarp$zzc;

    return-object v0
.end method

.method public synthetic cQ()Lcom/google/android/gms/internal/zzark;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarp$zzc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarp$zzc;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzarp$zzc;->di()Lcom/google/android/gms/internal/zzarp$zzc;

    move-result-object v0

    return-object v0
.end method

.method public dh()Lcom/google/android/gms/internal/zzarp$zzc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzarn;->bqM:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqW:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqX:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzarn;->bqL:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqY:[[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqZ:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqv:Lcom/google/android/gms/internal/zzarg;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqE:I

    return-object p0
.end method

.method public di()Lcom/google/android/gms/internal/zzarp$zzc;
    .locals 2

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/zzare;->cP()Lcom/google/android/gms/internal/zzare;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzarp$zzc;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqY:[[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqY:[[B

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqY:[[B

    invoke-virtual {v1}, [[B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, v0, Lcom/google/android/gms/internal/zzarp$zzc;->bqY:[[B

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzarp$zzc;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzarp$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqW:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzarp$zzc;->bqW:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqX:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/zzarp$zzc;->bqX:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqY:[[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzarp$zzc;->bqY:[[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzari;->zza([[B[[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqZ:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzarp$zzc;->bqZ:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqv:Lcom/google/android/gms/internal/zzarg;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqv:Lcom/google/android/gms/internal/zzarg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarg;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p1, Lcom/google/android/gms/internal/zzarp$zzc;->bqv:Lcom/google/android/gms/internal/zzarg;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/internal/zzarp$zzc;->bqv:Lcom/google/android/gms/internal/zzarg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarg;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqX:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzarp$zzc;->bqX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqv:Lcom/google/android/gms/internal/zzarg;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzarp$zzc;->bqv:Lcom/google/android/gms/internal/zzarg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzarg;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqW:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqX:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqY:[[B

    invoke-static {v2}, Lcom/google/android/gms/internal/zzari;->zzb([[B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqZ:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqv:Lcom/google/android/gms/internal/zzarg;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqv:Lcom/google/android/gms/internal/zzarg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzarg;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x4d5

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqv:Lcom/google/android/gms/internal/zzarg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzarg;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public zza(Lcom/google/android/gms/internal/zzard;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqW:[B

    sget-object v1, Lcom/google/android/gms/internal/zzarn;->bqM:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqW:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzard;->zza(I[B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqY:[[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqY:[[B

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqY:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqY:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzard;->zza(I[B)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqZ:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqZ:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzard;->zzj(IZ)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqX:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqX:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzard;->zzr(ILjava/lang/String;)V

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzare;->zza(Lcom/google/android/gms/internal/zzard;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzarc;)Lcom/google/android/gms/internal/zzark;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzarp$zzc;->zzco(Lcom/google/android/gms/internal/zzarc;)Lcom/google/android/gms/internal/zzarp$zzc;

    move-result-object v0

    return-object v0
.end method

.method public zzco(Lcom/google/android/gms/internal/zzarc;)Lcom/google/android/gms/internal/zzarp$zzc;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarc;->cw()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzare;->zza(Lcom/google/android/gms/internal/zzarc;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarc;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqW:[B

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzarn;->zzc(Lcom/google/android/gms/internal/zzarc;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqY:[[B

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqY:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarc;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarc;->cw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqY:[[B

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarc;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqY:[[B

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarc;->cC()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqZ:Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzarc;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqX:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method protected zzx()I
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzare;->zzx()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqW:[B

    sget-object v3, Lcom/google/android/gms/internal/zzarn;->bqM:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqW:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzard;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqY:[[B

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqY:[[B

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqY:[[B

    array-length v4, v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqY:[[B

    aget-object v4, v4, v1

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzard;->zzbg([B)I

    move-result v4

    add-int/2addr v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqZ:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqZ:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzard;->zzk(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqX:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzarp$zzc;->bqX:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzard;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method
