.class public Lcom/spiraltoys/cloudpets2/fragments/BirthdayPickerFragment;
.super Landroid/app/DialogFragment;
.source "BirthdayPickerFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spiraltoys/cloudpets2/fragments/BirthdayPickerFragment$OnBirthdayPickerInteractionListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/spiraltoys/cloudpets2/fragments/BirthdayPickerFragment$OnBirthdayPickerInteractionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 22
    .local v6, "c":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 23
    .local v3, "year":I
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 24
    .local v4, "month":I
    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 27
    .local v5, "day":I
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/spiraltoys/cloudpets2/fragments/BirthdayPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 28
    .local v0, "dialog":Landroid/app/Dialog;
    const v1, 0x7f08017a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 29
    return-object v0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 7
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    const/4 v4, 0x0

    .line 37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "selectedDate":Ljava/util/Calendar;
    move v1, p2

    move v2, p3

    move v3, p4

    move v5, v4

    move v6, v4

    .line 38
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 39
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/BirthdayPickerFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/BirthdayPickerFragment$OnBirthdayPickerInteractionListener;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/spiraltoys/cloudpets2/fragments/BirthdayPickerFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/BirthdayPickerFragment$OnBirthdayPickerInteractionListener;

    invoke-interface {v1, v0}, Lcom/spiraltoys/cloudpets2/fragments/BirthdayPickerFragment$OnBirthdayPickerInteractionListener;->onDateSelect(Ljava/util/Calendar;)V

    .line 41
    :cond_0
    return-void
.end method

.method public setListener(Lcom/spiraltoys/cloudpets2/fragments/BirthdayPickerFragment$OnBirthdayPickerInteractionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/spiraltoys/cloudpets2/fragments/BirthdayPickerFragment$OnBirthdayPickerInteractionListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/spiraltoys/cloudpets2/fragments/BirthdayPickerFragment;->mListener:Lcom/spiraltoys/cloudpets2/fragments/BirthdayPickerFragment$OnBirthdayPickerInteractionListener;

    .line 34
    return-void
.end method
