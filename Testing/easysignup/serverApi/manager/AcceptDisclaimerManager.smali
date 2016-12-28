.class public Lcom/samsung/android/coreapps/easysignup/serverApi/manager/AcceptDisclaimerManager;
.super Ljava/lang/Object;
.source "AcceptDisclaimerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/AcceptDisclaimerManager;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/AcceptDisclaimerManager;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTNCInfoForEasySignup(ILandroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .registers 20
    .param p0, "token"    # I
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "bAgreeMarketing"    # Z
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "imsi"    # Ljava/lang/String;
    .param p5, "mcc"    # Ljava/lang/String;
    .param p6, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 105
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getSAServer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "v2/profile/user/user/easySignup"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "createTNCInfoForEasySignup"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    .line 109
    .local v11, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "uri":Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;

    const/4 v2, 0x1

    const-class v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/VerifyTNCForEasySignupResponseVO;

    move v5, p0

    move-object v6, p1

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 118
    .local v1, "request":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;
    const-string v2, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;

    .line 119
    const-string v2, "x-osp-appId"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;

    .line 120
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getServerEnv()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PREPRD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 121
    const-string v2, "x-osp-esuclientversion"

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->getAppVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;

    .line 123
    :cond_53
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 125
    .local v12, "xmlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "easySignupID"

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v2, "IMSIText"

    move-object/from16 v0, p4

    invoke-virtual {v12, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v2, "mobileCountryCode"

    move-object/from16 v0, p5

    invoke-virtual {v12, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v2, "requestTNCAccepted"

    const-string v4, "Y"

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v2, "requestPrivacyAccepted"

    const-string v4, "Y"

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/4 v2, 0x1

    if-ne p2, v2, :cond_b1

    .line 137
    const-string v2, "requestMarketingAgreementAccepted"

    const-string v4, "Y"

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :goto_85
    const-string v2, "countryCallingCode"

    invoke-static/range {p5 .. p5}, Lcom/samsung/android/coreapps/common/util/NumberUtils;->convertMCC2CountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/AcceptDisclaimerManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlParser;->createGson()Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;

    move-result-object v10

    .line 150
    .local v10, "gxml":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;
    :try_start_9b
    const-string v2, "TNCInfoForEasySignupRequestVO"

    invoke-virtual {v10, v12, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->toXml(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, "body":Ljava/lang/String;
    invoke-virtual {v1, v8}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->setBody(Ljava/lang/String;)V
    :try_end_a4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9b .. :try_end_a4} :catch_b9
    .catch Ljava/lang/SecurityException; {:try_start_9b .. :try_end_a4} :catch_be
    .catch Ljava/lang/IllegalAccessException; {:try_start_9b .. :try_end_a4} :catch_c3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9b .. :try_end_a4} :catch_c8

    .line 166
    .end local v8    # "body":Ljava/lang/String;
    :goto_a4
    const-string v2, "EsuRequestManager"

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 168
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 169
    return-void

    .line 139
    .end local v10    # "gxml":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;
    :cond_b1
    const-string v2, "requestMarketingAgreementAccepted"

    const-string v4, "N"

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_85

    .line 152
    .restart local v10    # "gxml":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;
    :catch_b9
    move-exception v9

    .line 154
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_a4

    .line 155
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :catch_be
    move-exception v9

    .line 157
    .local v9, "e":Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_a4

    .line 158
    .end local v9    # "e":Ljava/lang/SecurityException;
    :catch_c3
    move-exception v9

    .line 160
    .local v9, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v9}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_a4

    .line 161
    .end local v9    # "e":Ljava/lang/IllegalAccessException;
    :catch_c8
    move-exception v9

    .line 163
    .local v9, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v9}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_a4
.end method

.method public static getMcc(ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V
    .registers 11
    .param p0, "token"    # I
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 178
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getSAServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "v2/license/rule/getMyCountryZone"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 181
    .local v7, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "uri":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;

    const/4 v1, 0x0

    const-class v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/CountryCodeVO;

    move v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 190
    .local v0, "request":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;
    const-string v1, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;

    .line 191
    const-string v1, "x-osp-appId"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;

    .line 193
    const-string v1, "EsuRequestManager"

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 195
    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/AcceptDisclaimerManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 198
    return-void
.end method

.method public static getVerifyTNCForEasySignup(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .registers 19
    .param p0, "token"    # I
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "mcc"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 36
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getSAServer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "v2/profile/user/user/easySignup"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "getVerifyTNCForEasySignup"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    .line 40
    .local v11, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "uri":Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;

    const/4 v2, 0x1

    const-class v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/VerifyTNCForEasySignupResponseVO;

    move v5, p0

    move-object v6, p1

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;-><init>(ILjava/lang/String;Ljava/lang/Class;ILandroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 49
    .local v1, "request":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;
    const-string v2, "Authorization"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAuthHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;

    .line 50
    const-string v2, "x-osp-appId"

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;

    .line 51
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getServerEnv()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PREPRD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 52
    const-string v2, "x-osp-esuclientversion"

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->getAppVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;

    .line 54
    :cond_53
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 56
    .local v12, "xmlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "easySignupID"

    invoke-virtual {v12, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v2, "IMSIText"

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v2, "mobileCountryCode"

    move-object/from16 v0, p4

    invoke-virtual {v12, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/AcceptDisclaimerManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlParser;->createGson()Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;

    move-result-object v10

    .line 73
    .local v10, "gxml":Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;
    :try_start_78
    const-string v2, "VerifyTNCForEasySignupRequestVO"

    invoke-virtual {v10, v12, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXml;->toXml(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 74
    .local v8, "body":Ljava/lang/String;
    invoke-virtual {v1, v8}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->setBody(Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/IllegalArgumentException; {:try_start_78 .. :try_end_81} :catch_8e
    .catch Ljava/lang/SecurityException; {:try_start_78 .. :try_end_81} :catch_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_78 .. :try_end_81} :catch_98
    .catch Ljava/lang/NoSuchFieldException; {:try_start_78 .. :try_end_81} :catch_9d

    .line 89
    .end local v8    # "body":Ljava/lang/String;
    :goto_81
    const-string v2, "EsuRequestManager"

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/gsonxml/GsonXmlRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 91
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 92
    return-void

    .line 75
    :catch_8e
    move-exception v9

    .line 77
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_81

    .line 78
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :catch_93
    move-exception v9

    .line 80
    .local v9, "e":Ljava/lang/SecurityException;
    invoke-virtual {v9}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_81

    .line 81
    .end local v9    # "e":Ljava/lang/SecurityException;
    :catch_98
    move-exception v9

    .line 83
    .local v9, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v9}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_81

    .line 84
    .end local v9    # "e":Ljava/lang/IllegalAccessException;
    :catch_9d
    move-exception v9

    .line 86
    .local v9, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v9}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_81
.end method
