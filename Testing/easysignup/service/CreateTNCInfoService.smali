.class public Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;
.super Landroid/app/Service;
.source "CreateTNCInfoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService$HttpRespHandler;
    }
.end annotation


# static fields
.field private static final TOKEN_CREATE_TNC_INFO:I = 0x64


# instance fields
.field private final TAG:Ljava/lang/String;

.field destMessenger:Landroid/os/Messenger;

.field httpRespHandler:Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService$HttpRespHandler;

.field private mImsi:Ljava/lang/String;

.field reqIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    const-class v0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->TAG:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->destMessenger:Landroid/os/Messenger;

    .line 28
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->reqIntent:Landroid/content/Intent;

    .line 32
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService$HttpRespHandler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService$HttpRespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService$1;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->httpRespHandler:Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService$HttpRespHandler;

    .line 34
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->mImsi:Ljava/lang/String;

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->notifyResult(Z)V

    return-void
.end method

.method private notifyResult(Z)V
    .registers 8
    .param p1, "reult"    # Z

    .prologue
    const/4 v5, 0x1

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "destMessenger":Landroid/os/Messenger;
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->reqIntent:Landroid/content/Intent;

    const-string v4, "extra_cb_handler"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "destMessenger":Landroid/os/Messenger;
    check-cast v0, Landroid/os/Messenger;

    .line 72
    .restart local v0    # "destMessenger":Landroid/os/Messenger;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 73
    .local v2, "resultMsg":Landroid/os/Message;
    if-ne p1, v5, :cond_29

    .line 74
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 79
    :goto_15
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->reqIntent:Landroid/content/Intent;

    const-string v4, "token"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 81
    if-eqz v0, :cond_25

    .line 83
    :try_start_22
    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_2c

    .line 89
    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->stopSelf()V

    .line 90
    return-void

    .line 76
    :cond_29
    iput v5, v2, Landroid/os/Message;->arg1:I

    goto :goto_15

    .line 84
    :catch_2c
    move-exception v1

    .line 85
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_25
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 104
    const/4 v2, 0x0

    .line 106
    .local v2, "bAgreeMarketing":Z
    if-eqz p1, :cond_1e

    .line 108
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->reqIntent:Landroid/content/Intent;

    .line 109
    const-string v0, "extra_cb_handler"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->destMessenger:Landroid/os/Messenger;

    .line 110
    const-string v0, "imsi"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->mImsi:Ljava/lang/String;

    .line 111
    const-string v0, "agree_marketing"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 115
    :cond_1e
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->mImsi:Ljava/lang/String;

    .line 118
    const/16 v0, 0x64

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->httpRespHandler:Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService$HttpRespHandler;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->mImsi:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;->mImsi:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getMCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService$1;-><init>(Lcom/samsung/android/coreapps/easysignup/service/CreateTNCInfoService;)V

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/AcceptDisclaimerManager;->createTNCInfoForEasySignup(ILandroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 126
    const/4 v0, 0x2

    return v0
.end method
