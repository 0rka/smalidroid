.class public Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;
.super Landroid/app/Service;
.source "SamsungAccountService.java"

# interfaces
.implements Lcom/samsung/android/coreapps/easysignup/transaction/TokenValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$1;,
        Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SACallback;,
        Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;,
        Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$ResultState;,
        Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$GetUserState;,
        Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$BindState;,
        Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$IdleState;
    }
.end annotation


# static fields
.field private static mSaService:Lcom/msc/sa/aidl/ISAService;


# instance fields
.field private final APP_ID:Ljava/lang/String;

.field private final APP_SECRET:Ljava/lang/String;

.field private final ID_REQUEST_ACCESSTOKEN:I

.field private final KEY_ADDITIONAL:Ljava/lang/String;

.field private final KEY_USER_ID:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TOKEN_GET_DUID_LIST:I

.field private final TOKEN_REQ_SA_USER_ID:I

.field private final TOKEN_SA_SERVICE_BOUNDED:I

.field private mBindState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mCallbackCode:Ljava/lang/String;

.field private mCbHandler:Landroid/os/Messenger;

.field private mGetUserState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mSACallback:Lcom/msc/sa/aidl/ISACallback;

.field private mSAConnection:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;

.field private mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSaService:Lcom/msc/sa/aidl/ISAService;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    const-string v0, "SamsungAccountService"

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->TAG:Ljava/lang/String;

    .line 44
    const-string v0, "3z5w443l4l"

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->APP_ID:Ljava/lang/String;

    .line 45
    const-string v0, "402AC59994627FE0C13BE65434A521E2"

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->APP_SECRET:Ljava/lang/String;

    .line 46
    const-string v0, "additional"

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->KEY_ADDITIONAL:Ljava/lang/String;

    .line 47
    const-string v0, "user_id"

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->KEY_USER_ID:Ljava/lang/String;

    .line 49
    const v0, 0x1b669

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->ID_REQUEST_ACCESSTOKEN:I

    .line 50
    const/16 v0, 0xfb

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->TOKEN_REQ_SA_USER_ID:I

    .line 51
    const/16 v0, 0xfc

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->TOKEN_SA_SERVICE_BOUNDED:I

    .line 52
    const/16 v0, 0xfd

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->TOKEN_GET_DUID_LIST:I

    .line 59
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$IdleState;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$IdleState;-><init>(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$1;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 60
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$BindState;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$BindState;-><init>(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$1;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mBindState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 61
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$GetUserState;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$GetUserState;-><init>(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$1;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mGetUserState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 62
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$ResultState;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$ResultState;-><init>(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$1;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 325
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mCallbackCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mCallbackCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->sendResponseMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mGetUserState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mBindState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSAConnection:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;)Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;
    .param p1, "x1"    # Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSAConnection:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;

    return-object p1
.end method

.method static synthetic access$800()Lcom/msc/sa/aidl/ISAService;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSaService:Lcom/msc/sa/aidl/ISAService;

    return-object v0
.end method

.method static synthetic access$802(Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;
    .registers 1
    .param p0, "x0"    # Lcom/msc/sa/aidl/ISAService;

    .prologue
    .line 38
    sput-object p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSaService:Lcom/msc/sa/aidl/ISAService;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/msc/sa/aidl/ISACallback;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSACallback:Lcom/msc/sa/aidl/ISACallback;

    return-object v0
.end method

.method static synthetic access$902(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;Lcom/msc/sa/aidl/ISACallback;)Lcom/msc/sa/aidl/ISACallback;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;
    .param p1, "x1"    # Lcom/msc/sa/aidl/ISACallback;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSACallback:Lcom/msc/sa/aidl/ISACallback;

    return-object p1
.end method

.method private sendResponseMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "origMsg"    # Landroid/os/Message;

    .prologue
    .line 299
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0xeb

    if-ne v5, v6, :cond_50

    .line 300
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/GetUserV2Resp;

    .line 301
    .local v3, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/GetUserV2Resp;
    const/4 v0, 0x0

    .line 302
    .local v0, "duid":Ljava/lang/String;
    if-eqz v3, :cond_59

    .line 303
    iget-object v5, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/GetUserV2Resp;->user_info:Ljava/util/ArrayList;

    if-eqz v5, :cond_51

    .line 304
    iget-object v5, v3, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/GetUserV2Resp;->user_info:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UserInfoV2;

    .line 305
    .local v4, "userInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UserInfoV2;
    iget v5, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UserInfoV2;->device_idx:I

    if-nez v5, :cond_17

    .line 306
    iget-object v0, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UserInfoV2;->duid:Ljava/lang/String;

    .line 310
    .end local v4    # "userInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UserInfoV2;
    :cond_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send latest duid:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SamsungAccountService"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.android.coreapps.contact.PHONE_NUMBER_CHANGE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "contact_duid"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    .end local v0    # "duid":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/GetUserV2Resp;
    :cond_50
    :goto_50
    return-void

    .line 315
    .restart local v0    # "duid":Ljava/lang/String;
    .restart local v3    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/GetUserV2Resp;
    :cond_51
    const-string v5, "Didn\'t find any duid.."

    const-string v6, "SamsungAccountService"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    .line 319
    :cond_59
    const-string v5, "Response was null"

    const-string v6, "SamsungAccountService"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 261
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 69
    const-string v0, "onCreate"

    const-string v1, "SamsungAccountService"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 103
    const-string v0, "onDestroy"

    const-string v1, "SamsungAccountService"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSaService:Lcom/msc/sa/aidl/ISAService;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSAConnection:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;

    if-eqz v0, :cond_20

    .line 106
    const-string v0, "unbindSAService(mSAConnection) requested."

    const-string v1, "SamsungAccountService"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSAConnection:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 108
    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSAConnection:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;

    .line 109
    sput-object v2, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSaService:Lcom/msc/sa/aidl/ISAService;

    .line 112
    :cond_20
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 113
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x2

    .line 74
    const-string v1, "onStartCommand"

    const-string v2, "SamsungAccountService"

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    if-nez p1, :cond_12

    .line 77
    const-string v1, "onStartCommand : intent is null"

    const-string v2, "SamsungAccountService"

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_11
    return v4

    .line 81
    :cond_12
    invoke-static {p0}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 82
    const-string v1, "Device is not authenticated "

    const-string v2, "SamsungAccountService"

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p3}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->stopSelf(I)V

    goto :goto_11

    .line 87
    :cond_23
    new-instance v1, Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const-string v3, "SamsungAccountService"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    .line 88
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->setInitialState(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 90
    const-string v1, "extra_cb_handler"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mCbHandler:Landroid/os/Messenger;

    .line 91
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 92
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0xfb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 93
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 94
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_11
.end method
