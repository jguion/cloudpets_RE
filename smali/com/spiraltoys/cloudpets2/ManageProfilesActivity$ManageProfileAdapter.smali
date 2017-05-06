.class Lcom/spiraltoys/cloudpets2/ManageProfilesActivity$ManageProfileAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "ManageProfilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManageProfileAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;Landroid/app/FragmentManager;)V
    .locals 0
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity$ManageProfileAdapter;->this$0:Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;

    .line 98
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 99
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 104
    packed-switch p1, :pswitch_data_0

    .line 111
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 106
    :pswitch_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/fragments/ProfilesFragment;-><init>()V

    goto :goto_0

    .line 108
    :pswitch_1
    new-instance v0, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;

    invoke-direct {v0}, Lcom/spiraltoys/cloudpets2/fragments/FriendRequestsFragment;-><init>()V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity$ManageProfileAdapter;->this$0:Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;->TAB_TITLES:[I
    invoke-static {}, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;->access$000()[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/ManageProfilesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
