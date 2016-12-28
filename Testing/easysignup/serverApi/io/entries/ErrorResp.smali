.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;
.super Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;
.source "ErrorResp.java"


# instance fields
.field protected left_blocking_hour:I

.field protected rcode:J

.field protected rmsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    .line 20
    return-void
.end method

.method public static instanceFrom(Lcom/android/volley/VolleyError;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;
    .registers 9
    .param p0, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 44
    if-eqz p0, :cond_3e

    .line 45
    iget-object v4, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    .line 47
    .local v4, "networkResponse":Lcom/android/volley/NetworkResponse;
    if-eqz v4, :cond_3e

    .line 48
    :try_start_6
    new-instance v5, Ljava/lang/String;

    iget-object v6, v4, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v7, v4, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v7}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 49
    .local v5, "read":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 51
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 52
    .local v3, "gson":Lcom/google/gson/Gson;
    const-class v6, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;

    .line 53
    .local v1, "errorResp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;
    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ErrorResp"

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ErrorResp"

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/common/util/CommonLog;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_38} :catch_3a

    move-object v2, v1

    .line 64
    .end local v1    # "errorResp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;
    .end local v3    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "networkResponse":Lcom/android/volley/NetworkResponse;
    .end local v5    # "read":Ljava/lang/String;
    .local v2, "errorResp":Ljava/lang/Object;
    :goto_39
    return-object v2

    .line 58
    .end local v2    # "errorResp":Ljava/lang/Object;
    .restart local v4    # "networkResponse":Lcom/android/volley/NetworkResponse;
    :catch_3a
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "networkResponse":Lcom/android/volley/NetworkResponse;
    :cond_3e
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;

    invoke-direct {v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;-><init>()V

    .restart local v1    # "errorResp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;
    move-object v2, v1

    .line 64
    .restart local v2    # "errorResp":Ljava/lang/Object;
    goto :goto_39
.end method


# virtual methods
.method public getLeftBlockingHour()I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->left_blocking_hour:I

    return v0
.end method

.method public getRcode()J
    .registers 3

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->rcode:J

    return-wide v0
.end method

.method public getRmsg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->rmsg:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Error [rcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->rcode:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rmsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->rmsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
