.class public Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;
.super Landroid/app/Service;
.source "GetUserTransaction.java"

# interfaces
.implements Lcom/samsung/android/coreapps/easysignup/transaction/TokenValue;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCbHandler:Landroid/os/Messenger;

.field private mResponseHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction$1;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;->mResponseHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;->sendResponseMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static final sendMsisdnChangedBroadcast(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-string v0, "MSISDN has been changed. send broadcast"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_MSISDN_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method private sendResponseMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "origMsg"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0xe6

    .line 39
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;->mCbHandler:Landroid/os/Messenger;

    if-nez v6, :cond_e

    .line 40
    const-string v6, "callback handler is null"

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_d
    return-void

    .line 44
    :cond_e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 45
    .local v2, "message":Landroid/os/Message;
    iget v6, p1, Landroid/os/Message;->what:I

    iput v6, v2, Landroid/os/Message;->what:I

    .line 46
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v7, :cond_69

    const/4 v6, 0x0

    :goto_1b
    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 48
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v7, :cond_5e

    .line 49
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/GetUserResp;

    .line 50
    .local v5, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/GetUserResp;
    iget-object v6, v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/GetUserResp;->msisdn:Ljava/lang/String;

    iput-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "imsi":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "oldMsisdn":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/GetUserResp;->msisdn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/GetUserResp;->device_idx:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "newMsisdn":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5b

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5b

    .line 56
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;->sendMsisdnChangedBroadcast(Landroid/content/Context;)V

    .line 59
    :cond_5b
    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->setMsisdn(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .end local v1    # "imsi":Ljava/lang/String;
    .end local v3    # "newMsisdn":Ljava/lang/String;
    .end local v4    # "oldMsisdn":Ljava/lang/String;
    .end local v5    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/GetUserResp;
    :cond_5e
    :try_start_5e
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;->mCbHandler:Landroid/os/Messenger;

    invoke-virtual {v6, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_63} :catch_64

    goto :goto_d

    .line 64
    :catch_64
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d

    .line 46
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_69
    const/4 v6, 0x1

    goto :goto_1b
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 77
    const-string v0, "onStartCommand()"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "extra_cb_handler"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;->mCbHandler:Landroid/os/Messenger;

    .line 79
    const/16 v0, 0xe6

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;->mResponseHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;->mResponseHandler:Landroid/os/Handler;

    invoke-direct {v4, v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->getUser(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 80
    const/4 v0, 0x2

    return v0
.end method
