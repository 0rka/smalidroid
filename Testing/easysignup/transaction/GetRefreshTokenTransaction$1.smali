.class Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$1;
.super Ljava/lang/Object;
.source "GetRefreshTokenTransaction.java"

# interfaces
.implements Lcom/samsung/android/coreapps/easysignup/network/SppPushClient$ISppRegChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$1;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistrationChanged()V
    .registers 4

    .prologue
    .line 75
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 76
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x6e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 78
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$1;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$1;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mSppRegState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 79
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction$1;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/GetRefreshTokenTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    return-void
.end method
