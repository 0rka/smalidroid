.class Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$BindState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "SamsungAccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)V
    .registers 2

    .prologue
    .line 161
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$BindState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;
    .param p2, "x1"    # Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$1;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$BindState;-><init>(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;->enter(Landroid/os/Message;)V

    .line 166
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$BindState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    new-instance v3, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$BindState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    invoke-direct {v3, v4}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;-><init>(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)V

    # setter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSAConnection:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;
    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$702(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;)Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.osp.app.signin"

    const-string v3, "com.msc.sa.service.RequestService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$BindState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$BindState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSAConnection:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$700(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 173
    .local v1, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BindState : bindService result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SamsungAccountService"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;->processMessage(Landroid/os/Message;)V

    .line 180
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xfc

    if-eq v3, v4, :cond_13

    .line 181
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$BindState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$500(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 207
    :goto_12
    return-void

    .line 185
    :cond_13
    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSaService:Lcom/msc/sa/aidl/ISAService;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$800()Lcom/msc/sa/aidl/ISAService;

    move-result-object v3

    if-eqz v3, :cond_a4

    .line 186
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$BindState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    new-instance v4, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SACallback;

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$BindState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    invoke-direct {v4, v5}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SACallback;-><init>(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)V

    # setter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSACallback:Lcom/msc/sa/aidl/ISACallback;
    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$902(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;Lcom/msc/sa/aidl/ISACallback;)Lcom/msc/sa/aidl/ISACallback;

    .line 188
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v1, "data":Landroid/os/Bundle;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "user_id"

    aput-object v4, v0, v3

    .line 190
    .local v0, "additional":[Ljava/lang/String;
    const-string v3, "additional"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 193
    :try_start_37
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$BindState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSaService:Lcom/msc/sa/aidl/ISAService;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$800()Lcom/msc/sa/aidl/ISAService;

    move-result-object v4

    const-string v5, "3z5w443l4l"

    const-string v6, "402AC59994627FE0C13BE65434A521E2"

    const-string v7, "com.samsung.android.coreapps"

    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$BindState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSACallback:Lcom/msc/sa/aidl/ISACallback;
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$900(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/msc/sa/aidl/ISACallback;

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/msc/sa/aidl/ISAService;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mCallbackCode:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$1002(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$BindState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mCallbackCode:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$1000(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SamsungAccountService"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSaService:Lcom/msc/sa/aidl/ISAService;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$800()Lcom/msc/sa/aidl/ISAService;

    move-result-object v3

    const v4, 0x1b669

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$BindState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mCallbackCode:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$1000(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v1}, Lcom/msc/sa/aidl/ISAService;->requestAccessToken(ILjava/lang/String;Landroid/os/Bundle;)Z
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_7e} :catch_7f

    goto :goto_12

    .line 197
    :catch_7f
    move-exception v2

    .line 198
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BindState : RemoteException"

    const-string v4, "SamsungAccountService"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 205
    .end local v0    # "additional":[Ljava/lang/String;
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_8a
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$BindState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$500(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 206
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$BindState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$500(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$BindState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$400(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_12

    .line 202
    :cond_a4
    const-string v3, "BindState : mSaService is null"

    const-string v4, "SamsungAccountService"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8a
.end method
