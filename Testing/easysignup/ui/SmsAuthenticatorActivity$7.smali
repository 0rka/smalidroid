.class Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "SmsAuthenticatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)V
    .registers 2

    .prologue
    .line 539
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$7;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 542
    const-string v0, ""

    .line 544
    .local v0, "aCode":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 546
    .local v3, "data":Landroid/os/Bundle;
    if-eqz v3, :cond_18

    .line 547
    const-string v11, "pdus"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    move-object v8, v11

    check-cast v8, [Ljava/lang/Object;

    .line 548
    .local v8, "pdus":[Ljava/lang/Object;
    if-eqz v8, :cond_18

    array-length v11, v8

    if-nez v11, :cond_19

    .line 599
    .end local v8    # "pdus":[Ljava/lang/Object;
    :cond_18
    :goto_18
    return-void

    .line 552
    .restart local v8    # "pdus":[Ljava/lang/Object;
    :cond_19
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1c
    if-ge v4, v5, :cond_2a

    aget-object v7, v1, v4

    .line 553
    .local v7, "pdu":Ljava/lang/Object;
    check-cast v7, [B

    .end local v7    # "pdu":Ljava/lang/Object;
    check-cast v7, [B

    invoke-static {v7}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 554
    .local v6, "part":Landroid/telephony/SmsMessage;
    if-nez v6, :cond_54

    .line 562
    .end local v6    # "part":Landroid/telephony/SmsMessage;
    :cond_2a
    if-eqz v0, :cond_18

    .line 563
    const-string v10, ""

    .line 564
    .local v10, "tokenCode":Ljava/lang/String;
    const-string v11, "ChatON : "

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_73

    .line 565
    const-string v10, "ChatON : "

    .line 572
    :goto_38
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 574
    .local v9, "start":I
    const/4 v11, -0x1

    if-eq v9, v11, :cond_18

    .line 577
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v9, v11

    .line 579
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v12, v9, 0x4

    if-ge v11, v12, :cond_7e

    .line 580
    const-string v11, "receviced code\'s length is less than excepted code"

    sget-object v12, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 558
    .end local v9    # "start":I
    .end local v10    # "tokenCode":Ljava/lang/String;
    .restart local v6    # "part":Landroid/telephony/SmsMessage;
    :cond_54
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 559
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "received verification Code :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 566
    .end local v6    # "part":Landroid/telephony/SmsMessage;
    .restart local v10    # "tokenCode":Ljava/lang/String;
    :cond_73
    const-string v11, ": "

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 567
    const-string v10, ": "

    goto :goto_38

    .line 585
    .restart local v9    # "start":I
    :cond_7e
    add-int/lit8 v11, v9, 0x4

    invoke-virtual {v0, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "authCode":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "final received verification Code:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    if-eqz v2, :cond_18

    .line 589
    iget-object v11, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$7;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-virtual {v11}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->invalidateOptionsMenu()V

    .line 591
    iget-object v11, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$7;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$700(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Landroid/app/ProgressDialog;

    move-result-object v11

    if-eqz v11, :cond_18

    iget-object v11, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$7;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$700(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_18

    .line 592
    iget-object v11, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$7;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    iget-object v12, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$7;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mImsi:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$800(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$7;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAuthType:Ljava/lang/String;
    invoke-static {v13}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$900(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->authenticateMTDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v12, v2, v13}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$1000(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18
.end method
