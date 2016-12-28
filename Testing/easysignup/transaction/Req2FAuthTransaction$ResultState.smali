.class public Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$ResultState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "Req2FAuthTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)V
    .registers 2

    .prologue
    .line 351
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->sendResponseMessage()V
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$1700(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)V

    .line 358
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->stopSelf()V

    .line 359
    return-void
.end method
