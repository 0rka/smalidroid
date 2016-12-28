.class Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SACallback;
.super Lcom/msc/sa/aidl/ISACallback$Stub;
.source "SamsungAccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SACallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)V
    .registers 2

    .prologue
    .line 325
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SACallback;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    invoke-direct {p0}, Lcom/msc/sa/aidl/ISACallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .registers 8
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 329
    const v2, 0x1b669

    if-ne p1, v2, :cond_48

    .line 330
    if-eqz p2, :cond_5c

    .line 331
    const-string v2, "user_id"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "guid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#### "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SamsungAccountService"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 335
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0xfd

    iput v2, v1, Landroid/os/Message;->what:I

    .line 336
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 338
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SACallback;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$500(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SACallback;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mGetUserState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$1200(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 339
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SACallback;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$500(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 347
    .end local v0    # "guid":Ljava/lang/String;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_48
    :goto_48
    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSaService:Lcom/msc/sa/aidl/ISAService;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$800()Lcom/msc/sa/aidl/ISAService;

    move-result-object v2

    if-eqz v2, :cond_81

    .line 348
    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSaService:Lcom/msc/sa/aidl/ISAService;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$800()Lcom/msc/sa/aidl/ISAService;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SACallback;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mCallbackCode:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$1000(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/msc/sa/aidl/ISAService;->unregisterCallback(Ljava/lang/String;)Z

    .line 353
    :goto_5b
    return-void

    .line 341
    :cond_5c
    const-string v2, "ISACallback : fail to get guid "

    const-string v3, "SamsungAccountService"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SACallback;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$500(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SACallback;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$400(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 343
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 344
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SACallback;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$500(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_48

    .line 350
    .end local v1    # "msg":Landroid/os/Message;
    :cond_81
    const-string v2, "Service was null. So not able to unregister..."

    const-string v3, "SamsungAccountService"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b
.end method
