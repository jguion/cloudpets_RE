.class Lcom/google/common/collect/Sets$PowerSet$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$PowerSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<",
        "Ljava/util/Set",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Sets$PowerSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$PowerSet;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 1299
    .local p0, "this":Lcom/google/common/collect/Sets$PowerSet$1;, "Lcom/google/common/collect/Sets$PowerSet.1;"
    iput-object p1, p0, Lcom/google/common/collect/Sets$PowerSet$1;->this$0:Lcom/google/common/collect/Sets$PowerSet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1299
    .local p0, "this":Lcom/google/common/collect/Sets$PowerSet$1;, "Lcom/google/common/collect/Sets$PowerSet.1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$PowerSet$1;->get(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected get(I)Ljava/util/Set;
    .locals 2
    .param p1, "setBits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1301
    .local p0, "this":Lcom/google/common/collect/Sets$PowerSet$1;, "Lcom/google/common/collect/Sets$PowerSet.1;"
    new-instance v0, Lcom/google/common/collect/Sets$SubSet;

    iget-object v1, p0, Lcom/google/common/collect/Sets$PowerSet$1;->this$0:Lcom/google/common/collect/Sets$PowerSet;

    iget-object v1, v1, Lcom/google/common/collect/Sets$PowerSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/Sets$SubSet;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    return-object v0
.end method
