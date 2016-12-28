.class public Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$ResultState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "SendMessageTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)V
    .registers 2

    .prologue
    .line 182
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mErrorCode:I
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)I

    move-result v0

    if-eqz v0, :cond_2a

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It has some error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->mErrorCode:I
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->access$300(Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_2a
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;->stopSelf()V

    .line 189
    return-void
.end method
