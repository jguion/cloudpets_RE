.class final Landroid/databinding/ObservableDouble$1;
.super Ljava/lang/Object;
.source "ObservableDouble.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ObservableDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/databinding/ObservableDouble;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/databinding/ObservableDouble;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 75
    new-instance v0, Landroid/databinding/ObservableDouble;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Landroid/databinding/ObservableDouble;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/databinding/ObservableDouble$1;->createFromParcel(Landroid/os/Parcel;)Landroid/databinding/ObservableDouble;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/databinding/ObservableDouble;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 80
    new-array v0, p1, [Landroid/databinding/ObservableDouble;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/databinding/ObservableDouble$1;->newArray(I)[Landroid/databinding/ObservableDouble;

    move-result-object v0

    return-object v0
.end method
