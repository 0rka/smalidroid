.class public Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$ResultState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "LoginTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)V
    .registers 2

    .prologue
    .line 156
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 161
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 163
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, -0x1

    .line 164
    .local v1, "serviceId":I
    const-string v2, "service_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 165
    const-string v2, "service_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 168
    :cond_14
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_37

    .line 169
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    const/4 v3, 0x2

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->notifyLoginResult(II)V
    invoke-static {v2, v1, v3}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$800(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;II)V

    .line 170
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->sendDeauthResult(Landroid/content/Context;ILjava/lang/String;)V

    .line 180
    :goto_31
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    invoke-virtual {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->stopSelf()V

    .line 181
    return-void

    .line 172
    :cond_37
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mNewAccessToken:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_46

    .line 173
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    const/4 v3, 0x1

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->notifyLoginResult(II)V
    invoke-static {v2, v1, v3}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$800(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;II)V

    goto :goto_31

    .line 175
    :cond_46
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->mNewAccessToken:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->notifyLoginResult(II)V
    invoke-static {v2, v1, v4}, Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;->access$800(Lcom/samsung/android/coreapps/easysignup/transaction/LoginTransaction;II)V

    goto :goto_31
.end method
