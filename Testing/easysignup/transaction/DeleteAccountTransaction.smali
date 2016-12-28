.class public Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;
.super Landroid/app/Service;
.source "DeleteAccountTransaction.java"

# interfaces
.implements Lcom/samsung/android/coreapps/easysignup/transaction/TokenValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$ResultState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$IdleState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteAccountState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

.field private mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mImsiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mServiceCount:I

.field private mServiceId:I

.field private mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$IdleState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$IdleState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 47
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$DeleteAccountState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mDeleteAccountState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 48
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$ResultState;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction$ResultState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 50
    iput v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mServiceId:I

    .line 51
    iput v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mServiceCount:I

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mImsiList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    .prologue
    .line 35
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mServiceCount:I

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mServiceCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mDeleteAccountState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->isDeleteService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->getAgentStatus()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    .prologue
    .line 35
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mServiceId:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getAgentStatus()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 265
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getJoinServices(Landroid/content/Context;)[I

    .line 266
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getJoinServices(Landroid/content/Context;)[I

    move-result-object v1

    .line 267
    .local v1, "serviceIds":[I
    if-nez v1, :cond_16

    .line 268
    const-string v3, "error no join service list"

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_15
    :goto_15
    return v2

    .line 272
    :cond_16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    array-length v3, v1

    if-ge v0, v3, :cond_15

    .line 273
    aget v3, v1, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_3b

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAgentStatus true service id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const/4 v2, 0x1

    goto :goto_15

    .line 272
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method private isDeleteService()Z
    .registers 3

    .prologue
    .line 261
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mServiceId:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private obtainEventMessage(Landroid/content/Intent;I)Landroid/os/Message;
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 241
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 242
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 244
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

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 247
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 249
    const-string v2, "service_id"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mServiceId:I

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mServiceId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mServiceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-object v1
.end method

.method private static removeAuthData(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 176
    const-string v1, "remove auth data"

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/setting/SettingAccount;->removeAccount(Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;)V

    .line 178
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/util/ServiceListManager;->reset()V

    .line 179
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->cancel()V

    .line 180
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->cancel()V

    .line 181
    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/CommonPref;->setDeviceId(Ljava/lang/String;)V

    .line 184
    :try_start_17
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->unregister()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_28

    .line 188
    :goto_1e
    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/CommonPref;->setGcmRegId(Ljava/lang/String;)V

    .line 190
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/network/SppPushClient;->deregister(Landroid/content/Context;)Z

    .line 191
    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/CommonPref;->setSppRegId(Ljava/lang/String;)V

    .line 192
    return-void

    .line 185
    :catch_28
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e
.end method

.method public static removeAuthData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {p1}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->removeAccount(Ljava/lang/String;)V

    .line 172
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->removeAuthData(Landroid/content/Context;)V

    .line 173
    return-void
.end method

.method public static removeAuthData(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "imsiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    .local v1, "imsi":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->removeAccount(Ljava/lang/String;)V

    goto :goto_4

    .line 167
    .end local v1    # "imsi":Ljava/lang/String;
    :cond_14
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->removeAuthData(Landroid/content/Context;)V

    .line 168
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mContext:Landroid/content/Context;

    .line 220
    const-string v0, "SERVICE CREATED"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v0, Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    .line 223
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->setInitialState(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 225
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    .line 226
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 230
    const-string v1, "onStartCommand"

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    if-eqz p1, :cond_12

    .line 233
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->obtainEventMessage(Landroid/content/Intent;I)Landroid/os/Message;

    move-result-object v0

    .line 234
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    .end local v0    # "msg":Landroid/os/Message;
    :cond_12
    const/4 v1, 0x2

    return v1
.end method
