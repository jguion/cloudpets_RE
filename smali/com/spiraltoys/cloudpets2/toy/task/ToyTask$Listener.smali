.class public interface abstract Lcom/spiraltoys/cloudpets2/toy/task/ToyTask$Listener;
.super Ljava/lang/Object;
.source "ToyTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Error;)V
.end method

.method public abstract onStart(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;)V
.end method

.method public abstract onSuccess(Lcom/spiraltoys/cloudpets2/toy/task/ToyTask;Lcom/spiraltoys/cloudpets2/toy/command/ToyCommandIdentifier;Ljava/lang/Object;)V
.end method
