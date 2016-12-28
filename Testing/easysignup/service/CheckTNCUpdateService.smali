.class public Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;
.super Landroid/app/Service;
.source "CheckTNCUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService$TNCRespHandler;
    }
.end annotation


# static fields
.field public static final REQ_ID:I = 0x85ce

.field private static final TAG:Ljava/lang/String; = "CheckTNCUpdateService"

.field public static final TNC_UPDATED_NOTI_ID:I = 0x1c6d215

.field private static final TOKEN_GET_VERIFY_TNC:I = 0x3

.field private static final TOKEN_REFRESH_ACCESS_TOKEN:I = 0x4


# instance fields
.field httpRespHandler:Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService$TNCRespHandler;

.field private mImsi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService$TNCRespHandler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService$TNCRespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService$1;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->httpRespHandler:Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService$TNCRespHandler;

    .line 41
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->mImsi:Ljava/lang/String;

    .line 108
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->showNoti()V

    return-void
.end method

.method public static cancel()V
    .registers 4

    .prologue
    .line 190
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 192
    .local v1, "context":Landroid/content/Context;
    const-string v2, "cancel"

    const-string v3, "CheckTNCUpdateService"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 195
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 196
    return-void
.end method

.method public static getCount()I
    .registers 1

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 104
    .local v0, "count":I
    return v0
.end method

.method private static getPendingIntent()Landroid/app/PendingIntent;
    .registers 6

    .prologue
    const/4 v5, 0x0

    .line 199
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 201
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .local v1, "it":Landroid/content/Intent;
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 204
    const-string v3, "imsi"

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-static {v0, v5, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 208
    .local v2, "pIntent":Landroid/app/PendingIntent;
    return-object v2
.end method

.method public static registerAlarm(J)V
    .registers 6
    .param p0, "time"    # J

    .prologue
    .line 179
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 181
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->cancel()V

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerAlarm - time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CheckTNCUpdateService"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 186
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v2, 0x1

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, p0, p1, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 187
    return-void
.end method

.method private showNoti()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 216
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v2, "pendingIntent":Landroid/content/Intent;
    const/high16 v4, 0x24000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 219
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    .local v1, "notifyBuilder":Landroid/app/Notification$Builder;
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x85ce    # 4.8E-41f

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 221
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 222
    sget v4, Lcom/samsung/android/coreapps/easysignup/R$string;->app_name:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 223
    sget v4, Lcom/samsung/android/coreapps/easysignup/R$drawable;->stat_notify_share_contact:I

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 225
    sget v4, Lcom/samsung/android/coreapps/easysignup/R$string;->app_name:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 226
    sget v4, Lcom/samsung/android/coreapps/easysignup/R$string;->update_tnc:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 228
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 229
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_56

    .line 230
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 233
    :cond_56
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 234
    .local v3, "style":Landroid/app/Notification$BigTextStyle;
    sget v4, Lcom/samsung/android/coreapps/easysignup/R$string;->app_name:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 235
    sget v4, Lcom/samsung/android/coreapps/easysignup/R$string;->update_tnc:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 236
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 238
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 239
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const v4, 0x1c6d215

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 240
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 59
    if-eqz p1, :cond_a

    .line 60
    const-string v0, "imsi"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->mImsi:Ljava/lang/String;

    .line 63
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->mImsi:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 64
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->mImsi:Ljava/lang/String;

    .line 71
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ######## onStartCommand [System.currentTimeMillis()] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CheckTNCUpdateService"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->httpRespHandler:Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService$TNCRespHandler;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->mImsi:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->mImsi:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getMCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService$1;-><init>(Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;)V

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/AcceptDisclaimerManager;->getVerifyTNCForEasySignup(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 85
    const/4 v0, 0x2

    return v0
.end method
