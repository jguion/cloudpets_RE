.class public Landroid/databinding/ObservableParcelable;
.super Landroid/databinding/ObservableField;
.source "ObservableParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Landroid/databinding/ObservableField",
        "<TT;>;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/databinding/ObservableParcelable;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Landroid/databinding/ObservableParcelable$1;

    invoke-direct {v0}, Landroid/databinding/ObservableParcelable$1;-><init>()V

    sput-object v0, Landroid/databinding/ObservableParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    .local p0, "this":Landroid/databinding/ObservableParcelable;, "Landroid/databinding/ObservableParcelable<TT;>;"
    invoke-direct {p0}, Landroid/databinding/ObservableField;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Landroid/databinding/ObservableParcelable;, "Landroid/databinding/ObservableParcelable<TT;>;"
    .local p1, "value":Landroid/os/Parcelable;, "TT;"
    invoke-direct {p0, p1}, Landroid/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Landroid/databinding/ObservableParcelable;, "Landroid/databinding/ObservableParcelable<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 57
    .local p0, "this":Landroid/databinding/ObservableParcelable;, "Landroid/databinding/ObservableParcelable<TT;>;"
    invoke-virtual {p0}, Landroid/databinding/ObservableParcelable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 58
    return-void
.end method
