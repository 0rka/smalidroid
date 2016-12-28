.class public Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;
.super Landroid/app/Service;
.source "GetPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService$HttpRespHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GetPolicyService"

.field public static final TOKEN_GET_POLICY:I = 0xc8


# instance fields
.field httpRespHandler:Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService$HttpRespHandler;

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

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->mRequestIntentList:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService$HttpRespHandler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService$HttpRespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService$1;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->httpRespHandler:Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService$HttpRespHandler;

    .line 46
    return-void
.end method

.method public static cancel()V
    .registers 4

    .prologue
    .line 176
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 178
    .local v1, "context":Landroid/content/Context;
    const-string v2, "cancel"

    const-string v3, "GetPolicyService"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 181
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 182
    return-void
.end method

.method private static getPendingIntent()Landroid/app/PendingIntent;
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 185
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 187
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.coreapps.easysignup.ACTION_GET_POLICY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, "it":Landroid/content/Intent;
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 189
    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 191
    .local v2, "pIntent":Landroid/app/PendingIntent;
    return-object v2
.end method

.method public static registerAlarm(J)V
    .registers 6
    .param p0, "time"    # J

    .prologue
    .line 163
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 165
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->cancel()V

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerAlarm - time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GetPolicyService"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {v1}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 170
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 171
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v2, 0x1

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, p0, p1, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 173
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_35
    return-void
.end method


# virtual methods
.method public filteringInstalledPackage(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_a

    .line 145
    :cond_8
    const/4 v1, 0x0

    .line 159
    :cond_9
    return-object v1

    .line 148
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v1, "filteredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 151
    .local v4, "packageName":Ljava/lang/String;
    :try_start_1f
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 152
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_13

    .line 153
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_2d} :catch_2e

    goto :goto_13

    .line 155
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_2e
    move-exception v0

    .line 156
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NamenotFoundException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GetPolicyService"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 88
    const-string v0, "onCreate"

    const-string v1, "GetPolicyService"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "GetPolicyService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_48

    .line 92
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wake lock is acquired "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetPolicyService"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->mRequestIntentList:Ljava/util/ArrayList;

    .line 97
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 128
    const-string v0, "onDestroy"

    const-string v1, "GetPolicyService"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 131
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wake lock is relesed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetPolicyService"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_3a
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 102
    const-string v1, "onStartCommand"

    const-string v2, "GetPolicyService"

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->isSimAbsent()Z

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 105
    if-eqz p1, :cond_1e

    .line 106
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->mRequestIntentList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_1e
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getAccountIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "duid":Ljava/lang/String;
    const/16 v1, 0xc8

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->httpRespHandler:Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService$HttpRespHandler;

    new-instance v3, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService$1;-><init>(Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;)V

    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->policy(ILjava/lang/String;Landroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    .line 121
    .end local v0    # "duid":Ljava/lang/String;
    :goto_36
    const/4 v1, 0x2

    return v1

    .line 118
    :cond_38
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->stopSelf()V

    goto :goto_36
.end method
