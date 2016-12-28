.class public Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;
.super Landroid/app/Activity;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$RespHandler;
    }
.end annotation


# static fields
.field public static final ACTION_AUTH_RESULT:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_AUTH_RESULT"

.field public static final ACTION_DEAUTH_RESULT:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_DEAUTH_RESULT"

.field public static final ACTION_GET_POLICY:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_GET_POLICY"

.field public static final ACTION_HEART_BEAT:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_HEART_BEAT"

.field public static final ACTION_HIDE_NOTIFICATION:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_HIDE_NOTIFICATION"

.field public static final ACTION_IS_AUTH:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_IS_AUTH"

.field public static final ACTION_LOGIN:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_LOGIN"

.field public static final ACTION_LOGIN_RESULT:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_LOGIN_RESULT"

.field public static final ACTION_REQ_AUTH:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

.field public static final ACTION_REQ_DEAUTH:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_REQ_DEAUTH"

.field public static final ACTION_SERVICE_OFF_RESULT:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_OFF_RESULT"

.field public static final ACTION_SERVICE_ON_RESULT:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_ON_RESULT"

.field public static final ACTION_SHOW_NOTIFICATION:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_SHOW_NOTIFICATION"

.field public static final ACTION_STOP_ALARM:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_STOP_ALARM"

.field private static final EULA_SETUP_WIZARD:Ljava/lang/String; = "com.sec.android.app.SecSetupWizard.DEVICE_EULA_TC_PP_AGREEMENTS"

.field public static final EXTRA_ACCESS_TOKEN:Ljava/lang/String; = "accessToken"

.field public static final EXTRA_AGREE_MARKETING:Ljava/lang/String; = "agreeMarketing"

.field public static final EXTRA_AUTH_RESULT:Ljava/lang/String; = "extra_auth_result"

.field public static final EXTRA_CB_HANDLER:Ljava/lang/String; = "extra_cb_handler"

.field public static final EXTRA_CHECK_AUTH_TYPE_ONLY:Ljava/lang/String; = "extra_check_auth_type_only"

.field public static final EXTRA_DEAUTH_RESULT:Ljava/lang/String; = "extra_deauth_result"

.field public static final EXTRA_FORCE_AUTH:Ljava/lang/String; = "force_auth"

.field public static final EXTRA_LOGIN_RESULT:Ljava/lang/String; = "extra_login_result"

.field public static final EXTRA_SERVICE_ID:Ljava/lang/String; = "service_id"

.field public static final EXTRA_SERVICE_OFF_RESULT:Ljava/lang/String; = "extra_service_off_result"

.field public static final EXTRA_SERVICE_ON_RESULT:Ljava/lang/String; = "extra_service_on_result"

.field public static final KEY_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field public static final KEY_IS_AUTH:Ljava/lang/String; = "is_auth"

.field public static final RESULT_FAILED:I = 0x1

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final SETUPWIZARD_COMPLETE:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

.field private static final TAG:Ljava/lang/String; = "TestActivity"

.field public static final TOKEN_CREATE_TNC_INFO:I = 0xc8

.field public static final TOKEN_GET_POLICY:I = 0x12c

.field public static final TOKEN_IS_AUTH:I = 0x64

.field private static final TOKEN_LOGIN_RESULT:I = 0x190


# instance fields
.field private contentObserver:Landroid/database/ContentObserver;

.field private mAgreeMarketingCheckBox:Landroid/widget/CheckBox;

.field private final mContext:Landroid/content/Context;

.field private mDeleteServiceId:Landroid/widget/EditText;

.field private mEasySignUpReceiver:Landroid/content/BroadcastReceiver;

.field private mFromSA:Landroid/widget/CheckBox;

.field private mServiceId:Landroid/widget/EditText;

.field private respHandler:Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$RespHandler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 112
    iput-object p0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    .line 119
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$1;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mEasySignUpReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$RespHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$RespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$1;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->respHandler:Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$RespHandler;

    .line 705
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$9;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->contentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isAddableService(Landroid/content/Context;I)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I

    .prologue
    .line 846
    invoke-static {p1, p2}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v0

    if-ltz v0, :cond_e

    invoke-static {p1, p2}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->isJoined(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 847
    const/4 v0, 0x1

    .line 849
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public btn2FAJoin(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 623
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 624
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "auth_type"

    const-string v3, "2FA_JOIN"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const-string v2, "disclaimer_agreed"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 627
    const/4 v2, 0x0

    :try_start_15
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_15 .. :try_end_18} :catch_19

    .line 631
    :goto_18
    return-void

    .line 628
    :catch_19
    move-exception v0

    .line 629
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_18
.end method

.method public btn2FAuth(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 527
    sget v3, Lcom/samsung/android/coreapps/easysignup/R$id;->auth_code_2fa_req_pushed:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 528
    .local v0, "authCodeEdit":Landroid/widget/EditText;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 529
    .local v2, "intent":Landroid/content/Intent;
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 530
    const-string v3, "auth_type"

    const-string v4, "2FA"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    const-string v3, "auth_code"

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    :try_start_28
    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 539
    :goto_2b
    return-void

    .line 535
    :catch_2c
    move-exception v1

    .line 536
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "TestActivity"

    const-string v4, "Activity Not Found"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2b
.end method

.method public btnAcceptDisclaimerActivity(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 564
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v1, "serviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p0, v3}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->isAddableService(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 566
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    :cond_15
    invoke-direct {p0, p0, v4}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->isAddableService(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string v2, "com.android.mms"

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 569
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    :cond_32
    invoke-direct {p0, p0, v5}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->isAddableService(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 572
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TestActivity"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/coreapps/easysignup/ui/AcceptDisclaimerActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 578
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "service_id_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 579
    const-string v2, "token"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 580
    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->startActivity(Landroid/content/Intent;)V

    .line 581
    return-void
.end method

.method public btnCancel2FAReq(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 500
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.android.coreapps.easysignup.ACTION_2FA_AUTH_REQ"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    .local v2, "intent":Landroid/content/Intent;
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 503
    const-string v5, "auth_type"

    const-string v6, "2FA_REQ_CANCEL"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const-string v5, "extra_cb_handler"

    new-instance v6, Landroid/os/Messenger;

    new-instance v7, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$5;

    invoke-direct {v7, p0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$5;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;)V

    invoke-direct {v6, v7}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 512
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .local v1, "ccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$id;->cc_2fa_req:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 514
    .local v0, "ccEdit":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    const-string v5, "cc"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 518
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v4, "nationalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$id;->national_phone_number_2fa_req:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 520
    .local v3, "nationalEdit":Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    const-string v5, "national_phone_number"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 523
    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 524
    return-void
.end method

.method public btnChangeServer(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 542
    invoke-static {p0}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 543
    const-string v0, "cannot change server if isAuth : true"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 553
    :goto_10
    return-void

    .line 547
    :cond_11
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getServerEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 548
    const-string v0, "server_config"

    const-string v1, "PRD"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/common/util/CommonPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :goto_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getServerEnv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10

    .line 550
    :cond_43
    const-string v0, "server_config"

    const-string v1, "DEV"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/common/util/CommonPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method

.method public btnContactSyncAgreement(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 406
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_CONTACT_SYNC_AGREEMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "extra_sync_now"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 409
    const/4 v2, 0x1

    :try_start_e
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_11
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e .. :try_end_11} :catch_12

    .line 413
    :goto_11
    return-void

    .line 410
    :catch_12
    move-exception v0

    .line 411
    .local v0, "ane":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_11
.end method

.method public btnCountry(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 416
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 417
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/samsung/android/coreapps/easysignup/ui/CountryActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 419
    :try_start_a
    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_d} :catch_e

    .line 423
    :goto_d
    return-void

    .line 420
    :catch_e
    move-exception v0

    .line 421
    .local v0, "ane":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_d
.end method

.method public btnDeAuth(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 234
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .local v1, "it":Landroid/content/Intent;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v0, "imsi_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v2, "imsi_list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 239
    return-void
.end method

.method public btnDeleteService(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 242
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mDeleteServiceId:Landroid/widget/EditText;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mDeleteServiceId:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 243
    :cond_15
    const-string v1, "DeleteServiceId should be greater than zero"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 251
    :goto_1e
    return-void

    .line 247
    :cond_1f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_REQ_DEAUTH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "service_id"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mDeleteServiceId:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mDeleteServiceId:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 250
    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1e
.end method

.method public btnDeregisteredActivity(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 387
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_LAUNCH_EASY_SIGNUP_DEREGISTERED_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    .local v1, "it":Landroid/content/Intent;
    const-string v2, "extra_esu_is_foreground"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 390
    :try_start_d
    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_10
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_10} :catch_11

    .line 394
    :goto_10
    return-void

    .line 391
    :catch_11
    move-exception v0

    .line 392
    .local v0, "ane":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_10
.end method

.method public btnDeveloperModeActivity(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 556
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android_secret_code://26732777"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 558
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 559
    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 560
    return-void
.end method

.method public btnExpireAccessToken(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "access_token"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 191
    return-void
.end method

.method public btnExpireRefreshToken(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 194
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/coreapps/easysignup/service/ExpireTokenService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .local v0, "intent2":Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "refresh_token"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 197
    return-void
.end method

.method public btnGetPolicy(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 308
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    .local v0, "it":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 310
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 311
    return-void
.end method

.method public btnGetSamsungAccountGuid(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 256
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/coreapps/easysignup/service/SamsungAccountService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 258
    const-string v1, "call SamsungAccountService"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 259
    return-void
.end method

.method public btnGetServiceProfile(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 657
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v3, "msisdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "919535921356"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    const-string v4, "919108998944"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    new-instance v2, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$8;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;)V

    .line 674
    .local v2, "mHandler":Landroid/os/Handler;
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 676
    .local v0, "cb":Landroid/os/Messenger;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 677
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.coreapps.contact.ACTION_CONTACT_GET_POFILE_SERVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    const-string v4, "extra_contact_msisdn_list"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 679
    const-string v4, "com.samsung.android.coreapps.contact.transaction.ContactService"

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    const-string v4, "com.samsung.android.coreapps.contact"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    const-string v4, "extra_client_callback"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 682
    const-string v4, "btnGetServiceProfile intent broadcast"

    const-string v5, "TestActivity"

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 685
    return-void
.end method

.method public btnGetSupportedFeatures(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 262
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mServiceId:Landroid/widget/EditText;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mServiceId:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 263
    :cond_15
    const-string v2, "ServiceId should be greater than zero"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 282
    :goto_1e
    return-void

    .line 267
    :cond_1f
    const/4 v1, -0x1

    .line 270
    .local v1, "serviceId":I
    :try_start_20
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mServiceId:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_2d} :catch_3a

    move-result v1

    .line 276
    if-gez v1, :cond_45

    .line 277
    const-string v2, "ServiceId should be greater than zero"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1e

    .line 271
    :catch_3a
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "NumberFormat is not proper"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1e

    .line 281
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " features : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1e
.end method

.method public btnGetUser(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v0, "it":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 224
    const-string v1, "extra_cb_handler"

    new-instance v2, Landroid/os/Messenger;

    new-instance v3, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$2;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;)V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 231
    return-void
.end method

.method public btnHeartBeat(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x20

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_REQ_HEARTBEAT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "service_id"

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 208
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    const-class v3, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v1, "it":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 212
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 213
    return-void
.end method

.method public btnHideNotification(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_HIDE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 347
    return-void
.end method

.method public btnInvite(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 584
    new-instance v3, Landroid/os/Messenger;

    new-instance v6, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$6;

    invoke-direct {v6, p0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$6;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;)V

    invoke-direct {v3, v6}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 591
    .local v3, "messenger":Landroid/os/Messenger;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.samsung.android.coreapps.easysignup.ACTION_INVITE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 592
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "extra_cb_handler"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 593
    const-string v6, "service_id"

    const/16 v7, 0x10

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 594
    const-string v6, "message"

    const-string v7, "TEST CoreApps Message"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .local v1, "ccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget v6, Lcom/samsung/android/coreapps/easysignup/R$id;->cc_2fa_req:I

    invoke-virtual {p0, v6}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 598
    .local v0, "ccEdit":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    const-string v6, "cc"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 602
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v5, "nationalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget v6, Lcom/samsung/android/coreapps/easysignup/R$id;->national_phone_number_2fa_req:I

    invoke-virtual {p0, v6}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 604
    .local v4, "nationalEdit":Landroid/widget/EditText;
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    const-string v6, "national_phone_number"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 607
    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 608
    return-void
.end method

.method public btnIsAuth(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 178
    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->respHandler:Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$RespHandler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 180
    .local v1, "messenger":Landroid/os/Messenger;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_IS_AUTH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 182
    const-string v2, "extra_cb_handler"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 183
    const-string v2, "token"

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    return-void
.end method

.method public btnIsJoined(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 285
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mServiceId:Landroid/widget/EditText;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mServiceId:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 286
    :cond_15
    const-string v2, "Servicd ID should be greater than zero"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 305
    :goto_1e
    return-void

    .line 290
    :cond_1f
    const/4 v1, -0x1

    .line 293
    .local v1, "serviceId":I
    :try_start_20
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mServiceId:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_2d} :catch_3a

    move-result v1

    .line 299
    if-gez v1, :cond_45

    .line 300
    const-string v2, "ServicdId should be greater than zero"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1e

    .line 294
    :catch_3a
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "NumberFormat is not proper"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1e

    .line 304
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "join : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->isJoined(Landroid/content/Context;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1e
.end method

.method public btnIsReq2FAuth(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 611
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_IS_REQ_2FA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_cb_handler"

    new-instance v2, Landroid/os/Messenger;

    new-instance v3, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$7;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;)V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 618
    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 619
    return-void
.end method

.method public btnIsValid(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 314
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/coreapps/easysignup/transaction/IsValidTransaction;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    .local v0, "it":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 316
    const-string v1, "Duid"

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v1, "Access-Token"

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v1, "msisdn"

    const-string v2, "821021030396"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const-string v1, "sid"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 321
    return-void
.end method

.method public btnLogin(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 200
    sget v1, Lcom/samsung/android/coreapps/easysignup/R$id;->inputAccessToken:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 201
    .local v0, "inputAccessToken":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->login(Landroid/content/Context;ILjava/lang/String;)V

    .line 202
    return-void
.end method

.method public btnRecovery(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 324
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/coreapps/easysignup/transaction/RecoveryTransaction;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "imsi"

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 327
    return-void
.end method

.method public btnReq2FAuth(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 449
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.android.coreapps.easysignup.ACTION_2FA_AUTH_REQ"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    .local v2, "intent":Landroid/content/Intent;
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 451
    const-string v5, "auth_type"

    const-string v6, "2FA_REQ"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const-string v5, "extra_cb_handler"

    new-instance v6, Landroid/os/Messenger;

    new-instance v7, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$3;

    invoke-direct {v7, p0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$3;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;)V

    invoke-direct {v6, v7}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 460
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v1, "ccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$id;->cc_2fa_req:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 462
    .local v0, "ccEdit":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    const-string v5, "cc"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 466
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v4, "nationalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$id;->national_phone_number_2fa_req:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 468
    .local v3, "nationalEdit":Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    const-string v5, "national_phone_number"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 470
    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 471
    return-void
.end method

.method public btnReq2FAuthV3(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 474
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.android.coreapps.easysignup.ACTION_2FA_AUTH_REQ_V3"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    .local v2, "intent":Landroid/content/Intent;
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 476
    const-string v5, "auth_type"

    const-string v6, "2FA_REQ_V3"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string v5, "extra_cb_handler"

    new-instance v6, Landroid/os/Messenger;

    new-instance v7, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$4;

    invoke-direct {v7, p0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$4;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;)V

    invoke-direct {v6, v7}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 485
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v1, "ccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$id;->cc_2fa_req:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 487
    .local v0, "ccEdit":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    const-string v5, "cc"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 491
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v4, "nationalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$id;->national_phone_number_2fa_req:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 493
    .local v3, "nationalEdit":Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    const-string v5, "national_phone_number"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 495
    const-string v5, "service_id"

    const/4 v6, 0x4

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 497
    return-void
.end method

.method public btnReqAuth(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 166
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "AuthRequestFrom"

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mFromSA:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v2, "samsungAccount"

    :goto_13
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v2, "agreeMarketing"

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mAgreeMarketingCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    const/4 v2, 0x0

    :try_start_22
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_25
    .catch Landroid/content/ActivityNotFoundException; {:try_start_22 .. :try_end_25} :catch_28

    .line 175
    :goto_25
    return-void

    .line 167
    :cond_26
    const/4 v2, 0x0

    goto :goto_13

    .line 172
    :catch_28
    move-exception v0

    .line 173
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_25
.end method

.method public btnSendEULA(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.SecSetupWizard.DEVICE_EULA_TC_PP_AGREEMENTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 335
    return-void
.end method

.method public btnSendWizardComplete(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 330
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 331
    return-void
.end method

.method public btnServerCheckActivity(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 439
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 440
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    :try_start_e
    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e .. :try_end_11} :catch_12

    .line 446
    :goto_11
    return-void

    .line 443
    :catch_12
    move-exception v0

    .line 444
    .local v0, "ane":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_11
.end method

.method public btnSetting(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 397
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_LAUNCH_EASY_SIGNUP_BY_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v1, "intent":Landroid/content/Intent;
    :try_start_7
    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_a} :catch_b

    .line 403
    :goto_a
    return-void

    .line 400
    :catch_b
    move-exception v0

    .line 401
    .local v0, "ane":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_a
.end method

.method public btnShowNotification(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_SHOW_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 343
    return-void
.end method

.method public btnSmsAuthActivity(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 426
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 427
    .local v1, "it":Landroid/content/Intent;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 428
    .local v2, "mHandler":Landroid/os/Handler;
    const/high16 v3, 0x24000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 429
    const-string v3, "extra_cb_handler"

    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 430
    const-string v3, "imsi"

    const-string v4, "0000000000000000"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    :try_start_22
    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_25
    .catch Landroid/content/ActivityNotFoundException; {:try_start_22 .. :try_end_25} :catch_26

    .line 436
    :goto_25
    return-void

    .line 433
    :catch_26
    move-exception v0

    .line 434
    .local v0, "ane":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_25
.end method

.method public btnStopNotification(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 338
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_STOP_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 339
    return-void
.end method

.method public btnUpdateAlarm(Landroid/view/View;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 354
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 356
    .local v2, "nm":Landroid/app/NotificationManager;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v1, "it":Landroid/content/Intent;
    const-string v6, "AuthRequestFrom"

    const-string v7, "notification"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 360
    .local v4, "pi":Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v7, Lcom/samsung/android/coreapps/easysignup/R$drawable;->indicator_profilesharing:I

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    sget v7, Lcom/samsung/android/coreapps/easysignup/R$string;->profile_sharing:I

    invoke-virtual {p0, v7}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    sget v7, Lcom/samsung/android/coreapps/easysignup/R$string;->profile_sharing_desc:I

    invoke-virtual {p0, v7}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 370
    .local v3, "noti":Landroid/app/Notification;
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/samsung/android/coreapps/easysignup/R$layout;->layout_greeting_notification:I

    invoke-direct {v0, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 371
    .local v0, "expendView":Landroid/widget/RemoteViews;
    sget v6, Lcom/samsung/android/coreapps/easysignup/R$id;->icon:I

    sget v7, Lcom/samsung/android/coreapps/easysignup/R$drawable;->noti_profile_sharing:I

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 372
    sget v6, Lcom/samsung/android/coreapps/easysignup/R$id;->title:I

    sget v7, Lcom/samsung/android/coreapps/easysignup/R$string;->profile_sharing:I

    invoke-virtual {p0, v7}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 373
    sget v6, Lcom/samsung/android/coreapps/easysignup/R$id;->description:I

    sget v7, Lcom/samsung/android/coreapps/easysignup/R$string;->profile_sharing_desc:I

    invoke-virtual {p0, v7}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 375
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/samsung/android/coreapps/easysignup/R$layout;->layout_greeting_notification_single_line:I

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 376
    .local v5, "singLineView":Landroid/widget/RemoteViews;
    sget v6, Lcom/samsung/android/coreapps/easysignup/R$id;->icon:I

    sget v7, Lcom/samsung/android/coreapps/easysignup/R$drawable;->noti_profile_sharing:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 377
    sget v6, Lcom/samsung/android/coreapps/easysignup/R$id;->title:I

    sget v7, Lcom/samsung/android/coreapps/easysignup/R$string;->profile_sharing:I

    invoke-virtual {p0, v7}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 378
    sget v6, Lcom/samsung/android/coreapps/easysignup/R$id;->description:I

    sget v7, Lcom/samsung/android/coreapps/easysignup/R$string;->profile_sharing_desc:I

    invoke-virtual {p0, v7}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 380
    iput-object v5, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 381
    iput-object v0, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 383
    const v6, 0x127f98

    invoke-virtual {v2, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 384
    return-void
.end method

.method public btnUpdateGcmId(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 216
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/coreapps/easysignup/transaction/UpdateTransaction;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v0, "it":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 219
    return-void
.end method

.method public btnUpdateNoti(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 350
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/util/SelfUpgradeUtils;->showNotification(Landroid/content/Context;)V

    .line 351
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 808
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestActivity"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 721
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 726
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 727
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v8, "com.samsung.android.coreapps.easysignup.ACTION_AUTH_RESULT"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 728
    const-string v8, "com.samsung.android.coreapps.easysignup.ACTION_DEAUTH_RESULT"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 729
    const-string v8, "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_ON_RESULT"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 730
    const-string v8, "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_OFF_RESULT"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 731
    const-string v8, "com.samsung.android.coreapps.easysignup.ACTION_2FA_AUTH_REQ_PUSH"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 732
    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mEasySignUpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v3}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 734
    sget v8, Lcom/samsung/android/coreapps/easysignup/R$layout;->activity_test:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->setContentView(I)V

    .line 736
    sget v8, Lcom/samsung/android/coreapps/easysignup/R$id;->fromSA:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mFromSA:Landroid/widget/CheckBox;

    .line 737
    sget v8, Lcom/samsung/android/coreapps/easysignup/R$id;->agreeMarketing:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mAgreeMarketingCheckBox:Landroid/widget/CheckBox;

    .line 739
    sget v8, Lcom/samsung/android/coreapps/easysignup/R$id;->ct_switch:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 740
    .local v2, "ctSwitch":Landroid/widget/Switch;
    invoke-static {p0, v10}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getServiceStatus(Landroid/content/Context;I)I

    move-result v8

    if-ne v8, v9, :cond_138

    move v8, v9

    :goto_50
    invoke-virtual {v2, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 741
    new-instance v8, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$10;

    invoke-direct {v8, p0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$10;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;)V

    invoke-virtual {v2, v8}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 754
    sget v8, Lcom/samsung/android/coreapps/easysignup/R$id;->fm_switch:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    .line 755
    .local v4, "fmSwitch":Landroid/widget/Switch;
    invoke-static {p0, v9}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getServiceStatus(Landroid/content/Context;I)I

    move-result v8

    if-ne v8, v9, :cond_13b

    move v8, v9

    :goto_6a
    invoke-virtual {v4, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 756
    new-instance v8, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$11;

    invoke-direct {v8, p0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$11;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;)V

    invoke-virtual {v4, v8}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 771
    sget v8, Lcom/samsung/android/coreapps/easysignup/R$id;->rs_switch:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    .line 772
    .local v5, "rsSwitch":Landroid/widget/Switch;
    const/4 v8, 0x2

    invoke-static {p0, v8}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getServiceStatus(Landroid/content/Context;I)I

    move-result v8

    if-ne v8, v9, :cond_85

    move v10, v9

    :cond_85
    invoke-virtual {v5, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 773
    new-instance v8, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$12;

    invoke-direct {v8, p0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity$12;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 788
    sget v8, Lcom/samsung/android/coreapps/easysignup/R$id;->serviceId:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mServiceId:Landroid/widget/EditText;

    .line 789
    sget v8, Lcom/samsung/android/coreapps/easysignup/R$id;->deleteServiceId:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mDeleteServiceId:Landroid/widget/EditText;

    .line 791
    const-string v1, "com.samsung.android.coreapps.easysignup"

    .line 792
    .local v1, "CONTENT_AUTHORITY":Ljava/lang/String;
    const-string v8, "content://com.samsung.android.coreapps.easysignup"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 794
    .local v0, "BASE_CONTENT_URI":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v10, "service"

    invoke-virtual {v8, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 796
    .local v7, "uri":Landroid/net/Uri;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uri = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "TestActivity"

    invoke-static {v8, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 800
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 801
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tm.getPhoneType() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TestActivity"

    invoke-static {v8, v9}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tm.getDeviceId() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TestActivity"

    invoke-static {v8, v9}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CommonPref.getDeviceId() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TestActivity"

    invoke-static {v8, v9}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    return-void

    .end local v0    # "BASE_CONTENT_URI":Landroid/net/Uri;
    .end local v1    # "CONTENT_AUTHORITY":Ljava/lang/String;
    .end local v4    # "fmSwitch":Landroid/widget/Switch;
    .end local v5    # "rsSwitch":Landroid/widget/Switch;
    .end local v6    # "tm":Landroid/telephony/TelephonyManager;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_138
    move v8, v10

    .line 740
    goto/16 :goto_50

    .restart local v4    # "fmSwitch":Landroid/widget/Switch;
    :cond_13b
    move v8, v10

    .line 755
    goto/16 :goto_6a
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 841
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->mEasySignUpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 842
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 843
    return-void
.end method

.method protected onResume()V
    .registers 7

    .prologue
    .line 814
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 822
    invoke-static {p0}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    .line 823
    .local v0, "bIsAuth":Z
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 825
    .local v1, "bar":Landroid/app/ActionBar;
    if-eqz v1, :cond_29

    .line 826
    if-eqz v0, :cond_4d

    .line 827
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authenticated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getMsisdn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 835
    :cond_29
    :goto_29
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ultra_powersaving_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 836
    .local v2, "ultraSavingMode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ultraSavingMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TestActivity"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    return-void

    .line 831
    .end local v2    # "ultraSavingMode":I
    :cond_4d
    const-string v3, "Not authenticated"

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_29
.end method

.method public sendMessage(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 634
    const/4 v2, -0x1

    .line 636
    .local v2, "serviceId":I
    :try_start_1
    sget v3, Lcom/samsung/android/coreapps/easysignup/R$id;->target_sid:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_14} :catch_cf

    move-result v2

    .line 640
    :goto_15
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/samsung/android/coreapps/easysignup/transaction/SendMessageTransaction;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 641
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "title"

    sget v3, Lcom/samsung/android/coreapps/easysignup/R$id;->title:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    const-string v4, "desc"

    sget v3, Lcom/samsung/android/coreapps/easysignup/R$id;->desc:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    if-lez v2, :cond_4d

    .line 644
    const-string v3, "service_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    :cond_4d
    const-string v4, "pkg"

    sget v3, Lcom/samsung/android/coreapps/easysignup/R$id;->pkg:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    const-string v4, "url"

    sget v3, Lcom/samsung/android/coreapps/easysignup/R$id;->url:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    const-string v4, "cc"

    sget v3, Lcom/samsung/android/coreapps/easysignup/R$id;->ccc:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    const-string v4, "national_phone_number"

    sget v3, Lcom/samsung/android/coreapps/easysignup/R$id;->phone_number:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    const-string v4, "imgae_url"

    sget v3, Lcom/samsung/android/coreapps/easysignup/R$id;->img:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    const-string v4, "ext_fields"

    sget v3, Lcom/samsung/android/coreapps/easysignup/R$id;->ext:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/ui/TestActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 653
    return-void

    .line 637
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_cf
    move-exception v1

    .line 638
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_15
.end method
