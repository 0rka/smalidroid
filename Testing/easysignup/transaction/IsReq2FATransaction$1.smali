.class Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction$1;
.super Landroid/os/Handler;
.source "IsReq2FATransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction$1;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction$1;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;->sendResponseMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;Landroid/os/Message;)V

    .line 34
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction$1;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/IsReq2FATransaction;->stopSelf()V

    .line 35
    return-void
.end method
