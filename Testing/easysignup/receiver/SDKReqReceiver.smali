.class public Lcom/samsung/android/coreapps/easysignup/receiver/SDKReqReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SDKReqReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/samsung/android/coreapps/easysignup/receiver/SDKReqReceiver;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/receiver/SDKReqReceiver;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    .line 19
    :cond_8
    const-string v3, "intent is null or intent.getAction() is null"

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/receiver/SDKReqReceiver;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_f
    :goto_f
    return-void

    .line 23
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "action":Ljava/lang/String;
    const-string v3, "service_id"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 25
    .local v2, "sid":I
    const-string v3, "extra_result"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 26
    .local v1, "result":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDKReqReceiver action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/receiver/SDKReqReceiver;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v3, "com.samsung.android.coreapps.easysignup.ACTION_SDK_DEREGISTER_RESULT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 28
    const-string v3, "tnc_agree_service_list"

    invoke-static {v3, v2}, Lcom/samsung/android/coreapps/easysignup/util/ServiceListManager;->removeService(Ljava/lang/String;I)Z

    .line 29
    const-string v3, "sdk_service_on_list"

    invoke-static {v3, v2}, Lcom/samsung/android/coreapps/easysignup/util/ServiceListManager;->removeService(Ljava/lang/String;I)Z

    goto :goto_f

    .line 30
    :cond_61
    const-string v3, "com.samsung.android.coreapps.easysignup.ACTION_SDK_SERVICE_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 31
    if-eqz v1, :cond_f

    .line 32
    const-string v3, "sdk_service_on_list"

    invoke-static {v3, v2}, Lcom/samsung/android/coreapps/easysignup/util/ServiceListManager;->saveService(Ljava/lang/String;I)Z

    goto :goto_f

    .line 33
    :cond_71
    const-string v3, "com.samsung.android.coreapps.easysignup.ACTION_SDK_SERVICE_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 34
    if-eqz v1, :cond_f

    .line 35
    const-string v3, "sdk_service_on_list"

    invoke-static {v3, v2}, Lcom/samsung/android/coreapps/easysignup/util/ServiceListManager;->removeService(Ljava/lang/String;I)Z

    goto :goto_f
.end method
