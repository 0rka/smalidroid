.class public Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;
.super Landroid/app/Service;
.source "SelfUpgradeService.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TOKEN_STUB_CHECK:I = 0x1


# instance fields
.field private mErrorListener:Lcom/android/volley/Response$ErrorListener;

.field public mHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 81
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService$1;-><init>(Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService$2;-><init>(Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 34
    const-string v0, "##### onCreate"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 37
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_48

    .line 38
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 39
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

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_48
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 64
    const-string v0, "onDestroy"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 67
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 69
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

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_3a
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 46
    const-string v0, "onStartCommand"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "last_update_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/ConnectivityUtils;->isMobileNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/ConnectivityUtils;->isWifiAvailable()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 51
    const-string v0, "Network is not available..."

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->stopSelf()V

    .line 57
    :goto_2a
    const/4 v0, 0x2

    return v0

    .line 54
    :cond_2c
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/SelfUpgradeService;->mErrorListener:Lcom/android/volley/Response$ErrorListener;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/SelfUpgradeUtils;->requestSelfUpgrade(Landroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_2a
.end method
