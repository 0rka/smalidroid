.class public Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;
.super Ljava/lang/Object;
.source "XmlResponse.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "XmlResponse"


# instance fields
.field private error:Lcom/android/volley/VolleyError;

.field private httpResultCode:Lcom/samsung/android/coreapps/contact/network/HttpResultCode;

.field private httpResultObject:Ljava/lang/Object;

.field private networkResponse:Lcom/android/volley/NetworkResponse;


# direct methods
.method public constructor <init>(Lcom/android/volley/NetworkResponse;)V
    .registers 3
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 42
    sget-object v0, Lcom/samsung/android/coreapps/contact/network/HttpResultCode;->SUCCESS:Lcom/samsung/android/coreapps/contact/network/HttpResultCode;

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->setHttpResultCode(Lcom/samsung/android/coreapps/contact/network/HttpResultCode;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->error:Lcom/android/volley/VolleyError;

    .line 36
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->parseError()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/volley/NetworkResponse;)V
    .registers 3
    .param p1, "resultObject"    # Ljava/lang/Object;
    .param p2, "response"    # Lcom/android/volley/NetworkResponse;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->httpResultObject:Ljava/lang/Object;

    .line 30
    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->parseResponse()V

    .line 32
    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->error:Lcom/android/volley/VolleyError;

    if-eqz v0, :cond_b

    .line 97
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->error:Lcom/android/volley/VolleyError;

    invoke-virtual {v0}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getHttpResultCode()Lcom/samsung/android/coreapps/contact/network/HttpResultCode;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->httpResultCode:Lcom/samsung/android/coreapps/contact/network/HttpResultCode;

    return-object v0
.end method

.method public getHttpResultObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->httpResultObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_9

    .line 104
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    .line 106
    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method protected final parseError()V
    .registers 6

    .prologue
    .line 72
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->error:Lcom/android/volley/VolleyError;

    invoke-virtual {v3}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "XmlResponse"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->error:Lcom/android/volley/VolleyError;

    instance-of v3, v3, Lcom/android/volley/NoConnectionError;

    if-eqz v3, :cond_17

    .line 75
    sget-object v3, Lcom/samsung/android/coreapps/contact/network/HttpResultCode;->NO_CONNECTION:Lcom/samsung/android/coreapps/contact/network/HttpResultCode;

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->setHttpResultCode(Lcom/samsung/android/coreapps/contact/network/HttpResultCode;)V

    .line 93
    :cond_16
    :goto_16
    return-void

    .line 77
    :cond_17
    sget-object v3, Lcom/samsung/android/coreapps/contact/network/HttpResultCode;->ERROR:Lcom/samsung/android/coreapps/contact/network/HttpResultCode;

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->setHttpResultCode(Lcom/samsung/android/coreapps/contact/network/HttpResultCode;)V

    .line 78
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v3, :cond_16

    .line 80
    :try_start_20
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v3, v3, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v4, v4, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v4}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 81
    .local v2, "read":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 82
    const-string v3, "XmlResponse"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 84
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/samsung/android/coreapps/easysignup/entry/ErrorResp;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->setHttpResultObject(Ljava/lang/Object;)V
    :try_end_4a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_20 .. :try_end_4a} :catch_4b
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_20 .. :try_end_4a} :catch_54

    goto :goto_16

    .line 86
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "read":Ljava/lang/String;
    :catch_4b
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/android/volley/ParseError;

    invoke-direct {v3, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    iput-object v3, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->error:Lcom/android/volley/VolleyError;

    goto :goto_16

    .line 88
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_54
    move-exception v0

    .line 89
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v3, Lcom/android/volley/ParseError;

    invoke-direct {v3, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    iput-object v3, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->error:Lcom/android/volley/VolleyError;

    goto :goto_16
.end method

.method protected final parseResponse()V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_10

    .line 63
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_11

    .line 64
    sget-object v0, Lcom/samsung/android/coreapps/contact/network/HttpResultCode;->NO_CONTENT:Lcom/samsung/android/coreapps/contact/network/HttpResultCode;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->httpResultCode:Lcom/samsung/android/coreapps/contact/network/HttpResultCode;

    .line 69
    :cond_10
    :goto_10
    return-void

    .line 66
    :cond_11
    sget-object v0, Lcom/samsung/android/coreapps/contact/network/HttpResultCode;->SUCCESS:Lcom/samsung/android/coreapps/contact/network/HttpResultCode;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->httpResultCode:Lcom/samsung/android/coreapps/contact/network/HttpResultCode;

    goto :goto_10
.end method

.method public setHttpResultCode(Lcom/samsung/android/coreapps/contact/network/HttpResultCode;)V
    .registers 2
    .param p1, "httpResultCode"    # Lcom/samsung/android/coreapps/contact/network/HttpResultCode;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->httpResultCode:Lcom/samsung/android/coreapps/contact/network/HttpResultCode;

    .line 51
    return-void
.end method

.method public setHttpResultObject(Ljava/lang/Object;)V
    .registers 2
    .param p1, "httpResultObject"    # Ljava/lang/Object;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/xml/XmlResponse;->httpResultObject:Ljava/lang/Object;

    .line 59
    return-void
.end method
