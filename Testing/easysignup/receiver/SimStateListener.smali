.class public Lcom/samsung/android/coreapps/easysignup/receiver/SimStateListener;
.super Landroid/content/BroadcastReceiver;
.source "SimStateListener.java"


# static fields
.field private static final EXTRA_REASON:Ljava/lang/String; = "REASON"

.field private static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/samsung/android/coreapps/easysignup/receiver/SimStateListener;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/receiver/SimStateListener;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 28
    if-nez p2, :cond_c

    .line 29
    const-string v4, "intent is null"

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/receiver/SimStateListener;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_b
    return-void

    .line 33
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "action":Ljava/lang/String;
    const-string v0, ""

    .line 35
    .local v0, "SIM_STATUS":Ljava/lang/String;
    const-string v2, ""

    .line 53
    .local v2, "hotswap_reason":Ljava/lang/String;
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 54
    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v4, "slot"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 56
    .local v3, "receiveSimSlot":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.intent.action.SIM_STATE_CHANGED - SIM_STATUS = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/receiver/SimStateListener;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_40
    const-string v4, "ABSENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    const-string v4, "false"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e9

    .line 68
    :cond_50
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->isMultiSimDevice()Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 69
    invoke-static {p1}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getAccountIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/coreapps/common/util/SimUtil;->findAccountImsi(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_73

    .line 70
    const-string v4, "ABSENT MultiSimDevice Remove Account "

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/receiver/SimStateListener;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v4, Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;

    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingAccount;->removeAccount(Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;)V

    .line 109
    :cond_73
    :goto_73
    invoke-static {p1, v7}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->getSupportedFeatures(Landroid/content/Context;I)I

    goto :goto_b

    .line 57
    .end local v3    # "receiveSimSlot":I
    :cond_77
    const-string v4, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "REASON"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    const-string v4, "simslot"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 61
    .restart local v3    # "receiveSimSlot":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/receiver/SimStateListener;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 63
    .end local v3    # "receiveSimSlot":I
    :cond_bb
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignore intent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/receiver/SimStateListener;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 75
    .restart local v3    # "receiveSimSlot":I
    :cond_d5
    const-string v4, "ABSENT SingleSimDevice Remove Account "

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/receiver/SimStateListener;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v4, Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;

    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingAccount;->removeAccount(Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;)V

    goto :goto_73

    .line 79
    :cond_e9
    const-string v4, "LOADED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f9

    const-string v4, "true"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 80
    :cond_f9
    const-class v5, Lcom/samsung/android/coreapps/easysignup/receiver/SimStateListener;

    monitor-enter v5

    .line 81
    :try_start_fc
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->isMultiSimDevice()Z

    move-result v4

    if-eqz v4, :cond_14b

    .line 83
    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/SimUtil;->findAccountImsi(I)Z

    move-result v4

    if-eqz v4, :cond_12d

    .line 85
    const-string v4, "LOADED MultiSimDevice Add Account "

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/receiver/SimStateListener;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingAccount;->addAccount(Ljava/lang/String;)V

    .line 103
    :cond_116
    :goto_116
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_127

    .line 104
    invoke-static {p1}, Lcom/samsung/android/coreapps/easysignup/EasySignUp;->recoveryAuth(Landroid/content/Context;)V

    .line 106
    :cond_127
    monitor-exit v5

    goto/16 :goto_73

    :catchall_12a
    move-exception v4

    monitor-exit v5
    :try_end_12c
    .catchall {:try_start_fc .. :try_end_12c} :catchall_12a

    throw v4

    .line 88
    :cond_12d
    :try_start_12d
    invoke-static {p1}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getAccountIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/coreapps/common/util/SimUtil;->findAccountImsi(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_116

    .line 89
    const-string v4, "LOADED MultiSimDevice Remove Account "

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/receiver/SimStateListener;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v4, Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;

    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingAccount;->removeAccount(Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;)V

    goto :goto_116

    .line 95
    :cond_14b
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_161

    .line 96
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingAccount;->addAccount(Ljava/lang/String;)V

    goto :goto_116

    .line 98
    :cond_161
    const-string v4, "LOADED SingleSimDevice Remove Account "

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/receiver/SimStateListener;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v4, Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;

    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingAccount;->removeAccount(Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;)V
    :try_end_174
    .catchall {:try_start_12d .. :try_end_174} :catchall_12a

    goto :goto_116
.end method
