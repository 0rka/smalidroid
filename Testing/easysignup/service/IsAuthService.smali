.class public Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;
.super Landroid/app/Service;
.source "IsAuthService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$HttpRespHandler;
    }
.end annotation


# static fields
.field public static final TOKEN_IS_AUTH:I = 0x64


# instance fields
.field private final TAG:Ljava/lang/String;

.field httpRespHandler:Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$HttpRespHandler;

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


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    const-class v0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->TAG:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->mRequestIntentList:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$HttpRespHandler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$HttpRespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$1;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->httpRespHandler:Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$HttpRespHandler;

    .line 39
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->mImsi:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->mRequestIntentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->findSimSlotByIMSI(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private findSimSlotByIMSI(Ljava/lang/String;)I
    .registers 5
    .param p1, "authImsi"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {p1}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getSubIdUsingImsi(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/coreapps/common/util/sdl/MultiSimManagerRef;->getSlotId(I)I

    move-result v0

    .line 151
    .local v0, "slot":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findSimSlotByIMSI - slot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 105
    const-string v0, "onCreate"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->mRequestIntentList:Ljava/util/ArrayList;

    .line 108
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x2

    .line 112
    if-eqz p1, :cond_10

    .line 113
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->mRequestIntentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v0, "imsi"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->mImsi:Ljava/lang/String;

    .line 118
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 119
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->mImsi:Ljava/lang/String;

    .line 122
    :cond_1e
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 123
    const-string v0, "device id is not ready"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->stopSelf()V

    .line 139
    :goto_32
    return v5

    .line 128
    :cond_33
    const/16 v0, 0x64

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->httpRespHandler:Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$HttpRespHandler;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->mImsi:Ljava/lang/String;

    new-instance v4, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$1;-><init>(Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->isAuth(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_32
.end method
