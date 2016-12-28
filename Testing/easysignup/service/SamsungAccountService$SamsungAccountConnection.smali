.class Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;
.super Ljava/lang/Object;
.source "SamsungAccountService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SamsungAccountConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)V
    .registers 2

    .prologue
    .line 265
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 271
    const-string v1, "SamsungAccountConnection : onServiceConnected"

    const-string v2, "SamsungAccountService"

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-static {p2}, Lcom/msc/sa/aidl/ISAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v1

    # setter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSaService:Lcom/msc/sa/aidl/ISAService;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$802(Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    .line 274
    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSaService:Lcom/msc/sa/aidl/ISAService;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$800()Lcom/msc/sa/aidl/ISAService;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 275
    const-string v1, "SamsungAccountConnection : onServiceConnected : service is null"

    const-string v2, "SamsungAccountService"

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$500(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$400(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 283
    :goto_2a
    return-void

    .line 280
    :cond_2b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 281
    .local v0, "noti":Landroid/os/Message;
    const/16 v1, 0xfc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 282
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$500(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2a
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 287
    const-string v0, "SamsungAccountConnection : onServiceDisconnected"

    const-string v1, "SamsungAccountService"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    # setter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSaService:Lcom/msc/sa/aidl/ISAService;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$802(Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    .line 289
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;->this$0:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    # setter for: Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->mSAConnection:Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;
    invoke-static {v0, v2}, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;->access$702(Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;)Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService$SamsungAccountConnection;

    .line 290
    return-void
.end method
