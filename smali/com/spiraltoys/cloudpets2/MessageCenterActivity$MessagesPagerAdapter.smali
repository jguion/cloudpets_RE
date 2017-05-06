.class Lcom/spiraltoys/cloudpets2/MessageCenterActivity$MessagesPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "MessageCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/MessageCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessagesPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/MessageCenterActivity;


# direct methods
.method public constructor <init>(Lcom/spiraltoys/cloudpets2/MessageCenterActivity;Landroid/app/FragmentManager;)V
    .locals 0
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/MessageCenterActivity$MessagesPagerAdapter;->this$0:Lcom/spiraltoys/cloudpets2/MessageCenterActivity;

    .line 90
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 91
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 95
    # getter for: Lcom/spiraltoys/cloudpets2/MessageCenterActivity;->TAB_LABELS:[I
    invoke-static {}, Lcom/spiraltoys/cloudpets2/MessageCenterActivity;->access$000()[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 100
    # getter for: Lcom/spiraltoys/cloudpets2/MessageCenterActivity;->TAB_PROFILE_TYPES:[Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;
    invoke-static {}, Lcom/spiraltoys/cloudpets2/MessageCenterActivity;->access$100()[Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;->newInstance(Lcom/spiraltoys/cloudpets2/model/PrivateProfile$ProfileType;)Lcom/spiraltoys/cloudpets2/fragments/VoiceMessagesFragment;

    move-result-object v0

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/MessageCenterActivity$MessagesPagerAdapter;->this$0:Lcom/spiraltoys/cloudpets2/MessageCenterActivity;

    # getter for: Lcom/spiraltoys/cloudpets2/MessageCenterActivity;->TAB_LABELS:[I
    invoke-static {}, Lcom/spiraltoys/cloudpets2/MessageCenterActivity;->access$000()[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/spiraltoys/cloudpets2/MessageCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
