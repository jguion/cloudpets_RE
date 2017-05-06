.class Landroid/databinding/DataBinderMapper;
.super Ljava/lang/Object;
.source "DataBinderMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/DataBinderMapper$InnerBrLookup;
    }
.end annotation


# static fields
.field static final TARGET_MIN_SDK:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method


# virtual methods
.method convertBrIdToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 330
    if-ltz p1, :cond_0

    sget-object v0, Landroid/databinding/DataBinderMapper$InnerBrLookup;->sKeys:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 331
    :cond_0
    const/4 v0, 0x0

    .line 333
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Landroid/databinding/DataBinderMapper$InnerBrLookup;->sKeys:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getDataBinder(Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutId"    # I

    .prologue
    .line 9
    packed-switch p2, :pswitch_data_0

    .line 111
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 11
    :pswitch_1
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/ViewConnectionIndicatorBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ViewConnectionIndicatorBinding;

    move-result-object v0

    goto :goto_0

    .line 13
    :pswitch_2
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoryDetailsBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoryDetailsBinding;

    move-result-object v0

    goto :goto_0

    .line 15
    :pswitch_3
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityBarnyardSoundsGameBinding;

    move-result-object v0

    goto :goto_0

    .line 17
    :pswitch_4
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentFloatingProfileSwitcherBinding;

    move-result-object v0

    goto :goto_0

    .line 19
    :pswitch_5
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoriesBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardStoriesBinding;

    move-result-object v0

    goto :goto_0

    .line 21
    :pswitch_6
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessagesBinding;

    move-result-object v0

    goto :goto_0

    .line 23
    :pswitch_7
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionWithOnboardingToolbarBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionWithOnboardingToolbarBinding;

    move-result-object v0

    goto :goto_0

    .line 25
    :pswitch_8
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardHelpSendBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardHelpSendBinding;

    move-result-object v0

    goto :goto_0

    .line 27
    :pswitch_9
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentAudioPlayerBinding;

    move-result-object v0

    goto :goto_0

    .line 29
    :pswitch_a
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityLogInBinding;

    move-result-object v0

    goto :goto_0

    .line 31
    :pswitch_b
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/ListItemHeaderBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ListItemHeaderBinding;

    move-result-object v0

    goto :goto_0

    .line 33
    :pswitch_c
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentProfilesListBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentProfilesListBinding;

    move-result-object v0

    goto :goto_0

    .line 35
    :pswitch_d
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityInviteFriendBinding;

    move-result-object v0

    goto :goto_0

    .line 37
    :pswitch_e
    new-instance v0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;-><init>([Landroid/view/View;)V

    goto :goto_0

    .line 39
    :pswitch_f
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ListItemLullabyBinding;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_10
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentVoiceMessagePlayerBinding;

    move-result-object v0

    goto :goto_0

    .line 43
    :pswitch_11
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ListItemChildVoiceMessageBinding;

    move-result-object v0

    goto :goto_0

    .line 45
    :pswitch_12
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardHelpListenBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardHelpListenBinding;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_13
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentCreateChildProfileBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentCreateChildProfileBinding;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_14
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectProfileBinding;

    move-result-object v0

    goto :goto_0

    .line 51
    :pswitch_15
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentRequestBlePermissionBinding;

    move-result-object v0

    goto :goto_0

    .line 53
    :pswitch_16
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentConnectionIndicatorBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentConnectionIndicatorBinding;

    move-result-object v0

    goto :goto_0

    .line 55
    :pswitch_17
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ListItemVoiceMessageBinding;

    move-result-object v0

    goto :goto_0

    .line 57
    :pswitch_18
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentMessageListBinding;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_19
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityPlayStoryBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 61
    :pswitch_1a
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultDashboardBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 63
    :pswitch_1b
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordedVoiceMessagePlaybackBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordedVoiceMessagePlaybackBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 65
    :pswitch_1c
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardSelectProfileBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 67
    :pswitch_1d
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabyDetailsBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 69
    :pswitch_1e
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/ListItemProfileSwitcherBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ListItemProfileSwitcherBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 71
    :pswitch_1f
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentRecordVoiceMessageBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 73
    :pswitch_20
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildRecordedMessageActionsBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildRecordedMessageActionsBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 75
    :pswitch_21
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardHelpBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardHelpBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 77
    :pswitch_22
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/ActivityUnityPlayerBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityUnityPlayerBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 79
    :pswitch_23
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardDialogBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 81
    :pswitch_24
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/ActivityMessageCenterBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityMessageCenterBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 83
    :pswitch_25
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabiesBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildDashboardLullabiesBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 85
    :pswitch_26
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentPremiumDialogBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentPremiumDialogBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 87
    :pswitch_27
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/ActivityManageProfileBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityManageProfileBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 89
    :pswitch_28
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultVoiceMessageBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityAdultVoiceMessageBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 91
    :pswitch_29
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityChildDashboardBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 93
    :pswitch_2a
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/ListItemStoryBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ListItemStoryBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 95
    :pswitch_2b
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/ActivityEditProfileBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityEditProfileBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 97
    :pswitch_2c
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentDialogLockScreenBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 99
    :pswitch_2d
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ActivityCreateAccountBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 101
    :pswitch_2e
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/ListItemSelectableProfileBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/ListItemSelectableProfileBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 103
    :pswitch_2f
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentChildVoiceMessageDetailsBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 105
    :pswitch_30
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentOverlayVisitingCloudpetBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 107
    :pswitch_31
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectBluetoothToyErrorBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentSelectBluetoothToyErrorBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 109
    :pswitch_32
    invoke-static {p1}, Lcom/spiraltoys/cloudpets2/databinding/FragmentFriendPermissionsBinding;->bind(Landroid/view/View;)Lcom/spiraltoys/cloudpets2/databinding/FragmentFriendPermissionsBinding;

    move-result-object v0

    goto/16 :goto_0

    .line 9
    :pswitch_data_0
    .packed-switch 0x7f040019
        :pswitch_1a
        :pswitch_28
        :pswitch_3
        :pswitch_29
        :pswitch_2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2b
        :pswitch_0
        :pswitch_d
        :pswitch_a
        :pswitch_27
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_23
        :pswitch_0
        :pswitch_21
        :pswitch_12
        :pswitch_8
        :pswitch_25
        :pswitch_1d
        :pswitch_1c
        :pswitch_5
        :pswitch_2
        :pswitch_20
        :pswitch_2f
        :pswitch_6
        :pswitch_16
        :pswitch_13
        :pswitch_2c
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_32
        :pswitch_18
        :pswitch_30
        :pswitch_26
        :pswitch_c
        :pswitch_1f
        :pswitch_1b
        :pswitch_15
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_31
        :pswitch_0
        :pswitch_14
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_f
        :pswitch_0
        :pswitch_1e
        :pswitch_2e
        :pswitch_2a
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_e
    .end packed-switch
.end method

.method getDataBinder([Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .locals 1
    .param p1, "views"    # [Landroid/view/View;
    .param p2, "layoutId"    # I

    .prologue
    .line 114
    packed-switch p2, :pswitch_data_0

    .line 118
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 116
    :pswitch_0
    new-instance v0, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;

    invoke-direct {v0, p1}, Lcom/spiraltoys/cloudpets2/databinding/ViewRippleBinding;-><init>([Landroid/view/View;)V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x7f04008b
        :pswitch_0
    .end packed-switch
.end method

.method getLayoutId(Ljava/lang/String;)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 121
    if-nez p1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v1

    .line 124
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 125
    .local v0, "code":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 323
    :sswitch_0
    const-string v2, "layout/fragment_friend_permissions_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    const v1, 0x7f040051

    goto :goto_0

    .line 127
    :sswitch_1
    const-string v2, "layout/view_connection_indicator_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const v1, 0x7f04008a

    goto :goto_0

    .line 131
    :sswitch_2
    const-string v2, "layout/fragment_child_dashboard_story_details_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    const v1, 0x7f040047

    goto :goto_0

    .line 135
    :sswitch_3
    const-string v2, "layout/activity_barnyard_sounds_game_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    const v1, 0x7f04001b

    goto :goto_0

    .line 139
    :sswitch_4
    const-string v2, "layout/fragment_floating_profile_switcher_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    const v1, 0x7f040050

    goto :goto_0

    .line 143
    :sswitch_5
    const-string v2, "layout/fragment_child_dashboard_stories_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    const v1, 0x7f040046

    goto :goto_0

    .line 147
    :sswitch_6
    const-string v2, "layout/fragment_child_voice_messages_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const v1, 0x7f04004a

    goto :goto_0

    .line 151
    :sswitch_7
    const-string v2, "layout/fragment_request_ble_permission_with_onboarding_toolbar_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    const v1, 0x7f040059

    goto :goto_0

    .line 155
    :sswitch_8
    const-string v2, "layout/fragment_child_dashboard_help_send_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const v1, 0x7f040042

    goto :goto_0

    .line 159
    :sswitch_9
    const-string v2, "layout/fragment_audio_player_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    const v1, 0x7f04003d

    goto :goto_0

    .line 163
    :sswitch_a
    const-string v2, "layout/activity_log_in_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    const v1, 0x7f040025

    goto/16 :goto_0

    .line 167
    :sswitch_b
    const-string v2, "layout/list_item_header_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    const v1, 0x7f040063

    goto/16 :goto_0

    .line 171
    :sswitch_c
    const-string v2, "layout/fragment_profiles_list_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const v1, 0x7f040055

    goto/16 :goto_0

    .line 175
    :sswitch_d
    const-string v2, "layout/activity_invite_friend_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const v1, 0x7f040024

    goto/16 :goto_0

    .line 179
    :sswitch_e
    const-string v2, "layout/view_ripple_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const v1, 0x7f04008b

    goto/16 :goto_0

    .line 183
    :sswitch_f
    const-string v2, "layout/list_item_lullaby_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    const v1, 0x7f040064

    goto/16 :goto_0

    .line 187
    :sswitch_10
    const-string v2, "layout/fragment_voice_message_player_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    const v1, 0x7f04005f

    goto/16 :goto_0

    .line 191
    :sswitch_11
    const-string v2, "layout/list_item_child_voice_message_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    const v1, 0x7f040060

    goto/16 :goto_0

    .line 195
    :sswitch_12
    const-string v2, "layout/fragment_child_dashboard_help_listen_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    const v1, 0x7f040041

    goto/16 :goto_0

    .line 199
    :sswitch_13
    const-string v2, "layout/fragment_create_child_profile_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    const v1, 0x7f04004c

    goto/16 :goto_0

    .line 203
    :sswitch_14
    const-string v2, "layout/fragment_select_profile_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    const v1, 0x7f04005e

    goto/16 :goto_0

    .line 207
    :sswitch_15
    const-string v2, "layout/fragment_request_ble_permission_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    const v1, 0x7f040058

    goto/16 :goto_0

    .line 211
    :sswitch_16
    const-string v2, "layout/fragment_connection_indicator_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    const v1, 0x7f04004b

    goto/16 :goto_0

    .line 215
    :sswitch_17
    const-string v2, "layout/list_item_voice_message_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    const v1, 0x7f040069

    goto/16 :goto_0

    .line 219
    :sswitch_18
    const-string v2, "layout/fragment_message_list_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    const v1, 0x7f040052

    goto/16 :goto_0

    .line 223
    :sswitch_19
    const-string v2, "layout/activity_play_story_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    const v1, 0x7f04002a

    goto/16 :goto_0

    .line 227
    :sswitch_1a
    const-string v2, "layout/activity_adult_dashboard_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    const v1, 0x7f040019

    goto/16 :goto_0

    .line 231
    :sswitch_1b
    const-string v2, "layout/fragment_recorded_voice_message_playback_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    const v1, 0x7f040057

    goto/16 :goto_0

    .line 235
    :sswitch_1c
    const-string v2, "layout/fragment_child_dashboard_select_profile_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    const v1, 0x7f040045

    goto/16 :goto_0

    .line 239
    :sswitch_1d
    const-string v2, "layout/fragment_child_dashboard_lullaby_details_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    const v1, 0x7f040044

    goto/16 :goto_0

    .line 243
    :sswitch_1e
    const-string v2, "layout/list_item_profile_switcher_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    const v1, 0x7f040066

    goto/16 :goto_0

    .line 247
    :sswitch_1f
    const-string v2, "layout/fragment_record_voice_message_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    const v1, 0x7f040056

    goto/16 :goto_0

    .line 251
    :sswitch_20
    const-string v2, "layout/fragment_child_recorded_message_actions_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    const v1, 0x7f040048

    goto/16 :goto_0

    .line 255
    :sswitch_21
    const-string v2, "layout/fragment_child_dashboard_help_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    const v1, 0x7f040040

    goto/16 :goto_0

    .line 259
    :sswitch_22
    const-string v2, "layout/activity_unity_player_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    const v1, 0x7f04002f

    goto/16 :goto_0

    .line 263
    :sswitch_23
    const-string v2, "layout/fragment_child_dashboard_dialog_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    const v1, 0x7f04003e

    goto/16 :goto_0

    .line 267
    :sswitch_24
    const-string v2, "layout/activity_message_center_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    const v1, 0x7f040027

    goto/16 :goto_0

    .line 271
    :sswitch_25
    const-string v2, "layout/fragment_child_dashboard_lullabies_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    const v1, 0x7f040043

    goto/16 :goto_0

    .line 275
    :sswitch_26
    const-string v2, "layout/fragment_premium_dialog_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    const v1, 0x7f040054

    goto/16 :goto_0

    .line 279
    :sswitch_27
    const-string v2, "layout/activity_manage_profile_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    const v1, 0x7f040026

    goto/16 :goto_0

    .line 283
    :sswitch_28
    const-string v2, "layout/activity_adult_voice_message_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    const v1, 0x7f04001a

    goto/16 :goto_0

    .line 287
    :sswitch_29
    const-string v2, "layout/activity_child_dashboard_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    const v1, 0x7f04001c

    goto/16 :goto_0

    .line 291
    :sswitch_2a
    const-string v2, "layout/list_item_story_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    const v1, 0x7f040068

    goto/16 :goto_0

    .line 295
    :sswitch_2b
    const-string v2, "layout/activity_edit_profile_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    const v1, 0x7f040022

    goto/16 :goto_0

    .line 299
    :sswitch_2c
    const-string v2, "layout/fragment_dialog_lock_screen_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    const v1, 0x7f04004d

    goto/16 :goto_0

    .line 303
    :sswitch_2d
    const-string v2, "layout/activity_create_account_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    const v1, 0x7f04001d

    goto/16 :goto_0

    .line 307
    :sswitch_2e
    const-string v2, "layout/list_item_selectable_profile_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    const v1, 0x7f040067

    goto/16 :goto_0

    .line 311
    :sswitch_2f
    const-string v2, "layout/fragment_child_voice_message_details_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    const v1, 0x7f040049

    goto/16 :goto_0

    .line 315
    :sswitch_30
    const-string v2, "layout/fragment_overlay_visiting_cloudpet_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    const v1, 0x7f040053

    goto/16 :goto_0

    .line 319
    :sswitch_31
    const-string v2, "layout/fragment_select_bluetooth_toy_error_0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    const v1, 0x7f04005c

    goto/16 :goto_0

    .line 125
    :sswitch_data_0
    .sparse-switch
        -0x7af03e42 -> :sswitch_0
        -0x73a285a2 -> :sswitch_13
        -0x6adb420f -> :sswitch_18
        -0x604860eb -> :sswitch_1a
        -0x5f09136a -> :sswitch_2a
        -0x57269089 -> :sswitch_29
        -0x55412cd9 -> :sswitch_22
        -0x45075990 -> :sswitch_2b
        -0x3dcf7dc1 -> :sswitch_8
        -0x397d5c9a -> :sswitch_19
        -0x373aecb5 -> :sswitch_26
        -0x32e1b474 -> :sswitch_5
        -0x2af5ac32 -> :sswitch_b
        -0x114f3bd0 -> :sswitch_f
        -0xf7f06b5 -> :sswitch_27
        -0xc8bbbea -> :sswitch_e
        -0xb087b75 -> :sswitch_1d
        -0x95c10c2 -> :sswitch_15
        -0x208fcc2 -> :sswitch_12
        -0x1345229 -> :sswitch_4
        0xaef209 -> :sswitch_16
        0xc78b6a -> :sswitch_21
        0x7d43ea6 -> :sswitch_25
        0xe3105b1 -> :sswitch_23
        0x169ecc5b -> :sswitch_17
        0x184576e1 -> :sswitch_10
        0x2ce6c3d7 -> :sswitch_6
        0x2d470778 -> :sswitch_1e
        0x3041395a -> :sswitch_d
        0x361a30f6 -> :sswitch_1b
        0x43d99b01 -> :sswitch_14
        0x45c431d4 -> :sswitch_20
        0x474e40fb -> :sswitch_28
        0x4918eb3c -> :sswitch_a
        0x4a55ac89 -> :sswitch_24
        0x5044ea4f -> :sswitch_1c
        0x512ccf94 -> :sswitch_1
        0x52a55b2e -> :sswitch_31
        0x54bcbb38 -> :sswitch_11
        0x5643c61a -> :sswitch_c
        0x5aa09ba6 -> :sswitch_2d
        0x5caf9021 -> :sswitch_2f
        0x60ae4164 -> :sswitch_2c
        0x67dddf41 -> :sswitch_2e
        0x6800162f -> :sswitch_7
        0x69e7b26a -> :sswitch_30
        0x6c61ccf1 -> :sswitch_2
        0x6ec69b27 -> :sswitch_1f
        0x70ec7285 -> :sswitch_9
        0x732f187f -> :sswitch_3
    .end sparse-switch
.end method
