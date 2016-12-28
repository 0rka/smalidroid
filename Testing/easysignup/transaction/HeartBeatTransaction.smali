.class public Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;
.super Landroid/app/Service;
.source "HeartBeatTransaction.java"

# interfaces
.implements Lcom/samsung/android/coreapps/easysignup/transaction/TokenValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$ResultState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$IdleState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mServiceID:Ljava/lang/Integer;


# instance fields
.field private mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

.field private mHeartBeatState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mIntervalMs:J

.field private mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mServiceID:Ljava/lang/Integer;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$IdleState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$IdleState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 37
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$HeartBeatState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mHeartBeatState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 38
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$ResultState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction$ResultState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mIntervalMs:J

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mHeartBeatState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)J
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mIntervalMs:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;J)J
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mIntervalMs:J

    return-wide p1
.end method

.method static synthetic access$500()Ljava/lang/Integer;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mServiceID:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    return-object v0
.end method

.method public static cancel()V
    .registers 4

    .prologue
    .line 255
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 257
    .local v1, "context":Landroid/content/Context;
    const-string v2, "cancel"

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 260
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 262
    return-void
.end method

.method private static getPendingIntent()Landroid/app/PendingIntent;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 265
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 267
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_HEART_BEAT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, "it":Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 270
    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private obtainEventMessage(Landroid/content/Intent;I)Landroid/os/Message;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 227
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 228
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "action":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 232
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 233
    return-object v1
.end method

.method public static registerAlarm(J)V
    .registers 6
    .param p0, "time"    # J

    .prologue
    .line 242
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 244
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->cancel()V

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerAlarm - time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {v1}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 249
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 250
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, p0, p1, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 252
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_35
    return-void
.end method


# virtual methods
.method checkAvailableHearbeat()Z
    .registers 13

    .prologue
    const-wide/16 v8, 0x0

    .line 273
    const-wide/32 v2, 0x2932e00

    .line 274
    .local v2, "defaultHeartbeatInteval":J
    const-string v6, "PREPRD"

    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getServerEnv()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 275
    const-wide/32 v2, 0x36ee80

    .line 276
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 277
    .local v0, "currentTime":J
    const-string v6, "last_heart_beat_time"

    invoke-static {v6, v8, v9}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 279
    .local v4, "prevHeartbeatTime":J
    cmp-long v6, v4, v8

    if-eqz v6, :cond_59

    cmp-long v6, v0, v4

    if-lez v6, :cond_59

    const-string v6, "heart_beat_interval"

    invoke-static {v6, v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    add-long/2addr v6, v4

    cmp-long v6, v0, v6

    if-gez v6, :cond_59

    .line 280
    const-string v6, "heart_beat_interval"

    invoke-static {v6, v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mIntervalMs:J

    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Heartbeat isn\'t available   time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v0, v4

    const-wide/32 v10, 0xea60

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const/4 v6, 0x0

    .line 285
    :goto_58
    return v6

    :cond_59
    const/4 v6, 0x1

    goto :goto_58
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 200
    const-string v0, "SERVICE CREATED"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 203
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_48

    .line 204
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 205
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

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_48
    new-instance v0, Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    .line 209
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->setInitialState(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 211
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    .line 212
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 164
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wake lock released "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_30
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 169
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 216
    const-string v1, "onStartCommand"

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    if-eqz p1, :cond_12

    .line 219
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->obtainEventMessage(Landroid/content/Intent;I)Landroid/os/Message;

    move-result-object v0

    .line 220
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 223
    .end local v0    # "msg":Landroid/os/Message;
    :cond_12
    const/4 v1, 0x2

    return v1
.end method
