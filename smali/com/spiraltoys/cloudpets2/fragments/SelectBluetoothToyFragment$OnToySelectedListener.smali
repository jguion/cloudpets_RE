.class public interface abstract Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment$OnToySelectedListener;
.super Ljava/lang/Object;
.source "SelectBluetoothToyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/fragments/SelectBluetoothToyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnToySelectedListener"
.end annotation


# virtual methods
.method public abstract onToyConnectionTimeout()V
.end method

.method public abstract onToyScanTimeout(I)V
.end method

.method public abstract onToySelected(Ljava/lang/String;)V
.end method
