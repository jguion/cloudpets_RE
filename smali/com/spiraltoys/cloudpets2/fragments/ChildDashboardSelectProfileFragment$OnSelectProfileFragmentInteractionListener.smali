.class public interface abstract Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment$OnSelectProfileFragmentInteractionListener;
.super Ljava/lang/Object;
.source "ChildDashboardSelectProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/fragments/ChildDashboardSelectProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSelectProfileFragmentInteractionListener"
.end annotation


# virtual methods
.method public abstract onProfilesSelected(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRefreshProfileList(Landroid/support/v4/widget/SwipeRefreshLayout;)V
.end method
