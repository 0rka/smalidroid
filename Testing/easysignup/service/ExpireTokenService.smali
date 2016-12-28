.class public Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;
.super Landroid/app/Service;
.source "ExpireTokenService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService$1;,
        Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService$HttpRespHandler;
    }
.end annotation


# static fields
.field public static final TOKEN_EXPIRE_TOKEN:I = 0x64


# instance fields
.field private final TAG:Ljava/lang/String;

.field httpRespHandler:Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService$HttpRespHandler;

.field private mImsi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    const-class v0, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService$HttpRespHandler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService$HttpRespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService$1;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;->httpRespHandler:Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService$HttpRespHandler;

    .line 28
    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;->mImsi:Ljava/lang/String;

    .line 30
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 47
    const-string v0, "onCreate"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 53
    if-eqz p1, :cond_a

    .line 54
    const-string v2, "imsi"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;->mImsi:Ljava/lang/String;

    .line 58
    :cond_a
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;->mImsi:Ljava/lang/String;

    .line 61
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;->mImsi:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_28

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Not authenticated"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 82
    :cond_26
    :goto_26
    const/4 v2, 0x2

    return v2

    .line 64
    :cond_28
    if-eqz p1, :cond_26

    .line 65
    const-string v2, "type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "type":Ljava/lang/String;
    if-eqz v1, :cond_51

    const-string v2, "access_token"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 69
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;->mImsi:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "token":Ljava/lang/String;
    :goto_40
    if-eqz v1, :cond_58

    const-string v2, "access_token"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 75
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;->mImsi:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 71
    .end local v0    # "token":Ljava/lang/String;
    :cond_51
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;->mImsi:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getRefreshToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "token":Ljava/lang/String;
    goto :goto_40

    .line 77
    :cond_58
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;->mImsi:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getRefreshToken(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_26
.end method
