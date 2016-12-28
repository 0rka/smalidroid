.class public Lcom/samsung/android/coreapps/easysignup/util/ServiceListManager;
.super Ljava/lang/Object;
.source "ServiceListManager.java"


# static fields
.field public static final SDK_SERVICE_ON_LIST:Ljava/lang/String; = "sdk_service_on_list"

.field private static final TAG:Ljava/lang/String; = "ServiceListManager"

.field public static final TNC_AGREE_SERVICE_LIST:Ljava/lang/String; = "tnc_agree_service_list"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deletePref(Ljava/lang/String;)V
    .registers 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-static {p0}, Lcom/samsung/android/coreapps/common/util/CommonPref;->remove(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static findService(Ljava/lang/String;I)Z
    .registers 7
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "sid"    # I

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/util/ServiceListManager;->loadServiceList(Ljava/lang/String;)[I

    move-result-object v1

    .line 74
    .local v1, "services":[I
    if-nez v1, :cond_8

    .line 83
    :cond_7
    :goto_7
    return v2

    .line 77
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ServiceListManager"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2f
    array-length v3, v1

    if-ge v0, v3, :cond_7

    .line 80
    aget v3, v1, v0

    if-ne p1, v3, :cond_38

    .line 81
    const/4 v2, 0x1

    goto :goto_7

    .line 79
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f
.end method

.method public static getServiceList(Landroid/content/Context;I)Ljava/util/ArrayList;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "joinServiceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "serviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0, v2}, Lcom/samsung/android/coreapps/easysignup/util/ServiceListManager;->isAddableService(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_15
    invoke-static {p0, v3}, Lcom/samsung/android/coreapps/easysignup/util/ServiceListManager;->isAddableService(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "com.android.mms"

    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_2e
    invoke-static {p0, v4}, Lcom/samsung/android/coreapps/easysignup/util/ServiceListManager;->isAddableService(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 132
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request service list : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceListManager"

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-object v0
.end method

.method public static getServiceListFromPref(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v0, "[]"

    invoke-static {p0, v0}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isAddableService(Landroid/content/Context;I)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # I

    .prologue
    .line 140
    invoke-static {p0, p1}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v0

    if-ltz v0, :cond_e

    invoke-static {p0, p1}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->isJoined(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static loadServiceList(Ljava/lang/String;)[I
    .registers 5
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "agreeServices":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/coreapps/common/util/CommonUtils;->convertToIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 46
    .local v1, "services":[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadServiceList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ServiceListManager"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-object v1
.end method

.method public static removeAllService(Ljava/lang/String;)V
    .registers 3
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeAllService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceListManager"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, p0, v1}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->updateService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static removeService(Ljava/lang/String;I)Z
    .registers 8
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "sid"    # I

    .prologue
    const/4 v5, 0x1

    .line 87
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/util/ServiceListManager;->loadServiceList(Ljava/lang/String;)[I

    move-result-object v1

    .line 88
    .local v1, "services":[I
    if-nez v1, :cond_8

    .line 102
    :goto_7
    return v5

    .line 91
    :cond_8
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 92
    .local v2, "sidsArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    array-length v3, v1

    if-ge v0, v3, :cond_1e

    .line 93
    aget v3, v1, v0

    if-ne p1, v3, :cond_18

    .line 92
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 96
    :cond_18
    aget v3, v1, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_15

    .line 99
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ServiceListManager"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p0, v4}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->updateService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static reset()V
    .registers 1

    .prologue
    .line 112
    const-string v0, "tnc_agree_service_list"

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/util/ServiceListManager;->removeAllService(Ljava/lang/String;)V

    .line 113
    const-string v0, "sdk_service_on_list"

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/util/ServiceListManager;->removeAllService(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static saveService(Ljava/lang/String;I)Z
    .registers 7
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "sid"    # I

    .prologue
    .line 51
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/util/ServiceListManager;->loadServiceList(Ljava/lang/String;)[I

    move-result-object v1

    .line 53
    .local v1, "services":[I
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 54
    .local v2, "sidsArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_24

    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v3, v1

    if-ge v0, v3, :cond_24

    .line 56
    aget v3, v1, v0

    if-eq v3, p1, :cond_1b

    .line 57
    aget v3, v1, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 59
    :cond_1b
    const-string v3, "Already this service was added..."

    const-string v4, "ServiceListManager"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v3, 0x0

    .line 69
    .end local v0    # "i":I
    :goto_23
    return v3

    .line 64
    :cond_24
    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ServiceListManager"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p0, v4}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->updateService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v3, 0x1

    goto :goto_23
.end method

.method public static saveServiceList(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .registers 6
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p1, :cond_4

    .line 30
    const/4 v2, 0x0

    .line 39
    :goto_3
    return v2

    .line 32
    :cond_4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 33
    .local v1, "sidsArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 34
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 36
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveServiceList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ServiceListManager"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p0, v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->updateService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v2, 0x1

    goto :goto_3
.end method
