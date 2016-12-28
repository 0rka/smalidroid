.class public Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$ResultState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "IsValidTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ResultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;)V
    .registers 2

    .prologue
    .line 128
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$ResultState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 131
    const-string v0, "result state"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker$ResultState;->this$1:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction$IsValidWorker;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;->stopSelf()V

    .line 133
    return-void
.end method
