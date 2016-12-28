.class Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$HttpRespHandler;
.super Landroid/os/Handler;
.source "IsAuthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpRespHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;)V
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;
    .param p2, "x1"    # Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$1;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$HttpRespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x1

    .line 45
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v10, 0x64

    if-ne v9, v10, :cond_b5

    .line 47
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->mRequestIntentList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->access$100(Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 48
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "extra_cb_handler"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 50
    .local v1, "destMessenger":Landroid/os/Messenger;
    if-nez v1, :cond_34

    .line 51
    const-string v9, "destMessenger is null"

    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->access$200(Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 55
    :cond_34
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 56
    .local v7, "resultMsg":Landroid/os/Message;
    const-string v9, "token"

    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, v7, Landroid/os/Message;->what:I

    .line 58
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v6, "respData":Landroid/os/Bundle;
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;

    .line 61
    .local v5, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;
    iget v9, v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_status:I

    if-ne v9, v12, :cond_98

    .line 62
    const-string v9, "is_auth"

    invoke-virtual {v6, v9, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    :goto_52
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->isMultiSimDevice()Z

    move-result v9

    if-eqz v9, :cond_6b

    .line 67
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;

    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->mImsi:Ljava/lang/String;
    invoke-static {v10}, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->access$300(Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;)Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->findSimSlotByIMSI(Ljava/lang/String;)I
    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->access$400(Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;Ljava/lang/String;)I

    move-result v8

    .line 69
    .local v8, "slotNum":I
    if-eq v8, v11, :cond_6b

    .line 70
    const-string v9, "sim_slot"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    .end local v8    # "slotNum":I
    :cond_6b
    iget-object v9, v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_info:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;

    iget-object v9, v9, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;->MO:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$MoAuth;

    if-nez v9, :cond_9f

    .line 74
    const-string v0, "MT"

    .line 75
    .local v0, "authType":Ljava/lang/String;
    iget-object v9, v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_info:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;

    iget-object v9, v9, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp$AuthInfo;->auth_methods:[Ljava/lang/String;

    invoke-static {v9}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->is2FANeeded([Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 76
    const-string v0, "2FA"

    .line 78
    :cond_7f
    const-string v9, "auth_type"

    invoke-virtual {v6, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v0    # "authType":Ljava/lang/String;
    :goto_84
    const-string v9, "tnc_type"

    const-string v10, "SUPPORT"

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v7, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 88
    :try_start_8e
    invoke-virtual {v1, v7}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_12

    .line 89
    :catch_92
    move-exception v2

    .line 90
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_12

    .line 64
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_98
    const-string v9, "is_auth"

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_52

    .line 80
    :cond_9f
    const-string v9, "auth_type"

    const-string v10, "MO"

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    .line 94
    .end local v1    # "destMessenger":Landroid/os/Messenger;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;
    .end local v6    # "respData":Landroid/os/Bundle;
    .end local v7    # "resultMsg":Landroid/os/Message;
    :cond_a7
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->mRequestIntentList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->access$100(Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 96
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;

    invoke-virtual {v9}, Lcom/samsung/android/coreapps/easysignup/service/IsAuthService;->stopSelf()V

    .line 98
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_b5
    return-void
.end method
