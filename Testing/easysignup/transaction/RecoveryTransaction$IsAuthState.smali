.class public Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "RecoveryTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IsAuthState"
.end annotation


# instance fields
.field private imsi_index:I

.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)V
    .registers 3

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->imsi_index:I

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->imsi_index:I

    .line 103
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mDeviceId1:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->imsi_index:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "recovery"

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$600(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->isAuth(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 104
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_e2

    .line 134
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 137
    :goto_e
    return-void

    .line 109
    :sswitch_f
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;

    .line 111
    .local v6, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;
    iget v0, v6, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;->auth_status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_64

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device was authenticated...  of imsi index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->imsi_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->imsi_index:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$702(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mDeviceId1:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->handleSuccessResponse(Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;Ljava/lang/String;)V
    invoke-static {v0, v6, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$800(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mGcmRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 117
    :cond_64
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->imsi_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->imsi_index:I

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device is not authenticated... Checking imsi index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->imsi_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->imsi_index:I

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_bf

    .line 120
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mDeviceId1:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsiList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->imsi_index:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "recovery"

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$600(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->isAuth(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    goto/16 :goto_e

    .line 122
    :cond_bf
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mIsAuth2ndState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_e

    .line 129
    .end local v6    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/IsAuthResp;
    :sswitch_d0
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$IsAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mIsAuth2ndState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_e

    .line 107
    nop

    :sswitch_data_e2
    .sparse-switch
        0x14 -> :sswitch_f
        0x2710 -> :sswitch_d0
    .end sparse-switch
.end method
