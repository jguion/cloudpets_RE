.class Lcom/parse/ParseApacheHttpClient$ParseApacheHttpEntity;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "ParseApacheHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseApacheHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseApacheHttpEntity"
.end annotation


# instance fields
.field private parseBody:Lcom/parse/http/ParseHttpBody;


# direct methods
.method public constructor <init>(Lcom/parse/http/ParseHttpBody;)V
    .locals 4
    .param p1, "parseBody"    # Lcom/parse/http/ParseHttpBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpBody;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/http/ParseHttpBody;->getContentLength()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 238
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpBody;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 239
    iput-object p1, p0, Lcom/parse/ParseApacheHttpClient$ParseApacheHttpEntity;->parseBody:Lcom/parse/http/ParseHttpBody;

    .line 240
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/parse/ParseApacheHttpClient$ParseApacheHttpEntity;->parseBody:Lcom/parse/http/ParseHttpBody;

    invoke-virtual {v0, p1}, Lcom/parse/http/ParseHttpBody;->writeTo(Ljava/io/OutputStream;)V

    .line 245
    return-void
.end method
