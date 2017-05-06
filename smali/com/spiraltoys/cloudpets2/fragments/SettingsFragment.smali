.class public Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$OnSettingsFragmentInteractionListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$OnSettingsFragmentInteractionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;)Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$OnSettingsFragmentInteractionListener;
    .locals 1
    .param p0, "x0"    # Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$OnSettingsFragmentInteractionListener;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 100
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$OnSettingsFragmentInteractionListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$OnSettingsFragmentInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    return-void

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnSettingsFragmentInteractionListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 23
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 27
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    const-string v4, "cloud-pets-2-shared-prefs"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    .line 30
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 31
    .local v0, "adminPasswordPreference":Landroid/preference/CheckBoxPreference;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->getUsername(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "key-use-admin-password"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 32
    const v3, 0x7f080197

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 33
    const v3, 0x7f080071

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 34
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 36
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 37
    .local v1, "childPinsPreference":Landroid/preference/CheckBoxPreference;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->getUsername(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "key-use-child-pins"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 38
    const v3, 0x7f08019c

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 39
    const v3, 0x7f080073

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 40
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 42
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 43
    .local v2, "parentalControlPreference":Landroid/preference/CheckBoxPreference;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/spiraltoys/cloudpets2/util/SettingsManager;->getUsername(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "key-parental-control"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 44
    const v3, 0x7f080198

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 45
    const v3, 0x7f080072

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 46
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 50
    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 52
    const/high16 v3, 0x7f060000

    invoke-virtual {p0, v3}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->addPreferencesFromResource(I)V

    .line 54
    const-string v3, "pref_sounds"

    invoke-virtual {p0, v3}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    new-instance v4, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$1;

    invoke-direct {v4, p0}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$1;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 63
    const-string v3, "pref_reset_password"

    invoke-virtual {p0, v3}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    new-instance v4, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$2;

    invoke-direct {v4, p0}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$2;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 72
    const-string v3, "pref_terms_of_use"

    invoke-virtual {p0, v3}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    new-instance v4, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$3;

    invoke-direct {v4, p0}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$3;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 81
    const-string v3, "pref_log_out"

    invoke-virtual {p0, v3}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    new-instance v4, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$4;

    invoke-direct {v4, p0}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$4;-><init>(Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 88
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$OnSettingsFragmentInteractionListener;

    const v1, 0x7f080168

    invoke-interface {v0, v1}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$OnSettingsFragmentInteractionListener;->onTitleSet(I)V

    .line 94
    return-void
.end method
