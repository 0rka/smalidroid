.class public Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;
.super Lcom/samsung/android/coreapps/common/transaction/HandlerState;
.source "Req2FAuthTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Req2FAuthState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;


# direct methods
.method public constructor <init>(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)V
    .registers 2

    .prologue
    .line 226
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/transaction/HandlerState;-><init>()V

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .registers 16
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 229
    const-string v1, "Req2FAuthState enter"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    .line 233
    .local v8, "data":Landroid/os/Bundle;
    const-string v1, "cc"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 234
    .local v6, "cccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "national_phone_number"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 236
    .local v10, "nationalPhoneNumberList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v12, "pushInfoArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;>;"
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getSppRegId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 238
    new-instance v11, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getSppRegId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPP"

    invoke-direct {v11, v1, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .local v11, "pushInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .end local v11    # "pushInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;
    :cond_32
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getGcmRegId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4a

    sget-boolean v1, Lcom/samsung/android/coreapps/common/CommonFeature;->SUPPORT_GCM:Z

    if-eqz v1, :cond_4a

    .line 242
    new-instance v11, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getGcmRegId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GCM"

    invoke-direct {v11, v1, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .restart local v11    # "pushInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v11    # "pushInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;
    :cond_4a
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;

    .line 248
    .local v3, "pushInfoArray":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;
    array-length v1, v3

    if-nez v1, :cond_6f

    .line 249
    const-string v1, "no push id, go to result"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 274
    :goto_6e
    return-void

    .line 254
    :cond_6f
    if-eqz v6, :cond_89

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_89

    if-eqz v10, :cond_89

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_89

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_a2

    .line 256
    :cond_89
    const-string v1, "ccc & national phone number invalid"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_6e

    .line 261
    :cond_a2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 262
    .local v7, "count":I
    new-array v4, v7, [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

    .line 263
    .local v4, "receiverInfoArray":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_a9
    if-ge v9, v7, :cond_c1

    .line 264
    new-instance v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v5, v1, v2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v9

    .line 263
    add-int/lit8 v9, v9, 0x1

    goto :goto_a9

    .line 266
    :cond_c1
    const-string v1, "2FA_REQ_V3"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mAuthType:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$000(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 267
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthParams;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthParams;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;Ljava/lang/String;)V

    .line 268
    .local v0, "req2FAuthParams":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthParams;
    const/16 v1, 0x55

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mServiceId:I
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$1000(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)I

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v5

    iget-object v13, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v13}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v13

    invoke-static {v1, v2, v0, v5, v13}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->request2FAuthV3(IILcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthParams;Landroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    goto/16 :goto_6e

    .line 270
    .end local v0    # "req2FAuthParams":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthParams;
    :cond_f8
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthParams;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$700(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthParams;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ReceiverInfo;Ljava/lang/String;)V

    .line 271
    .restart local v0    # "req2FAuthParams":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthParams;
    const/16 v1, 0x51

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mErrorHandler:Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$500(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;

    move-result-object v5

    invoke-static {v1, v0, v2, v5}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/DeviceProfileManager;->request2FAuth(ILcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthParams;Landroid/os/Handler;Lcom/android/volley/Response$ErrorListener;)V

    goto/16 :goto_6e
.end method

.method protected processMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 278
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    iget v3, p1, Landroid/os/Message;->what:I

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mTokenReceived:I
    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$1102(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;I)I

    .line 279
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_80

    .line 300
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->deferMessage(Landroid/os/Message;)V

    .line 303
    :goto_15
    return-void

    .line 281
    :sswitch_16
    const-string v2, "2FA_REQ sent"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$600()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 283
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthResp;

    .line 284
    .local v0, "req2FAuthResp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthResp;
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->getSuccessCount(Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthResp;)I
    invoke-static {v3, v0}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$1300(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthResp;)I

    move-result v3

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mSuccessCount:I
    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$1202(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;I)I

    goto :goto_15

    .line 288
    .end local v0    # "req2FAuthResp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthResp;
    :sswitch_3e
    const-string v2, "2FA_REQ_V3 sent"

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$600()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    .line 290
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthRespV3;

    .line 291
    .local v1, "req2FAuthRespV3":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthRespV3;
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # invokes: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->getSuccessCount(Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthRespV3;)I
    invoke-static {v3, v1}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$1400(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthRespV3;)I

    move-result v3

    # setter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mSuccessCount:I
    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$1202(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;I)I

    goto :goto_15

    .line 295
    .end local v1    # "req2FAuthRespV3":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Req2FAuthRespV3;
    :sswitch_66
    const-string v2, "2FA REQ failed "

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$600()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mStHandler:Lcom/samsung/android/coreapps/common/transaction/StateHandler;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$100(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/StateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction$Req2FAuthState;->this$0:Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;

    # getter for: Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->mResultState:Lcom/samsung/android/coreapps/common/transaction/HandlerState;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;->access$400(Lcom/samsung/android/coreapps/easysignup/transaction/Req2FAuthTransaction;)Lcom/samsung/android/coreapps/common/transaction/HandlerState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/coreapps/common/transaction/StateHandler;->transTo(Lcom/samsung/android/coreapps/common/transaction/HandlerState;)V

    goto :goto_15

    .line 279
    nop

    :sswitch_data_80
    .sparse-switch
        0x51 -> :sswitch_16
        0x55 -> :sswitch_3e
        0x2710 -> :sswitch_66
    .end sparse-switch
.end method
