.class Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$Mt2FAuthState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "AuthTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Mt2FAuthState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;


# direct methods
.method private constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)V
    .registers 2

    .prologue
    .line 416
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$Mt2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;
    .param p2, "x1"    # Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$1;

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$Mt2FAuthState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 419
    const-string v0, "Mt2FAuthState Entered"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 421
    .local v6, "bundle":Landroid/os/Bundle;
    new-instance v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthParams;

    const-string v0, "2FA"

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$Mt2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1700(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v5, v5, v0, v1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .local v2, "params":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthParams;
    const-string v0, "duid"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "duid":Ljava/lang/String;
    const-string v0, "accessToken"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 424
    .local v4, "accessToken":Ljava/lang/String;
    const/16 v0, 0x52

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$Mt2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$Mt2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$900(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->authenticate2FA(ILcom/samsung/android/coreapps/common/transaction/StateHandler;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/AuthParams;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;)V

    .line 425
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 429
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_42

    .line 442
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$Mt2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 445
    :goto_e
    return-void

    .line 431
    :sswitch_f
    const-string v0, "2FA_AUTH sent"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$Mt2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$Mt2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 437
    :sswitch_28
    const-string v0, "2FA_AUTH failed "

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$Mt2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$Mt2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 429
    nop

    :sswitch_data_42
    .sparse-switch
        0x52 -> :sswitch_f
        0x2710 -> :sswitch_28
    .end sparse-switch
.end method
