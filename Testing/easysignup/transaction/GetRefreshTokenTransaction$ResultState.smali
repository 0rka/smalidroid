.class public Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$ResultState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "GetRefreshTokenTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)V
    .registers 2

    .prologue
    .line 255
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 259
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getRefreshToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "refreshToken":Ljava/lang/String;
    if-nez v0, :cond_18

    .line 262
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    const/4 v2, 0x1

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->notifyGetRefreshTokenResult(I)V
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;I)V

    .line 267
    :goto_12
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->stopSelf()V

    .line 268
    return-void

    .line 264
    :cond_18
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    const/4 v2, 0x0

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->notifyGetRefreshTokenResult(I)V
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;I)V

    goto :goto_12
.end method
