.class Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;
.super Ljava/lang/Object;
.source "IsValidTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IsValidWorker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$ResultState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IsValidState;,
        Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IdleState;
    }
.end annotation


# instance fields
.field private mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

.field private mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mIsValidState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mMsIsdn:Ljava/lang/String;

.field private mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

.field private mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;Landroid/content/Intent;I)V
    .registers 8
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "startId"    # I

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IdleState;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IdleState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)V

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 58
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IsValidState;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$IsValidState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)V

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mIsValidState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 60
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$ResultState;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$ResultState;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)V

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    .line 65
    new-instance v1, Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {p1}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;-><init>(Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    .line 66
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mIdleState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->setInitialState(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 67
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-direct {v1, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    .line 69
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 70
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 72
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 73
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mIsValidState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mMsIsdn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mMsIsdn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    return-object v0
.end method
