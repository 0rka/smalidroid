.class Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction$HttpRespHandler;
.super Landroid/os/Handler;
.source "InviteTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpRespHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;


# direct methods
.method private constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;
    .param p2, "x1"    # Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction$1;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction$HttpRespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xdc

    if-ne v2, v3, :cond_36

    .line 72
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MessageResp;

    .line 73
    .local v1, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MessageResp;
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;

    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;->sendCallbackMessage(IIJ)V
    invoke-static {v2, v3, v4, v6, v7}, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;IIJ)V

    .line 79
    .end local v1    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/MessageResp;
    :cond_30
    :goto_30
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;

    invoke-virtual {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;->stopSelf()V

    .line 80
    return-void

    .line 74
    :cond_36
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x2710

    if-ne v2, v3, :cond_30

    .line 75
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;

    .line 76
    .local v0, "errorResp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;

    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->getRcode()J

    move-result-wide v6

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;->sendCallbackMessage(IIJ)V
    invoke-static {v2, v3, v4, v6, v7}, Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;->access$200(Lcom/samsung/android/coreapps/easysignup/transaction/InviteTransaction;IIJ)V

    goto :goto_30
.end method
