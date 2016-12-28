.class public Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "SendMessageTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 65
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->isImsiAvailable()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 66
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 67
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 101
    :goto_1e
    return-void

    .line 71
    :cond_1f
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mMsgRequest:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushMessageRequest;

    move-result-object v1

    if-nez v1, :cond_51

    .line 72
    const-string v1, "Invalid EnhancedPushMessage Object..."

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    const/4 v2, -0x1

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mErrorCode:I
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$402(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;I)I

    .line 74
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 75
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_1e

    .line 79
    :cond_51
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 81
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    const-string v2, "imsi"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$502(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_71

    .line 84
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$502(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    :cond_71
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 89
    const-string v1, "Device was not authenticated."

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 92
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_1e

    .line 98
    :cond_a6
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 100
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$IdleState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mSendMessageState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$600(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto/16 :goto_1e
.end method
