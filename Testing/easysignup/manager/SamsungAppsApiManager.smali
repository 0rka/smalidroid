.class public Lcom/samsung/android/coreapps/easysignup/manager/SamsungAppsApiManager;
.super Ljava/lang/Object;
.source "SamsungAppsApiManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stubDownload(ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 22
    .param p0, "token"    # I
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .param p3, "server"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "encImei"    # Ljava/lang/String;
    .param p6, "deviceId"    # Ljava/lang/String;
    .param p7, "mcc"    # Ljava/lang/String;
    .param p8, "mnc"    # Ljava/lang/String;
    .param p9, "csc"    # Ljava/lang/String;
    .param p10, "sdkVer"    # Ljava/lang/String;
    .param p11, "pd"    # Ljava/lang/String;
    .param p12, "tag"    # Ljava/lang/Object;

    .prologue
    .line 51
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 52
    .local v8, "ub":Landroid/net/Uri$Builder;
    const-string v2, "appId"

    invoke-virtual {v8, v2, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 53
    const-string v2, "encImei"

    invoke-virtual {v8, v2, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    const-string v2, "deviceId"

    invoke-virtual {v8, v2, p6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 55
    const-string v2, "mcc"

    move-object/from16 v0, p7

    invoke-virtual {v8, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 56
    const-string v2, "mnc"

    move-object/from16 v0, p8

    invoke-virtual {v8, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 57
    const-string v2, "csc"

    move-object/from16 v0, p9

    invoke-virtual {v8, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 58
    const-string v2, "sdkVer"

    move-object/from16 v0, p10

    invoke-virtual {v8, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 59
    const-string v2, "pd"

    move-object/from16 v0, p11

    invoke-virtual {v8, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 61
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "uri":Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;

    const/4 v2, 0x0

    const-class v4, Lcom/samsung/android/coreapps/easysignup/entry/StubDownloadList;

    move v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 71
    .local v1, "request":Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;, "Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest<Lcom/samsung/android/coreapps/easysignup/entry/StubDownloadList;>;"
    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 73
    invoke-static {}, Lcom/samsung/android/coreapps/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 74
    return-void
.end method

.method public static stubDownloadForOne(ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 22
    .param p0, "token"    # I
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .param p3, "server"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "encImei"    # Ljava/lang/String;
    .param p6, "deviceId"    # Ljava/lang/String;
    .param p7, "mcc"    # Ljava/lang/String;
    .param p8, "mnc"    # Ljava/lang/String;
    .param p9, "csc"    # Ljava/lang/String;
    .param p10, "sdkVer"    # Ljava/lang/String;
    .param p11, "pd"    # Ljava/lang/String;
    .param p12, "tag"    # Ljava/lang/Object;

    .prologue
    .line 79
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 80
    .local v8, "ub":Landroid/net/Uri$Builder;
    const-string v2, "appId"

    invoke-virtual {v8, v2, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 81
    const-string v2, "encImei"

    invoke-virtual {v8, v2, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 82
    const-string v2, "deviceId"

    invoke-virtual {v8, v2, p6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 83
    const-string v2, "mcc"

    move-object/from16 v0, p7

    invoke-virtual {v8, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 84
    const-string v2, "mnc"

    move-object/from16 v0, p8

    invoke-virtual {v8, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 85
    const-string v2, "csc"

    move-object/from16 v0, p9

    invoke-virtual {v8, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 86
    const-string v2, "sdkVer"

    move-object/from16 v0, p10

    invoke-virtual {v8, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 87
    const-string v2, "pd"

    move-object/from16 v0, p11

    invoke-virtual {v8, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 89
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "uri":Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;

    const/4 v2, 0x0

    const-class v4, Lcom/samsung/android/coreapps/easysignup/entry/StubDownload;

    move v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 99
    .local v1, "request":Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;, "Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest<Lcom/samsung/android/coreapps/easysignup/entry/StubDownload;>;"
    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 101
    invoke-static {}, Lcom/samsung/android/coreapps/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 102
    return-void
.end method

.method public static stupUpdateCheck(ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 22
    .param p0, "token"    # I
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .param p3, "server"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "versionCode"    # Ljava/lang/String;
    .param p6, "deviceId"    # Ljava/lang/String;
    .param p7, "mcc"    # Ljava/lang/String;
    .param p8, "mnc"    # Ljava/lang/String;
    .param p9, "csc"    # Ljava/lang/String;
    .param p10, "sdkVer"    # Ljava/lang/String;
    .param p11, "pd"    # Ljava/lang/String;
    .param p12, "tag"    # Ljava/lang/Object;

    .prologue
    .line 20
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 21
    .local v8, "ub":Landroid/net/Uri$Builder;
    const-string v2, "appId"

    invoke-virtual {v8, v2, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 22
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 23
    const-string v2, "versionCode"

    invoke-virtual {v8, v2, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 25
    :cond_18
    const-string v2, "deviceId"

    invoke-virtual {v8, v2, p6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 26
    const-string v2, "mcc"

    move-object/from16 v0, p7

    invoke-virtual {v8, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 27
    const-string v2, "mnc"

    move-object/from16 v0, p8

    invoke-virtual {v8, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 28
    const-string v2, "csc"

    move-object/from16 v0, p9

    invoke-virtual {v8, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 29
    const-string v2, "sdkVer"

    move-object/from16 v0, p10

    invoke-virtual {v8, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 30
    const-string v2, "pd"

    move-object/from16 v0, p11

    invoke-virtual {v8, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 32
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "uri":Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;

    const/4 v2, 0x0

    const-class v4, Lcom/samsung/android/coreapps/easysignup/entry/StubUpdateCheckList;

    move v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 42
    .local v1, "request":Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;, "Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest<Lcom/samsung/android/coreapps/easysignup/entry/StubUpdateCheckList;>;"
    const/16 v2, 0x3a98

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->setTimeout(IIF)V

    .line 43
    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/easysignup/xml/XmlRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 45
    invoke-static {}, Lcom/samsung/android/coreapps/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 46
    return-void
.end method
