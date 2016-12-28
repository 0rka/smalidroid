.class Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$GetUserState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "SamsungAccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetUserState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)V
    .registers 2

    .prologue
    .line 210
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;
    .param p2, "x1"    # Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$1;

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$GetUserState;-><init>(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;->enter(Landroid/os/Message;)V

    .line 214
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xfd

    if-eq v0, v1, :cond_13

    .line 215
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$500(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 226
    :goto_12
    return-void

    .line 219
    :cond_13
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 221
    .local v2, "guid":Ljava/lang/String;
    const/4 v3, 0x0

    .line 222
    .local v3, "exc_msisdn_yn":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input params: [ GUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , exc_msisdn_yn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungAccountService"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/16 v0, 0xeb

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$500(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$500(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;-><init>(Landroid/os/Handler;)V

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->getUserV2(ILandroid/os/Handler;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_12
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 230
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_46

    .line 242
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$500(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 245
    :goto_e
    return-void

    .line 232
    :sswitch_f
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # invokes: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->sendResponseMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$1100(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;Landroid/os/Message;)V

    .line 233
    const-string v0, "Got success response...."

    const-string v1, "SamsungAccountService"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # invokes: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->sendResponseMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$1100(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;Landroid/os/Message;)V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$500(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$400(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 238
    :sswitch_30
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # invokes: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->sendResponseMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$1100(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;Landroid/os/Message;)V

    .line 239
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$500(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$GetUserState;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$400(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 230
    nop

    :sswitch_data_46
    .sparse-switch
        0xeb -> :sswitch_f
        0x2710 -> :sswitch_30
    .end sparse-switch
.end method
