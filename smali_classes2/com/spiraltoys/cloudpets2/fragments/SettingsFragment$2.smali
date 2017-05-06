.class Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$2;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->access$000(Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;)Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$OnSettingsFragmentInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$OnSettingsFragmentInteractionListener;->onResetPasswordRequested()V

    .line 67
    const/4 v0, 0x1

    return v0
.end method
