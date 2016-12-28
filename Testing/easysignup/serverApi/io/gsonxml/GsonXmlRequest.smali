.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;
.super Lcom/samsung/android/coreapps/common/model/CommonRequest;
.source "GsonXmlRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/coreapps/common/model/CommonRequest",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final BACKOFF_MULT:F = 0.0f

.field private static final MAX_RETRIES:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GsonXmlRequest"

.field private static final TIMEOUT_MS:I = 0x2710


# instance fields
.field private mBodyBytes:[B

.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mData:Landroid/os/Bundle;

.field private final mGsonXml:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProtocolContentType:Ljava/lang/String;

.field private mToken:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Landroid/os/Bundle;Lcom/android/volley/Response$ErrorListener;)V
    .registers 15
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "token"    # I
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "data"    # Landroid/os/Bundle;
    .param p7, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;I",
            "Landroid/os/Handler;",
            "Landroid/os/Bundle;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest<TT;>;"
    .local p3, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 74
    iput-object p6, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mData:Landroid/os/Bundle;

    .line 75
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V
    .registers 11
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "token"    # I
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;I",
            "Landroid/os/Handler;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest<TT;>;"
    .local p3, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p6}, Lcom/samsung/android/coreapps/common/model/CommonRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mHeaderMap:Ljava/util/Map;

    .line 54
    const-string v0, "text/xml"

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mProtocolContentType:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mData:Landroid/os/Bundle;

    .line 60
    iput-object p3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mClass:Ljava/lang/Class;

    .line 61
    iput p4, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mToken:I

    .line 62
    iput-object p5, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mHandler:Landroid/os/Handler;

    .line 63
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlParser;->createGson(Z)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mGsonXml:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;

    .line 65
    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 67
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x2710

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 69
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 70
    return-void
.end method

.method private getMethodType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->getMethod()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    .line 182
    const-string v0, ""

    :goto_9
    return-object v0

    .line 166
    :pswitch_a
    const-string v0, "GET"

    goto :goto_9

    .line 168
    :pswitch_d
    const-string v0, "POST"

    goto :goto_9

    .line 170
    :pswitch_10
    const-string v0, "PUT"

    goto :goto_9

    .line 172
    :pswitch_13
    const-string v0, "DELETE"

    goto :goto_9

    .line 174
    :pswitch_16
    const-string v0, "HEAD"

    goto :goto_9

    .line 176
    :pswitch_19
    const-string v0, "OPTIONS"

    goto :goto_9

    .line 178
    :pswitch_1c
    const-string v0, "TRACE"

    goto :goto_9

    .line 180
    :pswitch_1f
    const-string v0, "PATCH"

    goto :goto_9

    .line 164
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_a
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 116
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-object p0
.end method

.method public deliverResponse(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest<TT;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mToken:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 97
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mData:Landroid/os/Bundle;

    if-eqz v1, :cond_13

    .line 99
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 101
    :cond_13
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    return-void
.end method

.method public getBody()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mBodyBytes:[B

    if-nez v0, :cond_9

    .line 148
    invoke-super {p0}, Lcom/samsung/android/coreapps/common/model/CommonRequest;->getBody()[B

    move-result-object v0

    .line 149
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mBodyBytes:[B

    goto :goto_8
.end method

.method public getBodyContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mProtocolContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest<TT;>;"
    const-string v0, "ELog"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mHeaderMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GsonXmlRequest"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mHeaderMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .registers 2

    .prologue
    .line 160
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest<TT;>;"
    sget-object v0, Lcom/android/volley/Request$Priority;->IMMEDIATE:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .registers 7
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest<TT;>;"
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v3}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 81
    .local v1, "xml":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 82
    const-string v2, "ELog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GsonXmlRequest"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mGsonXml:Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mClass:Ljava/lang/Class;

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->fromXml(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v2

    .line 90
    .end local v1    # "xml":Ljava/lang/String;
    :goto_3d
    return-object v2

    .line 86
    .restart local v1    # "xml":Ljava/lang/String;
    :cond_3e
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_43
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_43} :catch_45
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_43} :catch_50

    move-result-object v2

    goto :goto_3d

    .line 87
    .end local v1    # "xml":Ljava/lang/String;
    :catch_45
    move-exception v0

    .line 88
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/android/volley/ParseError;

    invoke-direct {v2, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v2

    goto :goto_3d

    .line 89
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_50
    move-exception v0

    .line 90
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v2, Lcom/android/volley/ParseError;

    invoke-direct {v2, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v2

    goto :goto_3d
.end method

.method public setBody(Ljava/lang/Object;)V
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 127
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest<TT;>;"
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 130
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "str":Ljava/lang/String;
    const-string v2, "ELog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "body = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GsonXmlRequest"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mBodyBytes:[B

    .line 133
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 136
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest<TT;>;"
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mBodyBytes:[B

    .line 137
    const-string v0, "ELog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "body = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GsonXmlRequest"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public setBody([BLjava/lang/String;)V
    .registers 4
    .param p1, "body"    # [B
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 141
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest<TT;>;"
    const-string v0, "application/octet-stream"

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mProtocolContentType:Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->mBodyBytes:[B

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 155
    .local p0, "this":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;, "Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->getMethodType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/samsung/android/coreapps/common/model/CommonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
