.class Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$3;
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
    .line 72
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 75
    iget-object v0, p0, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment$3;->this$0:Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;

    invoke-virtual {v0}, Lcom/spiraltoys/cloudpets2/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/spiraltoys/cloudpets2/TermsOfUseActivity;->start(Landroid/app/Activity;Z)V

    .line 76
    return v1
.end method
