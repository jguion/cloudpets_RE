.class Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$4;
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
    .line 81
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$4;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$4;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/spiraltoys/cloudpets2/util/Utils;->showLogoutConfirmationDialog(Landroid/content/Context;)V

    .line 85
    const/4 v0, 0x1

    return v0
.end method
