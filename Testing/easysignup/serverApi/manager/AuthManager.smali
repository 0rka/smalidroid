.class public Lcom/samsung/android/coreapps/easysignup/serverApi/manager/AuthManager;
.super Ljava/lang/Object;
.source "AuthManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthManager"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static login(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .registers 15
    .param p0, "token"    # I
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "authServerUrl"    # Ljava/lang/String;
    .param p3, "duid"    # Ljava/lang/String;
    .param p4, "refreshToken"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 27
    move-object v7, p2

    .line 29
    .local v7, "AUTH_SERVER":Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "auth/v1/login"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 34
    .local v8, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "uri":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/LoginResp;

    move v4, p0

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 43
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 44
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 46
    const-string v1, "Duid"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 47
    const-string v1, "Refresh-Token"

    invoke-virtual {v0, v1, p4}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 49
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 51
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AuthManager"

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 54
    return-void
.end method
