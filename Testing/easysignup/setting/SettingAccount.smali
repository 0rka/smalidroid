.class public Lcom/samsung/android/coreapps/easysignup/setting/SettingAccount;
.super Ljava/lang/Object;
.source "SettingAccount.java"


# static fields
.field public static final ADD_ACCOUNT_NUMBER:Ljava/lang/String; = "add_account_number"

.field private static final TAG:Ljava/lang/String; = "SettingAccount"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addAccount(Ljava/lang/String;)V
    .registers 12
    .param p0, "imsi"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v9, Lcom/samsung/android/coreapps/easysignup/setting/SettingAccount;

    monitor-enter v9

    :try_start_3
    const-string v8, "[ENTER] addAccount"

    const-string v10, "SettingAccount"

    invoke-static {v8, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 41
    .local v2, "context":Landroid/content/Context;
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, "msisdn":Ljava/lang/String;
    const/4 v7, 0x0

    .line 43
    .local v7, "phoneNumber":Ljava/lang/String;
    if-nez v6, :cond_4d

    .line 44
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v10, Lcom/samsung/android/coreapps/easysignup/R$string;->profile_sharing:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 49
    :goto_1f
    const-string v8, "add_account_number"

    const-string v10, ""

    invoke-static {v8, v10}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "accountNumber":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_56

    .line 51
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    .line 52
    const-string v8, "The account is already exist"

    const-string v10, "SettingAccount"

    invoke-static {v8, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {v2}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$Auth;->set(Landroid/content/Context;)V

    .line 55
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getSIDs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$ServiceStatus;->set(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getJoinSIDs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$JoinServiceStatus;->set(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_ae

    .line 91
    :goto_4b
    monitor-exit v9

    return-void

    .line 46
    .end local v1    # "accountNumber":Ljava/lang/String;
    :cond_4d
    :try_start_4d
    invoke-static {v6}, Lcom/samsung/android/coreapps/common/util/NumberUtils;->convertMsisdnToInternational(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1f

    .line 60
    .restart local v1    # "accountNumber":Ljava/lang/String;
    :cond_52
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/setting/SettingAccount;->removeAccount(Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;)V

    .line 64
    :cond_56
    const-string v8, "add_account_number"

    invoke-static {v8, v7}, Lcom/samsung/android/coreapps/common/util/CommonPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {v2}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$Auth;->set(Landroid/content/Context;)V

    .line 66
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getSIDs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$ServiceStatus;->set(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getJoinSIDs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$JoinServiceStatus;->set(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    sget-boolean v8, Lcom/samsung/android/coreapps/common/CommonFeature;->SUPPORT_BASIC_SERVICES:Z

    if-eqz v8, :cond_a6

    .line 70
    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    .line 71
    .local v5, "manager":Landroid/accounts/AccountManager;
    new-instance v0, Landroid/accounts/Account;

    const-string v8, "com.samsung.android.coreapps"

    invoke-direct {v0, v7, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_4d .. :try_end_7b} :catchall_ae

    .line 74
    .local v0, "account":Landroid/accounts/Account;
    :try_start_7b
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v5, v0, v8, v10}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v8

    if-eqz v8, :cond_a6

    .line 75
    const-string v8, "com.android.contacts"

    const/4 v10, 0x1

    invoke-static {v0, v8, v10}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 76
    const-string v8, "com.android.contacts"

    const/4 v10, 0x1

    invoke-static {v0, v8, v10}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 78
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.samsung.android.coreapps.easysignup.ACTION_ESU_ADDED_ACCOUNT"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "imsi"

    invoke-virtual {v4, v8, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const/16 v8, 0x20

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    invoke-virtual {v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_a6} :catch_b1
    .catchall {:try_start_7b .. :try_end_a6} :catchall_ae

    .line 90
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "manager":Landroid/accounts/AccountManager;
    :cond_a6
    :try_start_a6
    const-string v8, "[FINISH] addAccount"

    const-string v10, "SettingAccount"

    invoke-static {v8, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_a6 .. :try_end_ad} :catchall_ae

    goto :goto_4b

    .line 38
    .end local v1    # "accountNumber":Ljava/lang/String;
    .end local v2    # "context":Landroid/content/Context;
    .end local v6    # "msisdn":Ljava/lang/String;
    .end local v7    # "phoneNumber":Ljava/lang/String;
    :catchall_ae
    move-exception v8

    monitor-exit v9

    throw v8

    .line 84
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "accountNumber":Ljava/lang/String;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v5    # "manager":Landroid/accounts/AccountManager;
    .restart local v6    # "msisdn":Ljava/lang/String;
    .restart local v7    # "phoneNumber":Ljava/lang/String;
    :catch_b1
    move-exception v3

    .line 85
    .local v3, "e":Ljava/lang/Exception;
    :try_start_b2
    const-string v8, "add Account Exception Occurred!! "

    const-string v10, "SettingAccount"

    invoke-static {v8, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_b2 .. :try_end_b9} :catchall_ae

    goto :goto_4b
.end method

.method public static declared-synchronized removeAccount(Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;)V
    .registers 7
    .param p0, "removeAccountCallback"    # Lcom/samsung/android/coreapps/easysignup/authenticator/RemoveAccountCallback;

    .prologue
    .line 97
    const-class v4, Lcom/samsung/android/coreapps/easysignup/setting/SettingAccount;

    monitor-enter v4

    :try_start_3
    const-string v3, "removeAccount"

    const-string v5, "SettingAccount"

    invoke-static {v3, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 100
    .local v2, "manager":Landroid/accounts/AccountManager;
    const-string v3, "com.samsung.android.coreapps"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 103
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v3, v1

    if-lez v3, :cond_4b

    .line 104
    new-instance v0, Landroid/accounts/Account;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v5, "com.samsung.android.coreapps"

    invoke-direct {v0, v3, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v0, "account":Landroid/accounts/Account;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeAccount : accounts[0].name = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v5, v1, v5

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SettingAccount"

    invoke-static {v3, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/setting/SettingAccount;->removeContactAgentDB()V

    .line 113
    const/4 v3, 0x0

    invoke-virtual {v2, v0, p0, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 118
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_4b
    const-string v3, "add_account_number"

    const-string v5, ""

    invoke-static {v3, v5}, Lcom/samsung/android/coreapps/common/util/CommonPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$Auth;->remove(Landroid/content/Context;)V

    .line 120
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$ServiceStatus;->remove(Landroid/content/Context;)V

    .line 121
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$JoinServiceStatus;->remove(Landroid/content/Context;)V

    .line 123
    const-string v3, "last_free_message_status"

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->remove(Ljava/lang/String;)V

    .line 125
    const-string v3, "last_heart_beat_time"

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->remove(Ljava/lang/String;)V

    .line 126
    const-string v3, "heart_beat_interval"

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->remove(Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/transaction/HeartBeatTransaction;->cancel()V

    .line 129
    const-string v3, "policy_check_interval"

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->remove(Ljava/lang/String;)V

    .line 130
    const-string v3, "last_policy_check_time"

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->remove(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->cancel()V

    .line 133
    const-string v3, "gcm_regId"

    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/CommonPref;->remove(Ljava/lang/String;)V

    .line 134
    const-string v3, "spp_regId"

    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/CommonPref;->remove(Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_3 .. :try_end_90} :catchall_92

    .line 135
    monitor-exit v4

    return-void

    .line 97
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "manager":Landroid/accounts/AccountManager;
    :catchall_92
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static removeContactAgentDB()V
    .registers 8

    .prologue
    .line 139
    const-string v4, "removeContactAgentDB start!"

    const-string v5, "SettingAccount"

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "com.samsung.android.coreapps.contact.sync.AgentQueryHelper"

    .line 143
    .local v0, "CLASS_NAME":Ljava/lang/String;
    :try_start_9
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 144
    .local v1, "classAgentQueryHelper":Ljava/lang/Class;
    const-string v4, "clearLocalDB"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 148
    .local v2, "methodClearLocalDB":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v4, "removeContactAgentDB invoked!"

    const-string v5, "SettingAccount"

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_33} :catch_3b

    .line 158
    .end local v1    # "classAgentQueryHelper":Ljava/lang/Class;
    .end local v2    # "methodClearLocalDB":Ljava/lang/reflect/Method;
    :goto_33
    const-string v4, "removeContactAgentDB end!"

    const-string v5, "SettingAccount"

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void

    .line 152
    :catch_3b
    move-exception v3

    .line 153
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "removeContactAgentDB Exception!!"

    const-string v5, "SettingAccount"

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_33
.end method
