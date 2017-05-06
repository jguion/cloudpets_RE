.class public Landroid/databinding/ViewDataBinding$IncludedLayouts;
.super Ljava/lang/Object;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "IncludedLayouts"
.end annotation


# instance fields
.field public final indexes:[[I

.field public final layoutIds:[[I

.field public final layouts:[[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "bindingCount"    # I

    .prologue
    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    new-array v0, p1, [[Ljava/lang/String;

    iput-object v0, p0, Landroid/databinding/ViewDataBinding$IncludedLayouts;->layouts:[[Ljava/lang/String;

    .line 853
    new-array v0, p1, [[I

    iput-object v0, p0, Landroid/databinding/ViewDataBinding$IncludedLayouts;->indexes:[[I

    .line 854
    new-array v0, p1, [[I

    iput-object v0, p0, Landroid/databinding/ViewDataBinding$IncludedLayouts;->layoutIds:[[I

    .line 855
    return-void
.end method


# virtual methods
.method public setIncludes(I[Ljava/lang/String;[I[I)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "layouts"    # [Ljava/lang/String;
    .param p3, "indexes"    # [I
    .param p4, "layoutIds"    # [I

    .prologue
    .line 858
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$IncludedLayouts;->layouts:[[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 859
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$IncludedLayouts;->indexes:[[I

    aput-object p3, v0, p1

    .line 860
    iget-object v0, p0, Landroid/databinding/ViewDataBinding$IncludedLayouts;->layoutIds:[[I

    aput-object p4, v0, p1

    .line 861
    return-void
.end method
