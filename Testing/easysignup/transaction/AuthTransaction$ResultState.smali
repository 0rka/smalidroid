.class public Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ResultState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "AuthTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)V
    .registers 2

    .prologue
    .line 448
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 453
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mRequestIntentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$2100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_af

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 454
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "extra_cb_handler"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 456
    .local v1, "destMessenger":Landroid/os/Messenger;
    if-nez v1, :cond_2a

    .line 457
    const-string v7, "destMessenger is null"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$400()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 461
    :cond_2a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 463
    .local v6, "resultMsg":Landroid/os/Message;
    const-string v7, "extra_token"

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Landroid/os/Message;->what:I

    .line 464
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 465
    .local v0, "data":Landroid/os/Bundle;
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMsisdn:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9a

    .line 466
    const-string v7, "extra_auth_result"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 467
    const-string v7, "key_msisdn"

    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mMsisdn:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1100(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :goto_59
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mFromEULA:Z
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 473
    const-string v7, "extra_is_mo_support"

    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mIsMOSupport:Z
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1300(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Z

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 474
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MOSupport : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mIsMOSupport:Z
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1300(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$400()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_8c
    invoke-virtual {v6, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 479
    :try_start_8f
    invoke-virtual {v1, v6}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_92} :catch_94

    goto/16 :goto_a

    .line 480
    :catch_94
    move-exception v2

    .line 481
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_a

    .line 469
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_9a
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->mAuthMethods:[Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->is2FANeeded([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ad

    const/4 v5, 0x3

    .line 470
    .local v5, "result":I
    :goto_a7
    const-string v7, "extra_auth_result"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_59

    .line 469
    .end local v5    # "result":I
    :cond_ad
    const/4 v5, 0x1

    goto :goto_a7

    .line 485
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "destMessenger":Landroid/os/Messenger;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "resultMsg":Landroid/os/Message;
    :cond_af
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->initValues()V
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->access$2200(Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;)V

    .line 487
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction$ResultState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;

    invoke-virtual {v7}, Lcom/samsung/android/coreapps/easysignup/transaction/AuthTransaction;->stopSelf()V

    .line 488
    return-void
.end method
