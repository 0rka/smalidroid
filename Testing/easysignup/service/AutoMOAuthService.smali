.class public Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;
.super Landroid/app/Service;
.source "AutoMOAuthService.java"


# static fields
.field public static final EXTRA_AUTO_HANDLER:Ljava/lang/String; = "auto_mo_handler"

.field private static final NO_OF_RETRIES:I = 0x1

.field public static final PREF_FROM_EULA:Ljava/lang/String; = "key_mo_from_eula"

.field public static final PREF_LEFT_RETRIES:Ljava/lang/String; = "key_left_retries"

.field public static final PREF_NEXT_RETRY:Ljava/lang/String; = "key_next_retry"

.field private static final RETRY_INTERVAL:J = 0xdbba0L

.field private static final TAG:Ljava/lang/String;

.field public static final TOKEN_AUTO_MO_AUTH:I = 0x384


# instance fields
.field private mImsi:Ljava/lang/String;

.field private mRequestIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private resultHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->mRequestIntentList:Ljava/util/ArrayList;

    .line 49
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->mImsi:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService$1;-><init>(Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->resultHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->resetRetry()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->retry()V

    return-void
.end method

.method public static cancel()V
    .registers 4

    .prologue
    .line 110
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 111
    .local v1, "context":Landroid/content/Context;
    const-string v2, "cancel"

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 113
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 114
    return-void
.end method

.method private checkNetwork()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->isSimAbsent()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 165
    const-string v3, "Check your sim card"

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->resetRetry()V

    .line 177
    :goto_12
    return v2

    .line 169
    :cond_13
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/network/NetState;->getNetState(Landroid/content/Context;)I

    move-result v0

    .line 170
    .local v0, "netState":I
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 171
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v4, -0x3

    if-eq v4, v0, :cond_3f

    const/4 v4, -0x2

    if-eq v4, v0, :cond_3f

    const-string v4, "is_forceauth_mode"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v4

    if-nez v4, :cond_50

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v4

    if-eqz v4, :cond_50

    .line 172
    :cond_3f
    const-string v4, "Unable to connect to the network"

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v4, "key_mo_from_eula"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_12

    :cond_50
    move v2, v3

    .line 177
    goto :goto_12
.end method

.method private static getPendingIntent()Landroid/app/PendingIntent;
    .registers 4

    .prologue
    .line 117
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v1, "it":Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_AUTO_MO_AUTH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method public static registerAlarm(J)V
    .registers 6
    .param p0, "time"    # J

    .prologue
    .line 102
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->cancel()V

    .line 103
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 104
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerAlarm - time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 106
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, p0, p1, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 107
    return-void
.end method

.method private requestAuthentication()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 182
    const-string v2, "key_left_retries"

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "key_left_retries"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getInt(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v2

    if-gtz v2, :cond_1f

    .line 183
    const-string v2, "No more retries..."

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_1e
    return-void

    .line 186
    :cond_1f
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->checkNetwork()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 187
    const-string v2, "Some thing went wrong"

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 191
    :cond_2d
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 192
    const-string v2, "Application is already authenticated."

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 196
    :cond_3f
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    .local v0, "it":Landroid/content/Intent;
    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_JOIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v2, "imsi"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v2, "AuthRequestFrom"

    const-string v3, "EULA"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v2, "auto_mo_handler"

    new-instance v3, Landroid/os/Messenger;

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->resultHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v1, "serviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v2

    if-ltz v2, :cond_8b

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.mms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 205
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_8b
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v2

    if-ltz v2, :cond_9c

    .line 208
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_9c
    const-string v2, "service_id_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start JoinTransaction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e
.end method

.method private resetRetry()V
    .registers 3

    .prologue
    .line 81
    const-string v0, "key_mo_from_eula"

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->remove(Ljava/lang/String;)V

    .line 82
    const-string v0, "key_next_retry"

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->remove(Ljava/lang/String;)V

    .line 83
    const-string v0, "key_left_retries"

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->remove(Ljava/lang/String;)V

    .line 84
    const-string v0, "auth_code"

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->remove(Ljava/lang/String;)V

    .line 85
    const-string v0, "No More Retries..."

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method private retry()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 88
    const-string v3, "key_left_retries"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getInt(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 89
    .local v2, "retry":I
    if-lez v2, :cond_59

    .line 90
    const-string v3, "key_mo_from_eula"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xdbba0

    add-long v0, v4, v6

    .line 92
    .local v0, "next_interval":J
    const-string v3, "key_next_retry"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    const-string v3, "key_left_retries"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->registerAlarm(J)V

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retries left: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " next_interval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .end local v0    # "next_interval":J
    :goto_58
    return-void

    .line 97
    :cond_59
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->resetRetry()V

    goto :goto_58
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 131
    const-string v0, "onCreate"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->mRequestIntentList:Ljava/util/ArrayList;

    .line 134
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 138
    if-eqz p1, :cond_7

    .line 139
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->mRequestIntentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_7
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->mImsi:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 144
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->mRequestIntentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->stopSelf()V

    .line 151
    :goto_1d
    const/4 v0, 0x2

    return v0

    .line 148
    :cond_1f
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/service/AutoMOAuthService;->requestAuthentication()V

    goto :goto_1d
.end method
