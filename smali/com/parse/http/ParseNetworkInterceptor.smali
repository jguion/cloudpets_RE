.class public interface abstract Lcom/parse/http/ParseNetworkInterceptor;
.super Ljava/lang/Object;
.source "ParseNetworkInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/http/ParseNetworkInterceptor$Chain;
    }
.end annotation


# virtual methods
.method public abstract intercept(Lcom/parse/http/ParseNetworkInterceptor$Chain;)Lcom/parse/http/ParseHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
