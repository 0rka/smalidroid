.class public Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;
.super Landroid/app/Service;
.source "IsReq2FATransaction.java"

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
    .line 23
    const-class v0, Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction$1;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;->mResponseHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;->sendResponseMessage(Landroid/os/Message;)V

    return-void
.end method

.method private sendResponseMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "origMsg"    # Landroid/os/Message;

    .prologue
    const/16 v11, 0x53

    .line 40
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;->mCbHandler:Landroid/os/Messenger;

    if-nez v10, :cond_e

    .line 41
    const-string v10, "callback handler is null"

    sget-object v11, Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;->TAG:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_d
    return-void

    .line 45
    :cond_e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 46
    .local v6, "message":Landroid/os/Message;
    iget v10, p1, Landroid/os/Message;->what:I

    iput v10, v6, Landroid/os/Message;->what:I

    .line 47
    iget v10, p1, Landroid/os/Message;->what:I

    if-ne v10, v11, :cond_4d

    const/4 v10, 0x0

    :goto_1b
    iput v10, v6, Landroid/os/Message;->arg1:I

    .line 49
    iget v10, p1, Landroid/os/Message;->what:I

    if-ne v10, v11, :cond_60

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsReq2FAResp;

    .line 54
    .local v9, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsReq2FAResp;
    iget-object v10, v9, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsReq2FAResp;->list:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsReq2FAResp$IsReq2FARespListItem;

    if-eqz v10, :cond_5e

    .line 55
    iget-object v10, v9, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsReq2FAResp;->list:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsReq2FAResp$IsReq2FARespListItem;

    array-length v5, v10

    .line 56
    .local v5, "length":I
    new-array v0, v5, [Ljava/lang/String;

    .line 57
    .local v0, "authCodes":[Ljava/lang/String;
    new-array v7, v5, [Ljava/lang/String;

    .line 58
    .local v7, "mns":[Ljava/lang/String;
    new-array v8, v5, [J

    .line 60
    .local v8, "requestTimes":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_38
    if-ge v3, v5, :cond_4f

    .line 61
    iget-object v10, v9, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsReq2FAResp;->list:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsReq2FAResp$IsReq2FARespListItem;

    aget-object v4, v10, v3

    .line 62
    .local v4, "item":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsReq2FAResp$IsReq2FARespListItem;
    iget-object v10, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsReq2FAResp$IsReq2FARespListItem;->auth_code:Ljava/lang/String;

    aput-object v10, v0, v3

    .line 63
    iget-object v10, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsReq2FAResp$IsReq2FARespListItem;->mn:Ljava/lang/String;

    aput-object v10, v7, v3

    .line 64
    iget-wide v10, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsReq2FAResp$IsReq2FARespListItem;->request_time:J

    aput-wide v10, v8, v3

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 47
    .end local v0    # "authCodes":[Ljava/lang/String;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "i":I
    .end local v4    # "item":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsReq2FAResp$IsReq2FARespListItem;
    .end local v5    # "length":I
    .end local v7    # "mns":[Ljava/lang/String;
    .end local v8    # "requestTimes":[J
    .end local v9    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsReq2FAResp;
    :cond_4d
    const/4 v10, 0x1

    goto :goto_1b

    .line 67
    .restart local v0    # "authCodes":[Ljava/lang/String;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "i":I
    .restart local v5    # "length":I
    .restart local v7    # "mns":[Ljava/lang/String;
    .restart local v8    # "requestTimes":[J
    .restart local v9    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsReq2FAResp;
    :cond_4f
    const-string v10, "auth_code"

    invoke-virtual {v1, v10, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 68
    const-string v10, "mn"

    invoke-virtual {v1, v10, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 69
    const-string v10, "request_time"

    invoke-virtual {v1, v10, v8}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 71
    .end local v0    # "authCodes":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "length":I
    .end local v7    # "mns":[Ljava/lang/String;
    .end local v8    # "requestTimes":[J
    :cond_5e
    iput-object v1, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v9    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsReq2FAResp;
    :cond_60
    :try_start_60
    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;->mCbHandler:Landroid/os/Messenger;

    invoke-virtual {v10, v6}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_65} :catch_66

    goto :goto_d

    .line 76
    :catch_66
    move-exception v2

    .line 77
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_d
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

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
    .line 83
    const-string v0, "onStartCommand()"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "extra_cb_handler"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;->mCbHandler:Landroid/os/Messenger;

    .line 87
    const/16 v0, 0x53

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;->mResponseHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;->mResponseHandler:Landroid/os/Handler;

    invoke-direct {v4, v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->isReq2FAuth(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;)V

    .line 89
    const/4 v0, 0x2

    return v0
.end method
