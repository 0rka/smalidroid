.class public Lcom/samsung/android/coreapps/easysignup/serverApi/NetConfig;
.super Ljava/lang/Object;
.source "NetConfig.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "3z5w443l4l"

.field public static final APP_SECRET:Ljava/lang/String; = "402AC59994627FE0C13BE65434A521E2"

.field public static final AUTH_COMMON_KEY_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final CONTENT_TYPE_BINARY:Ljava/lang/String; = "application/octet-stream"

.field public static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"

.field public static final CONTENT_TYPE_XML:Ljava/lang/String; = "text/xml"

.field public static final GCM_ID:Ljava/lang/String; = "576165596854"

.field public static final KEY_ACCEPT_CONTENT_TYPE:Ljava/lang/String; = "Accept"

.field public static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "Access-Token"

.field public static final KEY_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final KEY_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field public static final KEY_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final KEY_COUNTY_CALLING_CODE:Ljava/lang/String; = "countryCallingCode"

.field public static final KEY_CSC:Ljava/lang/String; = "csc"

.field public static final KEY_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final KEY_DUID:Ljava/lang/String; = "Duid"

.field public static final KEY_EASY_SIGNUP_ID:Ljava/lang/String; = "easySignupID"

.field public static final KEY_IMSI:Ljava/lang/String; = "imsi"

.field public static final KEY_IMSI_TEXT:Ljava/lang/String; = "IMSIText"

.field public static final KEY_MCC:Ljava/lang/String; = "mcc"

.field public static final KEY_MESSAGE_TYPE:Ljava/lang/String; = "message_type"

.field public static final KEY_MNC:Ljava/lang/String; = "mnc"

.field public static final KEY_MOBILE_COUNTRY_CODE:Ljava/lang/String; = "mobileCountryCode"

.field public static final KEY_MODEL_NUMBER:Ljava/lang/String; = "mn"

.field public static final KEY_MSISDN:Ljava/lang/String; = "msisdn"

.field public static final KEY_REFRESH_TOKEN:Ljava/lang/String; = "Refresh-Token"

.field public static final KEY_REQUEST_MARKETING_AGREEMENT_ACCEPTED:Ljava/lang/String; = "requestMarketingAgreementAccepted"

.field public static final KEY_REQUEST_PRIVACY_ACCEPTED:Ljava/lang/String; = "requestPrivacyAccepted"

.field public static final KEY_REQUEST_TNC_ACCEPTED:Ljava/lang/String; = "requestTNCAccepted"

.field public static final KEY_SERVICE_ID:Ljava/lang/String; = "sid"

.field public static final KEY_TDK_APIID:Ljava/lang/String; = "APIID"

.field public static final KEY_TELEPHONE_NUMBER_TEXT:Ljava/lang/String; = "telephoneNumberText"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_X_OSP_APPID:Ljava/lang/String; = "x-osp-appId"

.field public static final KEY_X_OSP_ESU_CLIENT_VERSION:Ljava/lang/String; = "x-osp-esuclientversion"

.field public static final PATH_CREATE_TNC_INFO:Ljava/lang/String; = "createTNCInfoForEasySignup"

.field public static final PATH_GET_VERIFY_TNC:Ljava/lang/String; = "getVerifyTNCForEasySignup"

.field private static final SA_DEV_SERVER:Ljava/lang/String; = "http://54.208.185.179"

.field private static final SA_PRD_SERVER:Ljava/lang/String; = "https://api.samsungosp.com"

.field private static final SA_PRD_SERVER_CN:Ljava/lang/String; = "https://cn-api.samsungosp.com"

.field private static final SA_STG2_SERVER:Ljava/lang/String; = "http://stg-api.samsungosp.com"

.field public static final SPP_APP_ID:Ljava/lang/String; = "641d1714fac8cca0"

.field private static final TAG:Ljava/lang/String; = "NetConfig"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppId()Ljava/lang/String;
    .registers 1

    .prologue
    .line 81
    const-string v0, "3z5w443l4l"

    return-object v0
.end method

.method public static getAuthHeader()Ljava/lang/String;
    .registers 4

    .prologue
    .line 76
    const-string v0, "3z5w443l4l:402AC59994627FE0C13BE65434A521E2"

    .line 77
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "3z5w443l4l:402AC59994627FE0C13BE65434A521E2"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final getSAServer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getServerEnv()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "serverEnv":Ljava/lang/String;
    const-string v1, "DEV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 115
    const-string v1, "http://54.208.185.179"

    .line 122
    :goto_e
    return-object v1

    .line 116
    :cond_f
    const-string v1, "PREPRD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 117
    const-string v1, "http://stg-api.samsungosp.com"

    goto :goto_e

    .line 119
    :cond_1a
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CscUtil;->isChinaCountryCode()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 120
    const-string v1, "https://cn-api.samsungosp.com"

    goto :goto_e

    .line 122
    :cond_23
    const-string v1, "https://api.samsungosp.com"

    goto :goto_e
.end method

.method public static getUserAgent()Ljava/lang/String;
    .registers 7

    .prologue
    .line 85
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    .local v0, "context":Landroid/content/Context;
    const/4 v4, 0x0

    .line 89
    .local v4, "versionName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 90
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_c

    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 92
    :cond_c
    if-eqz v2, :cond_19

    .line 94
    :try_start_e
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_19} :catch_4c
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_19} :catch_51

    .line 102
    :cond_19
    :goto_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v3, "sb":Ljava/lang/StringBuilder;
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    if-eqz v0, :cond_47

    .line 107
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 95
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_4c
    move-exception v1

    .line 97
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_19

    .line 98
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_51
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_19
.end method
