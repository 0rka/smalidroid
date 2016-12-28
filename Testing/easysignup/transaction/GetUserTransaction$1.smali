.class Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction$1;
.super Landroid/os/Handler;
.source "GetUserTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;)V
    .registers 2

    .prologue
    .line 28
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction$1;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction$1;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;->sendResponseMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;Landroid/os/Message;)V

    .line 33
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction$1;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;->stopSelf()V

    .line 34
    return-void
.end method
