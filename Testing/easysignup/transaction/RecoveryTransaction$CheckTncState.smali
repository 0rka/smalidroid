.class public Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$CheckTncState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "RecoveryTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckTncState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)V
    .registers 2

    .prologue
    .line 342
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$CheckTncState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 345
    const/16 v0, 0xfa

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$CheckTncState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$CheckTncState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$CheckTncState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getMCC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$CheckTncState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$600(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/AcceptDisclaimerManager;->getVerifyTNCForEasySignup(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 346
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 350
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_88

    .line 371
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$CheckTncState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 375
    :goto_e
    return-void

    .line 352
    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/VerifyTNCForEasySignupResponseVO;

    .line 354
    .local v0, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/VerifyTNCForEasySignupResponseVO;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requiredTNCAccepted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/VerifyTNCForEasySignupResponseVO;->requiredTNCAccepted:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ requiredPrivacyAccepted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/VerifyTNCForEasySignupResponseVO;->requiredPrivacyAccepted:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ requiredMarketingAgreementAccepted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/VerifyTNCForEasySignupResponseVO;->requiredMarketingAgreementAccepted:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$CheckTncState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/VerifyTNCForEasySignupResponseVO;->requiredMarketingAgreementAccepted:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 358
    const-string v1, "marketing_agreement"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 362
    :goto_5d
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$CheckTncState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$CheckTncState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 360
    :cond_6d
    const-string v1, "marketing_agreement"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_5d

    .line 366
    .end local v0    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/VerifyTNCForEasySignupResponseVO;
    :sswitch_78
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$CheckTncState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction$CheckTncState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_e

    .line 350
    :sswitch_data_88
    .sparse-switch
        0xfa -> :sswitch_f
        0x2710 -> :sswitch_78
    .end sparse-switch
.end method
