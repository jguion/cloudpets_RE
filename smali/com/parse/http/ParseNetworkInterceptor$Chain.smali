.class public interface abstract Lcom/parse/http/ParseNetworkInterceptor$Chain;
.super Ljava/lang/Object;
.source "ParseNetworkInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/http/ParseNetworkInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Chain"
.end annotation


# virtual methods
.method public abstract getRequest()Lcom/parse/http/ParseHttpRequest;
.end method

.method public abstract proceed(Lcom/parse/http/ParseHttpRequest;)Lcom/parse/http/ParseHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
