.class public Lcom/spiraltoys/cloudpets2/fragments/SoundSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SoundSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/SoundSettingsFragment$OnSoundSettingsFragmentInteractionListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/SoundSettingsFragment$OnSoundSettingsFragmentInteractionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 26
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/SoundSettingsFragment$OnSoundSettingsFragmentInteractionListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SoundSettingsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SoundSettingsFragment$OnSoundSettingsFragmentInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-void

    .line 27
    :catch_0
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnSoundSettingsFragmentInteractionListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Lcom/spiraltoys/cloudpets2/fragments/SoundSettingsFragment;->addPreferencesFromResource(I)V

    .line 20
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 36
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SoundSettingsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SoundSettingsFragment$OnSoundSettingsFragmentInteractionListener;

    const v1, 0x7f08019a

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/SoundSettingsFragment$OnSoundSettingsFragmentInteractionListener;->onTitleSet(I)V

    .line 37
    return-void
.end method
