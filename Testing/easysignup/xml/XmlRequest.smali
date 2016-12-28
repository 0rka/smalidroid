.class public Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;
.super Lcom/android/volley/Request;
.source "XmlRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request",
        "<",
        "Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XmlRequest"


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mData:Landroid/os/Bundle;

.field protected mHandler:Landroid/os/Handler;

.field protected mToken:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V
    .registers 8
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "token"    # I
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "listener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;I",
            "Landroid/os/Handler;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;, "Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest<TT;>;"
    .local p3, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p6}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->mHandler:Landroid/os/Handler;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->mToken:I

    .line 34
    iput-object p3, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->mClass:Ljava/lang/Class;

    .line 35
    iput-object p5, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->mHandler:Landroid/os/Handler;

    .line 36
    iput p4, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->mToken:I

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 39
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "token"    # I
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "listener"    # Lcom/android/volley/Response$ErrorListener;
    .param p7, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;I",
            "Landroid/os/Handler;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;, "Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest<TT;>;"
    .local p3, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p6}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->mHandler:Landroid/os/Handler;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->mToken:I

    .line 44
    iput-object p7, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->mData:Landroid/os/Bundle;

    .line 45
    iput-object p3, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->mClass:Ljava/lang/Class;

    .line 46
    iput-object p5, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->mHandler:Landroid/os/Handler;

    .line 47
    iput p4, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->mToken:I

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 50
    return-void
.end method


# virtual methods
.method protected deliverResponse(Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;)V
    .registers 5
    .param p1, "response"    # Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;

    .prologue
    .line 77
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;, "Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest<TT;>;"
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->mToken:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 78
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->mData:Landroid/os/Bundle;

    if-eqz v1, :cond_13

    .line 80
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->mData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 82
    :cond_13
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 83
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 22
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;, "Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest<TT;>;"
    check-cast p1, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->deliverResponse(Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;)V

    return-void
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .registers 9
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;, "Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest<TT;>;"
    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v5}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 56
    .local v3, "xml":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 57
    const-string v4, "ELog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "XmlRequest"

    invoke-static {v4, v5, v6}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v2, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;

    invoke-direct {v2}, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;-><init>()V

    .line 59
    .local v2, "parser":Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->mClass:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;->parse(Ljava/lang/String;Ljava/lang/Class;)Lcom/samsung/android/coreapps/easysignup/entry/Entry;

    move-result-object v1

    .line 60
    .local v1, "entry":Lcom/samsung/android/coreapps/easysignup/entry/Entry;
    new-instance v4, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;

    invoke-direct {v4, v1, p1}, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;-><init>(Ljava/lang/Object;Lcom/android/volley/NetworkResponse;)V

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v4

    .line 71
    .end local v1    # "entry":Lcom/samsung/android/coreapps/easysignup/entry/Entry;
    .end local v2    # "parser":Lcom/samsung/android/coreapps/easysignup/xml/XmlParser;
    .end local v3    # "xml":Ljava/lang/String;
    :goto_45
    return-object v4

    .line 63
    .restart local v3    # "xml":Ljava/lang/String;
    :cond_46
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_4b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_4b} :catch_4d
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_4b} :catch_58
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_4b} :catch_63
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_6e

    move-result-object v4

    goto :goto_45

    .line 64
    .end local v3    # "xml":Ljava/lang/String;
    :catch_4d
    move-exception v0

    .line 65
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Lcom/android/volley/ParseError;

    invoke-direct {v4, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v4

    goto :goto_45

    .line 66
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_58
    move-exception v0

    .line 67
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v4, Lcom/android/volley/ParseError;

    invoke-direct {v4, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v4

    goto :goto_45

    .line 68
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    :catch_63
    move-exception v0

    .line 69
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v4, Lcom/android/volley/ParseError;

    invoke-direct {v4, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v4

    goto :goto_45

    .line 70
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6e
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/volley/ParseError;

    invoke-direct {v4, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v4}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v4

    goto :goto_45
.end method

.method public setData(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 90
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;, "Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->mData:Landroid/os/Bundle;

    .line 91
    return-void
.end method

.method public setTimeout(IIF)V
    .registers 5
    .param p1, "millis"    # I
    .param p2, "retries"    # I
    .param p3, "backoffMult"    # F

    .prologue
    .line 86
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;, "Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest<TT;>;"
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 87
    return-void
.end method
