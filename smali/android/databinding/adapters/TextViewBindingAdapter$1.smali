.class final Landroid/databinding/adapters/TextViewBindingAdapter$1;
.super Ljava/lang/Object;
.source "TextViewBindingAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/databinding/adapters/TextViewBindingAdapter;->setListener(Landroid/widget/TextView;Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$after:Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

.field final synthetic val$before:Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

.field final synthetic val$on:Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;


# direct methods
.method constructor <init>(Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Landroid/databinding/adapters/TextViewBindingAdapter$1;->val$before:Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    iput-object p2, p0, Landroid/databinding/adapters/TextViewBindingAdapter$1;->val$on:Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    iput-object p3, p0, Landroid/databinding/adapters/TextViewBindingAdapter$1;->val$after:Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 346
    iget-object v0, p0, Landroid/databinding/adapters/TextViewBindingAdapter$1;->val$after:Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Landroid/databinding/adapters/TextViewBindingAdapter$1;->val$after:Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    invoke-interface {v0, p1}, Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;->afterTextChanged(Landroid/text/Editable;)V

    .line 349
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 332
    iget-object v0, p0, Landroid/databinding/adapters/TextViewBindingAdapter$1;->val$before:Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Landroid/databinding/adapters/TextViewBindingAdapter$1;->val$before:Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 335
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 339
    iget-object v0, p0, Landroid/databinding/adapters/TextViewBindingAdapter$1;->val$on:Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Landroid/databinding/adapters/TextViewBindingAdapter$1;->val$on:Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 342
    :cond_0
    return-void
.end method
