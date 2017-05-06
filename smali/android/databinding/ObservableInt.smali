.class public Landroid/databinding/ObservableInt;
.super Landroid/databinding/BaseObservable;
.source "ObservableInt.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/databinding/ObservableInt;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Landroid/databinding/ObservableInt$1;

    invoke-direct {v0}, Landroid/databinding/ObservableInt$1;-><init>()V

    sput-object v0, Landroid/databinding/ObservableInt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/databinding/BaseObservable;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/databinding/BaseObservable;-><init>()V

    .line 40
    iput p1, p0, Landroid/databinding/ObservableInt;->mValue:I

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public get()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Landroid/databinding/ObservableInt;->mValue:I

    return v0
.end method

.method public set(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 54
    iget v0, p0, Landroid/databinding/ObservableInt;->mValue:I

    if-eq p1, v0, :cond_0

    .line 55
    iput p1, p0, Landroid/databinding/ObservableInt;->mValue:I

    .line 56
    invoke-virtual {p0}, Landroid/databinding/ObservableInt;->notifyChange()V

    .line 58
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    iget v0, p0, Landroid/databinding/ObservableInt;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return-void
.end method
