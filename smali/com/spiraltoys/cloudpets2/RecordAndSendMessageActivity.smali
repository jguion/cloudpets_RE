.class public Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;
.super Lcom/spiraltoys/cloudpets2/BaseActivity;
.source "RecordAndSendMessageActivity.java"

# interfaces
.implements Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment$OnRecordVoiceMessageFragmentInteractionListener;
.implements Lcom/spiraltoys/cloudpets2/fragments/SelectProfileFragment$OnSelectProfileFragmentInteractionListener;
.implements Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment$OnRecordedVoiceMessagePlaybackFragmentInteractionListener;


# static fields
.field public static final EXTRA_RECIPIENT_PROFILE_ID:Ljava/lang/String; = "extra_recipient_profile_id"


# instance fields
.field private mAdultProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

.field private mIsSending:Z

.field mUri:Landroid/net/Uri;
    .annotation build Licepick/State;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->mIsSending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;)Lcom/spiraltoys/cloudpets2/model/Profile;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->mAdultProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    return-object v0
.end method

.method private getRecipientProfileId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_recipient_profile_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static startForResult(Lcom/spiraltoys/cloudpets2/BaseActivity;Lcom/spiraltoys/cloudpets2/model/Profile;I)V
    .locals 3
    .param p0, "context"    # Lcom/spiraltoys/cloudpets2/BaseActivity;
    .param p1, "recipient"    # Lcom/spiraltoys/cloudpets2/model/Profile;
    .param p2, "requestCode"    # I

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "extra_recipient_profile_id"

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v0, p2}, Lcom/spiraltoys/cloudpets2/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 59
    return-void

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/spiraltoys/cloudpets2/model/Profile;->getObjectId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public containsChildProfile(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "selectedProfiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spiraltoys/cloudpets2/model/Profile;

    .line 216
    .local v0, "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/model/Profile;->getOwner()Lcom/parse/ParseUser;

    move-result-object v2

    iget-object v3, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->mAdultProfile:Lcom/spiraltoys/cloudpets2/model/Profile;

    invoke-virtual {v3}, Lcom/spiraltoys/cloudpets2/model/Profile;->getOwner()Lcom/parse/ParseUser;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 217
    const/4 v1, 0x1

    .line 221
    .end local v0    # "profile":Lcom/spiraltoys/cloudpets2/model/Profile;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBackgroundMusicTrack()Lcom/spiraltoys/cloudpets2/audio/BackgroundMusicTrack;
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-static {p0, p1}, Licepick/Icepick;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f04002b

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->setContentView(I)V

    .line 66
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 68
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1000d0

    new-instance v2, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;

    invoke-direct {v2}, Lcom/spiraltoys/cloudpets2/fragments/RecordVoiceMessageFragment;-><init>()V

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->initToolbar()V

    .line 77
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->showToolbarTitle()V

    .line 78
    return-void
.end method

.method public declared-synchronized onProfilesSelected(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/spiraltoys/cloudpets2/model/Profile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "selectedProfiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->mIsSending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 212
    :goto_0
    monitor-exit p0

    return-void

    .line 132
    :cond_0
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->mIsSending:Z

    .line 133
    const v4, 0x7f0801a8

    invoke-virtual {p0, v4}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->showProgress(I)Landroid/app/Dialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :try_start_2
    invoke-static {}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->getLocalAdultProfile()Lcom/spiraltoys/cloudpets2/model/Profile;

    move-result-object v4

    iput-object v4, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->mAdultProfile:Lcom/spiraltoys/cloudpets2/model/Profile;
    :try_end_2
    .catch Lcom/parse/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    :try_start_3
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/google/common/io/Files;->toByteArray(Ljava/io/File;)[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 155
    .local v0, "data":[B
    :try_start_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "fileName":Ljava/lang/String;
    new-instance v2, Lcom/parse/ParseFile;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".wav"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;[B)V

    .line 158
    .local v2, "file":Lcom/parse/ParseFile;
    new-instance v4, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;

    invoke-direct {v4, p0, p1, v2}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$2;-><init>(Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;Ljava/util/Collection;Lcom/parse/ParseFile;)V

    invoke-virtual {v2, v4}, Lcom/parse/ParseFile;->saveInBackground(Lcom/parse/SaveCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 128
    .end local v0    # "data":[B
    .end local v2    # "file":Lcom/parse/ParseFile;
    .end local v3    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Lcom/parse/ParseException;
    :try_start_5
    invoke-virtual {v1}, Lcom/parse/ParseException;->printStackTrace()V

    .line 139
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->mIsSending:Z

    goto :goto_0

    .line 147
    .end local v1    # "e":Lcom/parse/ParseException;
    :catch_1
    move-exception v1

    .line 148
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->mIsSending:Z

    .line 150
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->hideProgress()V

    .line 151
    invoke-static {v1}, Lcom/spiraltoys/cloudpets2/util/ErrorMessages;->getStringResourceIdForIOException(Ljava/io/IOException;)I

    move-result v4

    invoke-static {p0, v4}, Lcom/spiraltoys/cloudpets2/util/Utils;->showErrorDialog(Landroid/content/Context;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public onRefreshProfileList(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 1
    .param p1, "swipeRefreshLayout"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    .prologue
    .line 102
    new-instance v0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity$1;-><init>(Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;Landroid/support/v4/widget/SwipeRefreshLayout;)V

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/model/util/ModelHelper;->fetchAllProfilesToLocalDatastore(Lcom/parse/FindCallback;)V

    .line 117
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/spiraltoys/cloudpets2/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 83
    invoke-static {p0, p1}, Licepick/Icepick;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 84
    return-void
.end method

.method public onSendToRecipientSelected(Lcom/spiraltoys/cloudpets2/model/Profile;)V
    .locals 1
    .param p1, "recipient"    # Lcom/spiraltoys/cloudpets2/model/Profile;

    .prologue
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v0, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/spiraltoys/cloudpets2/model/Profile;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->onProfilesSelected(Ljava/util/Collection;)V

    .line 124
    return-void
.end method

.method public onVoiceMessageRecorded(Landroid/net/Uri;)V
    .locals 3
    .param p1, "recordingUri"    # Landroid/net/Uri;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->mUri:Landroid/net/Uri;

    .line 90
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1001

    .line 94
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1000d0

    .line 95
    invoke-direct {p0}, Lcom/spiraltoys/cloudpets2/RecordAndSendMessageActivity;->getRecipientProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;->newInstance(Landroid/net/Uri;Ljava/lang/String;)Lcom/spiraltoys/cloudpets2/fragments/RecordedVoiceMessagePlaybackFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 98
    :cond_0
    return-void
.end method
