.class public Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;
.super Ljava/lang/Object;
.source "DeviceProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$1;,
        Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-class v0, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    return-void
.end method

.method public static activate(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .registers 13
    .param p0, "token"    # I
    .param p1, "cbHandler"    # Landroid/os/Handler;
    .param p2, "duid"    # Ljava/lang/String;
    .param p3, "refreshToken"    # Ljava/lang/String;
    .param p4, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 675
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "dp/v1/activate"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 678
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 680
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Ljava/lang/Object;

    move v4, p0

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 687
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 688
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 690
    const-string v1, "Duid"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 691
    const-string v1, "Refresh-Token"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 693
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 695
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 697
    return-void
.end method

.method public static authenticate(ILandroid/os/Handler;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthParams;Lcom/android/volley/Response$ErrorListener;)V
    .registers 13
    .param p0, "token"    # I
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "params"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthParams;
    .param p3, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 440
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "dp/v1/auth"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 443
    .local v8, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, "uri":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;

    move v4, p0

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 452
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 453
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 455
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;-><init>(Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 457
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 458
    .local v7, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v7, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    .line 460
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 462
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 465
    return-void
.end method

.method public static authenticate2FA(ILcom/samsung/android/coreapps/common/transaction/StateHandler;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthParams;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;)V
    .registers 15
    .param p0, "token"    # I
    .param p1, "handler"    # Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    .param p2, "params"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthParams;
    .param p3, "duid"    # Ljava/lang/String;
    .param p4, "accessToken"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    .prologue
    .line 468
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "dp/v1/auth"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 471
    .local v8, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v1, "refuse"

    iget-object v3, p2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthParams;->auth_code:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 472
    const-string v1, "type"

    const-string v3, "refuse"

    invoke-virtual {v8, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 477
    :goto_23
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, "uri":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;

    move v4, p0

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 486
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 487
    const-string v1, "Duid"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 488
    const-string v1, "Access-Token"

    invoke-virtual {v0, v1, p4}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 490
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;-><init>(Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 492
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 493
    .local v7, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v7, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    .line 495
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 497
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 500
    return-void

    .line 474
    .end local v0    # "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    .end local v2    # "uri":Ljava/lang/String;
    .end local v7    # "gson":Lcom/google/gson/Gson;
    :cond_74
    const-string v1, "type"

    const-string v3, "accept"

    invoke-virtual {v8, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_23
.end method

.method public static cancel2FARequest(ILcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqParams;Landroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V
    .registers 12
    .param p0, "token"    # I
    .param p1, "body"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqParams;
    .param p2, "cbHandler"    # Landroid/os/Handler;
    .param p3, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 409
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "dp/v1/cancel"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "auth_type"

    const-string v3, "2FA"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 413
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x1

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Cancel2FAReqResp;

    move v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 420
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    .line 423
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;-><init>(Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 425
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 427
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 430
    return-void
.end method

.method public static deactivate(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .registers 13
    .param p0, "token"    # I
    .param p1, "cbHandler"    # Landroid/os/Handler;
    .param p2, "duid"    # Ljava/lang/String;
    .param p3, "refreshToken"    # Ljava/lang/String;
    .param p4, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 707
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "dp/v1/deactivate"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 710
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 712
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Ljava/lang/Object;

    move v4, p0

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 719
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "Duid"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 720
    const-string v1, "Refresh-Token"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 722
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 724
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 726
    return-void
.end method

.method public static deleteService(ILandroid/os/Handler;IILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .registers 15
    .param p0, "token"    # I
    .param p1, "cbHandler"    # Landroid/os/Handler;
    .param p2, "agent"    # I
    .param p3, "sid"    # I
    .param p4, "duid"    # Ljava/lang/String;
    .param p5, "refreshToken"    # Ljava/lang/String;
    .param p6, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 223
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServerForDeAuth()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "dp/v1/user"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "delete_type"

    const-string v4, "app"

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "sid"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "use_ef"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 229
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x3

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/DeleteServiceResp;

    move v4, p0

    move-object v5, p1

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 238
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 240
    const-string v1, "Duid"

    invoke-virtual {v0, v1, p4}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 241
    const-string v1, "Refresh-Token"

    invoke-virtual {v0, v1, p5}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 243
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 245
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 248
    return-void
.end method

.method public static deleteUser(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .registers 14
    .param p0, "token"    # I
    .param p1, "cbHandler"    # Landroid/os/Handler;
    .param p2, "duid_list"    # Ljava/lang/String;
    .param p3, "duid"    # Ljava/lang/String;
    .param p4, "refreshToken"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 189
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServerForDeAuth()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "dp/v1/user"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "duid"

    invoke-virtual {v1, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 193
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x3

    const/4 v3, 0x0

    move v4, p0

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 202
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "Duid"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 203
    const-string v1, "Refresh-Token"

    invoke-virtual {v0, v1, p4}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 205
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 207
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 210
    return-void
.end method

.method public static expireToken(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .registers 16
    .param p0, "token"    # I
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "duid"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "serverToken"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 606
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "debugtool/temp/token/force-expire"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "token_type"

    invoke-virtual {v1, v3, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 610
    .local v9, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, "uri":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Ljava/lang/Object;

    move v4, p0

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 619
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 620
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 622
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 624
    .local v7, "gson":Lcom/google/gson/Gson;
    new-instance v8, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ExpireTokenParams;

    invoke-direct {v8, p2, p3, p4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ExpireTokenParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    .local v8, "params":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ExpireTokenParams;
    invoke-virtual {v7, v8}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    .line 627
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 629
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 632
    return-void
.end method

.method public static forceAuthenticate(ILandroid/os/Handler;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ForceAuthParams;Lcom/android/volley/Response$ErrorListener;)V
    .registers 13
    .param p0, "token"    # I
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "params"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ForceAuthParams;
    .param p3, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 569
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "debugtool/temp/msisdn/force-auth"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 572
    .local v8, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, "uri":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthResp;

    move v4, p0

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 581
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 582
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 584
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;-><init>(Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 586
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 587
    .local v7, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v7, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    .line 589
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 591
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 594
    return-void
.end method

.method public static getUser(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .registers 13
    .param p0, "token"    # I
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "duid"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 787
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "dp/v1/user"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 790
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 792
    .local v2, "uri":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/GetUserV2Resp;

    move v4, p0

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 799
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "Duid"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 800
    const-string v1, "Access-Token"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 801
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 803
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 805
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 808
    return-void
.end method

.method public static getUserV2(ILandroid/os/Handler;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .registers 15
    .param p0, "token"    # I
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "exc_msisdn_yn"    # I
    .param p4, "duid"    # Ljava/lang/String;
    .param p5, "accessToken"    # Ljava/lang/String;
    .param p6, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 812
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "dp/v2/user"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "guid"

    invoke-virtual {v1, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "exc_msisdn_yn"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 817
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, "uri":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/GetUserV2Resp;

    move v4, p0

    move-object v5, p1

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 826
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "Duid"

    invoke-virtual {v0, v1, p4}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 827
    const-string v1, "Access-Token"

    invoke-virtual {v0, v1, p5}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 828
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 830
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 832
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 835
    return-void
.end method

.method public static heartBeat(ILandroid/os/Handler;Ljava/util/ArrayList;Lcom/android/volley/Response$ErrorListener;)V
    .registers 14
    .param p0, "token"    # I
    .param p1, "cbHandler"    # Landroid/os/Handler;
    .param p3, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Handler;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatReqBody$HeartBeatParam;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 641
    .local p2, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatReqBody$HeartBeatParam;>;"
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "dp/v1/alive"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 644
    .local v9, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatResp;

    move v4, p0

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 653
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 654
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 656
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 658
    new-instance v7, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatReqBody;

    invoke-direct {v7, p2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatReqBody;-><init>(Ljava/util/ArrayList;)V

    .line 660
    .local v7, "body":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/HeartBeatReqBody;
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    .line 661
    .local v8, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v8, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 665
    return-void
.end method

.method public static isAuth(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .registers 11
    .param p0, "token"    # I
    .param p1, "cbHandler"    # Landroid/os/Handler;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 281
    const/4 v4, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->isAuth(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 282
    return-void
.end method

.method public static isAuth(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .registers 16
    .param p0, "token"    # I
    .param p1, "cbHandler"    # Landroid/os/Handler;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 291
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "dp/v2/isauth"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 294
    .local v9, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;

    move v4, p0

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 303
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 304
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 306
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;-><init>(Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 308
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 310
    new-instance v7, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthReqBody;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CscUtil;->getCSC()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v7, p2, p3, v1, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthReqBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .local v7, "body":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthReqBody;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 312
    invoke-virtual {v7, p4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthReqBody;->setRequestType(Ljava/lang/String;)V

    .line 315
    :cond_59
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    .line 316
    .local v8, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v8, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 320
    return-void
.end method

.method public static isReq2FAuth(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;)V
    .registers 13
    .param p0, "token"    # I
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "duid"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "errorListener"    # Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    .prologue
    .line 534
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "dp/v1/isreqauth"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "auth_type"

    const-string v4, "2FA"

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 538
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, "uri":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsReq2FAResp;

    move v4, p0

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 547
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 548
    const-string v1, "Duid"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 549
    const-string v1, "Access-Token"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 551
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;-><init>(Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 553
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 555
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 558
    return-void
.end method

.method public static isValid(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/volley/Response$ErrorListener;)V
    .registers 15
    .param p0, "token"    # I
    .param p1, "cbHandler"    # Landroid/os/Handler;
    .param p2, "duid"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "msisdn"    # Ljava/lang/String;
    .param p5, "sid"    # I
    .param p6, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 765
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "dp/v1/isvalid"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 768
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v1, "msisdn"

    invoke-virtual {v7, v1, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 769
    const-string v1, "sid"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 771
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 773
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsValidResp;

    move v4, p0

    move-object v5, p1

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 775
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "Duid"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 776
    const-string v1, "Access-Token"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 777
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 779
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 781
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 784
    return-void
.end method

.method public static join(ILandroid/os/Handler;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;Lcom/android/volley/Response$ErrorListener;)V
    .registers 13
    .param p0, "token"    # I
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "params"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinParams;
    .param p3, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 65
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "dp/v1/user"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 68
    .local v8, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "uri":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinResp;

    move v4, p0

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 77
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 78
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 80
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 83
    .local v7, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v7, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    .line 85
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 87
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 88
    return-void
.end method

.method public static message(ILandroid/os/Handler;Lcom/samsung/android/coreapps/easysignup/serverApi/manager/MessageParams;Ljava/lang/String;Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;)V
    .registers 14
    .param p0, "token"    # I
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "params"    # Lcom/samsung/android/coreapps/easysignup/serverApi/manager/MessageParams;
    .param p3, "messageType"    # Ljava/lang/String;
    .param p4, "errorListener"    # Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    .prologue
    .line 506
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "dp/v1/message"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "message_type"

    invoke-virtual {v1, v3, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 510
    .local v8, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 512
    .local v2, "uri":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MessageResp;

    move v4, p0

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 519
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 521
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;-><init>(Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 523
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 524
    .local v7, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v7, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    .line 526
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 528
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 531
    return-void
.end method

.method public static off(ILandroid/os/Handler;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .registers 14
    .param p0, "token"    # I
    .param p1, "handler"    # Landroid/os/Handler;
    .param p3, "duid"    # Ljava/lang/String;
    .param p4, "accessToken"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Handler;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 153
    .local p2, "sidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "dp/v1/off"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "sid"

    const-string v4, ","

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 157
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "uri":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceStatusResp;

    move v4, p0

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 166
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 167
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 169
    const-string v1, "Duid"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 170
    const-string v1, "Access-Token"

    invoke-virtual {v0, v1, p4}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 172
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 174
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 177
    return-void
.end method

.method public static on(ILandroid/os/Handler;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .registers 14
    .param p0, "token"    # I
    .param p1, "handler"    # Landroid/os/Handler;
    .param p3, "duid"    # Ljava/lang/String;
    .param p4, "accessToken"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Handler;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, "sidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "dp/v1/on"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "sid"

    const-string v4, ","

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 123
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "uri":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceStatusResp;

    move v4, p0

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 132
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 133
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 135
    const-string v1, "Duid"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 136
    const-string v1, "Access-Token"

    invoke-virtual {v0, v1, p4}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 138
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 140
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 143
    return-void
.end method

.method public static policy(ILjava/lang/String;Landroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V
    .registers 12
    .param p0, "token"    # I
    .param p1, "duid"    # Ljava/lang/String;
    .param p2, "cbHandler"    # Landroid/os/Handler;
    .param p3, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 256
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "dp/v3/policy"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "csc"

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CscUtil;->getCSC()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "mn"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "Duid"

    invoke-virtual {v1, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 262
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp;

    move v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 271
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 272
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 274
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 276
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 279
    return-void
.end method

.method public static request2FAuth(ILcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthParams;Landroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V
    .registers 13
    .param p0, "token"    # I
    .param p1, "body"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthParams;
    .param p2, "cbHandler"    # Landroid/os/Handler;
    .param p3, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 356
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "dp/v2/reqauth"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "auth_type"

    const-string v3, "2FA"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 360
    .local v8, "uriBuilder":Landroid/net/Uri$Builder;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x1

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthResp;

    move v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 367
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 368
    .local v7, "gson":Lcom/google/gson/Gson;
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    move-result-object v1

    invoke-virtual {v7, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    .line 371
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;-><init>(Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 373
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 375
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 378
    return-void
.end method

.method public static request2FAuthV3(IILcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthParams;Landroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V
    .registers 14
    .param p0, "token"    # I
    .param p1, "sid"    # I
    .param p2, "body"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthParams;
    .param p3, "cbHandler"    # Landroid/os/Handler;
    .param p4, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 380
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "dp/v3/reqauth"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "auth_type"

    const-string v3, "2FA"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "sid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 385
    .local v8, "uriBuilder":Landroid/net/Uri$Builder;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x1

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthRespV3;

    move v4, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 392
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 393
    .local v7, "gson":Lcom/google/gson/Gson;
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    move-result-object v1

    invoke-virtual {v7, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    .line 396
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;-><init>(Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 398
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 400
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 403
    return-void
.end method

.method public static requestMtAuth(ILcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;Landroid/os/Handler;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .registers 14
    .param p0, "token"    # I
    .param p1, "body"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MtAuthReqBody;
    .param p2, "cbHandler"    # Landroid/os/Handler;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 330
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "dp/v1/reqauth"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "auth_type"

    invoke-virtual {v1, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 334
    .local v8, "uriBuilder":Landroid/net/Uri$Builder;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x1

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    move v4, p0

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 341
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 342
    .local v7, "gson":Lcom/google/gson/Gson;
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    move-result-object v1

    invoke-virtual {v7, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    .line 346
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$CommonRetryPolicy;-><init>(Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 348
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 350
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 353
    return-void
.end method

.method public static sendPushMessage(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;Lcom/android/volley/Response$ErrorListener;)V
    .registers 16
    .param p0, "token"    # I
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message_type"    # Ljava/lang/String;
    .param p3, "duid"    # Ljava/lang/String;
    .param p4, "access_token"    # Ljava/lang/String;
    .param p5, "messageRequest"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;
    .param p6, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 91
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "/dp/v1/message"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 92
    .local v8, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v1, "message_type"

    invoke-virtual {v8, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 93
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "uri":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x1

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageResponse;

    move v4, p0

    move-object v5, p1

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 100
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "Duid"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 101
    const-string v1, "Access-Token"

    invoke-virtual {v0, v1, p4}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 102
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 104
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 105
    .local v7, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v7, p5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 109
    return-void
.end method

.method public static update(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;Lcom/android/volley/Response$ErrorListener;)V
    .registers 15
    .param p0, "token"    # I
    .param p1, "cbHandler"    # Landroid/os/Handler;
    .param p2, "duid"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "params"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 737
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "dp/v1/update"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 740
    .local v8, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 742
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/common/model/GsonRequest;

    const/4 v1, 0x2

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UpdateServiceResp;

    move v4, p0

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/common/model/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 749
    .local v0, "request":Lcom/samsung/android/coreapps/common/model/GsonRequest;
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 750
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 752
    const-string v1, "Duid"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 753
    const-string v1, "Access-Token"

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/common/model/GsonRequest;

    .line 755
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 757
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 758
    .local v7, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v7, p4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->setBody(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/common/model/GsonRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 762
    return-void
.end method
