.class public Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;
.super Lcom/samsung/android/coreapps/common/ui/BasePreferenceActivity;
.source "SettingPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final MMS_APP_PACKAGE:Ljava/lang/String; = "com.android.mms"

.field private static final PREF_SETTING_DO_UPDATE:Ljava/lang/String; = "setting_do_update"

.field private static final PREF_SETTING_FEATURE_SETTING_CATEGORY:Ljava/lang/String; = "setting_feature_settings"

.field private static final PREF_SETTING_HELP_CATEGORY:Ljava/lang/String; = "setting_help_settings"

.field private static final PREF_SETTING_PREFERENCES:Ljava/lang/String; = "pref_setting_pref_screen"

.field private static final PREF_SETTING_RECEIVE_MARKETING_INFO:Ljava/lang/String; = "setting_receive_marketing_info"

.field private static final PREF_SETTING_REGISTERED_INFO_CATEGORY:Ljava/lang/String; = "setting_registered_info"

.field private static final PREF_SETTING_SIM_LIST:Ljava/lang/String; = "sim_list"

.field private static final PREF_SETTING_SOFTWARE_UPDATE:Ljava/lang/String; = "setting_software_update"

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private REQUEST_CODE_CHANGE_DEFAULT_SMS:I

.field private REQUEST_CODE_CHECK_UPGRADE:I

.field private REQUEST_CODE_CONTACT_SYNC_AGREEMENT:I

.field private REQUEST_CODE_DELETE_ACCOUNT:I

.field private REQUEST_CODE_SAMSUNG_ACCOUNT:I

.field private final TOKEN_DEAUTH:I

.field private final TOKEN_PROFILE_SHARING_OFF:I

.field private final TOKEN_SIMPLE_SHARING_OFF:I

.field private deregi_imsi_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field doUpdate:Lcom/samsung/android/coreapps/easysignup/setting/SettingSelfUpdate;

.field private fromExternalAccess:Z

.field private mActionBar:Landroid/app/ActionBar;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mIsOnSamsungAccountScreen:Z

.field private mNeedSkipInitialize:Z

.field private mPrefChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressDialogTimer:Landroid/os/CountDownTimer;

.field private mReAuth:Z

.field private mReceiveMarketing:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mServicePreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/preference/SwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private pcRegisteredInfo:Landroid/preference/PreferenceCategory;

.field private psSettingPreferences:Landroid/preference/PreferenceScreen;

.field private serviceId:I

.field spEasyShare:Landroid/preference/SwitchPreference;

.field spMessagePro:Landroid/preference/SwitchPreference;

.field spProfileSync:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    const-class v0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/coreapps/common/ui/BasePreferenceActivity;-><init>()V

    .line 95
    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->REQUEST_CODE_DELETE_ACCOUNT:I

    .line 96
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->REQUEST_CODE_CHANGE_DEFAULT_SMS:I

    .line 97
    const/16 v0, 0x190

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->REQUEST_CODE_CHECK_UPGRADE:I

    .line 98
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->REQUEST_CODE_SAMSUNG_ACCOUNT:I

    .line 99
    const/16 v0, 0x258

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->REQUEST_CODE_CONTACT_SYNC_AGREEMENT:I

    .line 101
    iput-boolean v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->fromExternalAccess:Z

    .line 109
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TOKEN_DEAUTH:I

    .line 110
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TOKEN_SIMPLE_SHARING_OFF:I

    .line 111
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TOKEN_PROFILE_SHARING_OFF:I

    .line 120
    iput-boolean v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mReAuth:Z

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mServicePreferenceMap:Ljava/util/Map;

    .line 136
    iput-boolean v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mNeedSkipInitialize:Z

    .line 137
    iput-boolean v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mIsOnSamsungAccountScreen:Z

    .line 139
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$1;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mPrefChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 149
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mReceiveMarketing:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Landroid/preference/PreferenceCategory;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->pcRegisteredInfo:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    .prologue
    .line 73
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->REQUEST_CODE_CONTACT_SYNC_AGREEMENT:I

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->isDefaultSmsApp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->setDefaultSmsApp()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->changeMessageProStatus()V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->changeSdkServiceStatus(IZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->deregi_imsi_list:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->requestDeAuth(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mIsOnSamsungAccountScreen:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mIsOnSamsungAccountScreen:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;Landroid/preference/PreferenceCategory;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;
    .param p1, "x1"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->makeRegiInfoList(Landroid/preference/PreferenceCategory;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    .prologue
    .line 73
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->REQUEST_CODE_SAMSUNG_ACCOUNT:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->isServiceOn(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->dismissProgressBar()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mReAuth:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mServicePreferenceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    .prologue
    .line 73
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->REQUEST_CODE_CHECK_UPGRADE:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showProgressBar()V

    return-void
.end method

.method private addServiceSwitchPreference(Landroid/preference/PreferenceCategory;IZ)V
    .registers 12
    .param p1, "pcFeatureSetting"    # Landroid/preference/PreferenceCategory;
    .param p2, "sid"    # I
    .param p3, "isSDKService"    # Z

    .prologue
    const/4 v5, 0x1

    .line 547
    invoke-static {p2}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->getServiceAppInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 549
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_72

    .line 550
    const-string v6, "coreapps_service_name"

    invoke-static {v0, v6}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->readString(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, "name":Ljava/lang/String;
    const-string v6, "coreapps_service_description"

    invoke-static {v0, v6}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->readString(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "desc":Ljava/lang/String;
    const-string v6, "coreapps_service_setting_key_enabled"

    invoke-static {v0, v6}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->readString(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 554
    .local v3, "settingKeyEnabled":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sdk app info : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " desc "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->createSwitchPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v4

    .line 557
    .local v4, "sp":Landroid/preference/SwitchPreference;
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 558
    if-eqz p3, :cond_73

    .line 559
    const-string v5, "sdk_service_on_list"

    invoke-static {v5, p2}, Lcom/samsung/android/coreapps/easysignup/util/ServiceListManager;->findService(Ljava/lang/String;I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 562
    :goto_63
    invoke-direct {p0, v4, v3}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->setSettingEnabled(Landroid/preference/SwitchPreference;Ljava/lang/String;)V

    .line 563
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mServicePreferenceMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    invoke-direct {p0, v0, v4, p2}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->setServiceOnOffListener(Landroid/content/pm/ApplicationInfo;Landroid/preference/SwitchPreference;I)V

    .line 566
    .end local v1    # "desc":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "settingKeyEnabled":Ljava/lang/String;
    .end local v4    # "sp":Landroid/preference/SwitchPreference;
    :cond_72
    return-void

    .line 561
    .restart local v1    # "desc":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "settingKeyEnabled":Ljava/lang/String;
    .restart local v4    # "sp":Landroid/preference/SwitchPreference;
    :cond_73
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mContext:Landroid/content/Context;

    invoke-static {v6, p2}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getServiceStatus(Landroid/content/Context;I)I

    move-result v6

    if-ne v6, v5, :cond_7f

    :goto_7b
    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_63

    :cond_7f
    const/4 v5, 0x0

    goto :goto_7b
.end method

.method private changeMessageProStatus()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1135
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showProgressBar()V

    .line 1136
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spMessagePro:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 1137
    .local v0, "isChecked":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FREE_MESSAGE isChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    if-nez v0, :cond_2a

    .line 1140
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->serviceOn(Landroid/content/Context;I)V

    .line 1144
    :goto_29
    return-void

    .line 1142
    :cond_2a
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->serviceOff(Landroid/content/Context;I)V

    goto :goto_29
.end method

.method private changeSdkServiceStatus(IZ)V
    .registers 8
    .param p1, "sid"    # I
    .param p2, "serviceOn"    # Z

    .prologue
    .line 589
    if-eqz p2, :cond_49

    .line 590
    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_REQ_SERVICE_ON"

    .line 593
    .local v1, "intentName":Ljava/lang/String;
    :goto_4
    invoke-static {p1}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->getServiceAppInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 594
    .local v2, "packageName":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 598
    const-string v3, "com.samsung.android.coreapps.permission.ENHANCED_FEATURES"

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request service off "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    return-void

    .line 592
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentName":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_49
    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_REQ_SERVICE_OFF"

    .restart local v1    # "intentName":Ljava/lang/String;
    goto :goto_4
.end method

.method private createSwitchPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/SwitchPreference;
    .registers 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;

    .prologue
    .line 577
    new-instance v0, Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 578
    .local v0, "sp":Landroid/preference/SwitchPreference;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 579
    const-string v1, "OFF"

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 580
    const-string v1, "ON"

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 581
    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 583
    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 584
    return-object v0
.end method

.method private dismissProgressBar()V
    .registers 2

    .prologue
    .line 882
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 883
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 884
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 886
    :cond_c
    return-void
.end method

.method private isDefaultSmsApp()Z
    .registers 5

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1148
    .local v0, "defaultSmsApplication":Ljava/lang/String;
    const-string v2, "com.android.mms"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1149
    .local v1, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultSmsApplication ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    return v1
.end method

.method private isServiceOn(I)Z
    .registers 4
    .param p1, "serviceId"    # I

    .prologue
    const/4 v0, 0x1

    .line 246
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getServiceStatus(Landroid/content/Context;I)I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private makeRegiInfoList(Landroid/preference/PreferenceCategory;)V
    .registers 9
    .param p1, "category"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 991
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getSAConnectedInfo()Ljava/lang/String;

    move-result-object v4

    .line 993
    .local v4, "saConnectedInfo":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 1044
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 1045
    .local v2, "psRegisterdNum":Landroid/preference/PreferenceScreen;
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1046
    .local v3, "registerdNumber":Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/coreapps/common/util/NumberUtils;->convertMsisdnToInternational(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    .local v0, "phoneNumber":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initializePreferences() registerdNumber : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    if-eqz v3, :cond_76

    .line 1050
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 1055
    :goto_38
    if-eqz v4, :cond_3d

    .line 1056
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1061
    :cond_3d
    new-instance v5, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$15;

    invoke-direct {v5, p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$15;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1079
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1082
    if-nez v4, :cond_75

    .line 1083
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 1085
    .local v1, "psConnectWithSA":Landroid/preference/PreferenceScreen;
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/sdl/CscFeatureRef;->isJpnGalaxyFeature()Z

    move-result v5

    if-eqz v5, :cond_80

    .line 1086
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$string;->if_you_have_samsung_account_jpn:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1088
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$string;->connect_with_sa_jpn:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 1094
    :goto_6a
    new-instance v5, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$16;

    invoke-direct {v5, p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$16;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1117
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1120
    .end local v1    # "psConnectWithSA":Landroid/preference/PreferenceScreen;
    :cond_75
    return-void

    .line 1052
    :cond_76
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$string;->no_results:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_38

    .line 1090
    .restart local v1    # "psConnectWithSA":Landroid/preference/PreferenceScreen;
    :cond_80
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$string;->if_you_have_samsung_account:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1092
    sget v5, Lcom/samsung/android/coreapps/easysignup/R$string;->connect_with_sa:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_6a
.end method

.method private marketingInfoClickListner()V
    .registers 9

    .prologue
    .line 647
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    if-ge v4, v6, :cond_3c

    .line 648
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 649
    .local v0, "lo1l":Landroid/preference/Preference;
    instance-of v6, v0, Landroid/preference/PreferenceCategory;

    if-eqz v6, :cond_40

    move-object v1, v0

    .line 650
    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 651
    .local v1, "lol":Landroid/preference/PreferenceCategory;
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_1b
    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v6

    if-ge v5, v6, :cond_40

    .line 652
    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 653
    .local v3, "pref":Landroid/preference/Preference;
    const-string v6, "setting_receive_marketing_info"

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    move-object v2, v3

    .line 654
    check-cast v2, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    .line 655
    .local v2, "marketingInfo":Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;
    new-instance v6, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$9;

    invoke-direct {v6, p0, v2}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$9;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)V

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 670
    .end local v0    # "lo1l":Landroid/preference/Preference;
    .end local v1    # "lol":Landroid/preference/PreferenceCategory;
    .end local v2    # "marketingInfo":Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;
    .end local v3    # "pref":Landroid/preference/Preference;
    .end local v5    # "y":I
    :cond_3c
    return-void

    .line 651
    .restart local v0    # "lo1l":Landroid/preference/Preference;
    .restart local v1    # "lol":Landroid/preference/PreferenceCategory;
    .restart local v3    # "pref":Landroid/preference/Preference;
    .restart local v5    # "y":I
    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 647
    .end local v1    # "lol":Landroid/preference/PreferenceCategory;
    .end local v3    # "pref":Landroid/preference/Preference;
    .end local v5    # "y":I
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private requestDeAuth(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 792
    .local p1, "imsi_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 793
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "imsi_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 794
    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 796
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showProgressBar()V

    .line 797
    return-void
.end method

.method private setDefaultSmsApp()V
    .registers 5

    .prologue
    .line 1154
    const-string v2, "changing default sms to com.android.mms"

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1156
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "package"

    const-string v3, "com.android.mms"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1158
    :try_start_15
    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->REQUEST_CODE_CHANGE_DEFAULT_SMS:I

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_15 .. :try_end_1a} :catch_1b

    .line 1162
    :goto_1a
    return-void

    .line 1159
    :catch_1b
    move-exception v0

    .line 1160
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ActivityNotFoundException"

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method private setPrefSummary(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .registers 8
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "subtext"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1123
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1124
    .local v0, "summary":Landroid/text/Spannable;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/coreapps/easysignup/R$color;->pref_secondary:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v0, v1, v4, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1125
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1126
    return-void
.end method

.method private setPrefSummary(Landroid/preference/SwitchPreference;Ljava/lang/String;)V
    .registers 8
    .param p1, "prefScreen"    # Landroid/preference/SwitchPreference;
    .param p2, "subtext"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1129
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1130
    .local v0, "summary":Landroid/text/Spannable;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/coreapps/easysignup/R$color;->pref_secondary:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v0, v1, v4, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1131
    invoke-virtual {p1, v0}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1132
    return-void
.end method

.method private setServiceOnOffListener(Landroid/content/pm/ApplicationInfo;Landroid/preference/SwitchPreference;I)V
    .registers 5
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "switchPref"    # Landroid/preference/SwitchPreference;
    .param p3, "serviceId"    # I

    .prologue
    .line 603
    if-nez p2, :cond_3

    .line 644
    :goto_2
    return-void

    .line 606
    :cond_3
    invoke-static {p3}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->isSDKService(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 607
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$7;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$7;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;Landroid/preference/SwitchPreference;ILandroid/content/pm/ApplicationInfo;)V

    invoke-virtual {p2, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2

    .line 629
    :cond_12
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$8;

    invoke-direct {v0, p0, p2, p3}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$8;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;Landroid/preference/SwitchPreference;I)V

    invoke-virtual {p2, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2
.end method

.method private setSettingEnabled(Landroid/preference/SwitchPreference;Ljava/lang/String;)V
    .registers 5
    .param p1, "sp"    # Landroid/preference/SwitchPreference;
    .param p2, "settingKeyEnabled"    # Ljava/lang/String;

    .prologue
    .line 569
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 574
    :cond_6
    :goto_6
    return-void

    .line 571
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6

    .line 572
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_6
.end method

.method private showProgressBar()V
    .registers 7

    .prologue
    const-wide/16 v2, 0xbb8

    const/4 v4, 0x0

    .line 837
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->dismissProgressBar()V

    .line 839
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 840
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 842
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mProgressDialog:Landroid/app/ProgressDialog;

    sget v1, Lcom/samsung/android/coreapps/easysignup/R$string;->in_progress:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 843
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 844
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$10;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 862
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 863
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 865
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mProgressDialogTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_40

    .line 866
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mProgressDialogTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 867
    :cond_40
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$11;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$11;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;JJ)V

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$11;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mProgressDialogTimer:Landroid/os/CountDownTimer;

    .line 879
    :cond_4d
    return-void
.end method


# virtual methods
.method public getSAConnectedInfo()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 367
    const/4 v0, 0x0

    .line 369
    .local v0, "connectedInfo":Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 370
    .local v2, "manager":Landroid/accounts/AccountManager;
    const-string v3, "com.osp.app.signin"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 372
    .local v1, "mAccount":[Landroid/accounts/Account;
    array-length v3, v1

    if-lez v3, :cond_78

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/sdl/CscFeatureRef;->isJpnGalaxyFeature()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/samsung/android/coreapps/easysignup/R$string;->samsung_account_id_jpn:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    :goto_60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializePreferences() connectedInfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_78
    return-object v0

    .line 378
    :cond_79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/samsung/android/coreapps/easysignup/R$string;->samsung_account_id:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_60
.end method

.method public initializePreferences()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 388
    const-string v4, "###initializePreferences()"

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v4, "pref_setting_pref_screen"

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->psSettingPreferences:Landroid/preference/PreferenceScreen;

    .line 391
    const-string v4, "setting_registered_info"

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->pcRegisteredInfo:Landroid/preference/PreferenceCategory;

    .line 392
    const-string v4, "setting_feature_settings"

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 394
    .local v1, "pcFeatureSetting":Landroid/preference/PreferenceCategory;
    const-string v4, "setting_receive_marketing_info"

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    iput-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mReceiveMarketing:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    .line 396
    const-string v4, "setting_do_update"

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/coreapps/easysignup/setting/SettingSelfUpdate;

    iput-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->doUpdate:Lcom/samsung/android/coreapps/easysignup/setting/SettingSelfUpdate;

    .line 397
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->doUpdate:Lcom/samsung/android/coreapps/easysignup/setting/SettingSelfUpdate;

    new-instance v5, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$3;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingSelfUpdate;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 413
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->marketingInfoClickListner()V

    .line 415
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->pcRegisteredInfo:Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_4f

    .line 416
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->pcRegisteredInfo:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->makeRegiInfoList(Landroid/preference/PreferenceCategory;)V

    .line 419
    :cond_4f
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mServicePreferenceMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 420
    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 422
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getJoinServices(Landroid/content/Context;)[I

    move-result-object v3

    .line 424
    .local v3, "serviceIds":[I
    if-nez v3, :cond_67

    .line 425
    const-string v4, "error no join service list"

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_66
    :goto_66
    return-void

    .line 429
    :cond_67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_68
    array-length v4, v3

    if-ge v0, v4, :cond_10f

    .line 430
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mContext:Landroid/content/Context;

    aget v5, v3, v0

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v4

    if-eq v4, v6, :cond_92

    .line 431
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "feature off, hide : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_8f
    :goto_8f
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 435
    :cond_92
    aget v4, v3, v0

    const/4 v5, 0x4

    if-ge v4, v5, :cond_8f

    .line 436
    aget v4, v3, v0

    if-ne v4, v6, :cond_c4

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v4

    if-ltz v4, :cond_c4

    .line 438
    sget v4, Lcom/samsung/android/coreapps/easysignup/R$string;->enhanced_messaging:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/samsung/android/coreapps/easysignup/R$string;->enhanced_messaging_switch_desc:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->createSwitchPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spMessagePro:Landroid/preference/SwitchPreference;

    .line 439
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spMessagePro:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 440
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spMessagePro:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v6}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->isServiceOn(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_8f

    .line 441
    :cond_c4
    aget v4, v3, v0

    if-nez v4, :cond_ea

    .line 442
    sget v4, Lcom/samsung/android/coreapps/easysignup/R$string;->profile_sharing:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/samsung/android/coreapps/easysignup/R$string;->profile_sharing_switch_desc:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->createSwitchPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spProfileSync:Landroid/preference/SwitchPreference;

    .line 443
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spProfileSync:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 444
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spProfileSync:Landroid/preference/SwitchPreference;

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->isServiceOn(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_8f

    .line 445
    :cond_ea
    aget v4, v3, v0

    if-ne v4, v7, :cond_8f

    .line 446
    sget v4, Lcom/samsung/android/coreapps/easysignup/R$string;->simple_sharing:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/samsung/android/coreapps/easysignup/R$string;->simple_sharing_switch_desc:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->createSwitchPreference(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spEasyShare:Landroid/preference/SwitchPreference;

    .line 447
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spEasyShare:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 448
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spEasyShare:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v7}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->isServiceOn(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_8f

    .line 453
    :cond_10f
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->getSDKServiceList()Ljava/util/ArrayList;

    move-result-object v2

    .line 454
    .local v2, "sdkServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    :goto_114
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_12a

    .line 455
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v1, v4, v6}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->addServiceSwitchPreference(Landroid/preference/PreferenceCategory;IZ)V

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_114

    .line 458
    :cond_12a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "###initializePreferences() serviceId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->serviceId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " # fromExternalAccess : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->fromExternalAccess:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->serviceId:I

    if-gez v4, :cond_18a

    iget-boolean v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->fromExternalAccess:Z

    if-nez v4, :cond_18a

    .line 461
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spProfileSync:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_166

    .line 462
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spProfileSync:Landroid/preference/SwitchPreference;

    new-instance v5, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$4;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 495
    :cond_166
    invoke-static {p0, v6}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v4

    if-ltz v4, :cond_17a

    .line 496
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spMessagePro:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_17a

    .line 497
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spMessagePro:Landroid/preference/SwitchPreference;

    new-instance v5, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$5;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 513
    :cond_17a
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spEasyShare:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_66

    .line 514
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spEasyShare:Landroid/preference/SwitchPreference;

    new-instance v5, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$6;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_66

    .line 538
    :cond_18a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "###initializePreferences() remove pcFeatureSetting serviceId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->serviceId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->psSettingPreferences:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_66

    .line 540
    const-string v4, "###initializePreferences() remove success. "

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->psSettingPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_66
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 674
    const-string v2, "###onActivityResult()"

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->REQUEST_CODE_DELETE_ACCOUNT:I

    if-ne p1, v2, :cond_1c

    .line 676
    if-eqz p3, :cond_1b

    .line 677
    const-string v2, "imsi_list"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 678
    .local v0, "imsi_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->deregi_imsi_list:Ljava/util/ArrayList;

    .line 679
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->deregi_imsi_list:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->requestDeAuth(Ljava/util/ArrayList;)V

    .line 727
    .end local v0    # "imsi_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1b
    :goto_1b
    return-void

    .line 681
    :cond_1c
    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->REQUEST_CODE_CHANGE_DEFAULT_SMS:I

    if-ne p1, v2, :cond_66

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 683
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "changeDefaultSMS res : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    packed-switch p2, :pswitch_data_c8

    .line 696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RESULT_UNDEFINED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    :goto_4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 687
    :pswitch_57
    const-string v2, "RESULT_OK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->changeMessageProStatus()V

    goto :goto_4d

    .line 692
    :pswitch_60
    const-string v2, "RESULT_CANCELLED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 701
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_66
    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->REQUEST_CODE_CHECK_UPGRADE:I

    if-ne p1, v2, :cond_a8

    .line 702
    const-string v2, "setting preference finish REQUEST_CODE_CHECK_UPGRADE"

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    packed-switch p2, :pswitch_data_d0

    .line 716
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RESULT_UNDEFINED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 705
    :pswitch_8d
    const-string v2, "RESULT_OK"

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->setResult(I)V

    .line 707
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->finish()V

    goto :goto_1b

    .line 711
    :pswitch_9c
    const-string v2, "RESULT_CANCELED"

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->setResult(I)V

    goto/16 :goto_1b

    .line 719
    :cond_a8
    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->REQUEST_CODE_SAMSUNG_ACCOUNT:I

    if-ne p1, v2, :cond_ba

    .line 720
    const-string v2, "samsung account finished"

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iput-boolean v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mIsOnSamsungAccountScreen:Z

    .line 722
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mNeedSkipInitialize:Z

    goto/16 :goto_1b

    .line 723
    :cond_ba
    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->REQUEST_CODE_CONTACT_SYNC_AGREEMENT:I

    if-ne p1, v2, :cond_1b

    .line 724
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showProgressBar()V

    .line 725
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->serviceOn(Landroid/content/Context;I)V

    goto/16 :goto_1b

    .line 685
    :pswitch_data_c8
    .packed-switch -0x1
        :pswitch_57
        :pswitch_60
    .end packed-switch

    .line 703
    :pswitch_data_d0
    .packed-switch -0x1
        :pswitch_8d
        :pswitch_9c
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v3, 0x400

    .line 338
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BasePreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 340
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_21

    .line 341
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 347
    :goto_19
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mActionBar:Landroid/app/ActionBar;

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->registered_information:I

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 348
    return-void

    .line 345
    :cond_21
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_19
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x2

    const/16 v11, 0x400

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 251
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 253
    iput-object p0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mContext:Landroid/content/Context;

    .line 255
    const-string v6, "###onCreate()"

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mActionBar:Landroid/app/ActionBar;

    .line 257
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 258
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 259
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mActionBar:Landroid/app/ActionBar;

    sget v7, Lcom/samsung/android/coreapps/easysignup/R$string;->registered_information:I

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setTitle(I)V

    .line 261
    sget v6, Lcom/samsung/android/coreapps/easysignup/R$xml;->setting_preferences:I

    invoke-virtual {p0, v6}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->addPreferencesFromResource(I)V

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 267
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_144

    .line 268
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_126

    .line 271
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAction : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v6, "com.samsung.android.coreapps.easysignup.ACTION_ACCESS_SETTING"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    .line 273
    const-string v6, "extra_setting_access_agent"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->serviceId:I

    .line 274
    iput-boolean v10, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->fromExternalAccess:Z

    .line 275
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "serviceId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->serviceId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .end local v0    # "action":Ljava/lang/String;
    :goto_82
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 295
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v6, "com.samsung.android.coreapps.easysignup.ACTION_AUTH_RESULT"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v6, "com.samsung.android.coreapps.easysignup.ACTION_DEAUTH_RESULT"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v6, "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_ON_RESULT"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v6, "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_OFF_RESULT"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string v6, "com.samsung.android.coreapps.easysignup.ACTION_POLICY_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v6, "com.samsung.android.coreapps.easysignup.ACTION_SDK_SERVICE_ON"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v6, "com.samsung.android.coreapps.easysignup.ACTION_SDK_SERVICE_OFF"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 304
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->deregi_imsi_list:Ljava/util/ArrayList;

    .line 306
    invoke-direct {p0, v12}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->isServiceOn(I)Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 307
    const-string v6, "RSON"

    const-string v7, "true"

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/SLog;->single(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_c3
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 311
    .local v5, "window":Landroid/view/Window;
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v12, :cond_162

    .line 312
    invoke-virtual {v5, v11, v11}, Landroid/view/Window;->setFlags(II)V

    .line 318
    :goto_d6
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mPrefChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->registerOnChangedListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 320
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->isInvalidServer()Z

    move-result v6

    if-eqz v6, :cond_167

    .line 321
    const-string v6, "invalid server error"

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iput-boolean v10, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mReAuth:Z

    .line 323
    sget v6, Lcom/samsung/android/coreapps/easysignup/R$string;->deregister:I

    invoke-virtual {p0, v6}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/samsung/android/coreapps/easysignup/R$string;->deregister_invalid_server_dialog_body:I

    invoke-virtual {p0, v7}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/samsung/android/coreapps/easysignup/R$string;->ok:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showInvalidServerAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 334
    :cond_107
    :goto_107
    return-void

    .line 277
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "window":Landroid/view/Window;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_108
    iput v8, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->serviceId:I

    .line 278
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#1# serviceId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->serviceId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_82

    .line 285
    :cond_126
    iput v8, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->serviceId:I

    .line 286
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#2# serviceId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->serviceId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_82

    .line 289
    .end local v0    # "action":Ljava/lang/String;
    :cond_144
    iput v8, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->serviceId:I

    .line 290
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#3# serviceId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->serviceId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_82

    .line 316
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    .restart local v5    # "window":Landroid/view/Window;
    :cond_162
    invoke-virtual {v5, v11}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_d6

    .line 324
    :cond_167
    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->isJoined(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_107

    .line 325
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->finish()V

    .line 326
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v3, "i":Landroid/content/Intent;
    const-string v6, "AuthRequestFrom"

    const-string v7, "setting"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    :try_start_180
    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->startActivity(Landroid/content/Intent;)V
    :try_end_183
    .catch Landroid/content/ActivityNotFoundException; {:try_start_180 .. :try_end_183} :catch_184

    goto :goto_107

    .line 330
    :catch_184
    move-exception v1

    .line 331
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "ActivityNotFoundException"

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_107
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/coreapps/easysignup/R$menu;->setting:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 755
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BasePreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 352
    invoke-super {p0}, Lcom/samsung/android/coreapps/common/ui/BasePreferenceActivity;->onDestroy()V

    .line 353
    const-string v0, "onDestroy"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->dismissProgressBar()V

    .line 356
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 358
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 359
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mAlertDialog:Landroid/app/AlertDialog;

    .line 363
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mPrefChangedListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->unregisterOnChangedListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 364
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 761
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 762
    .local v0, "id":I
    sget v2, Lcom/samsung/android/coreapps/easysignup/R$id;->deregister:I

    if-ne v0, v2, :cond_6e

    .line 763
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/network/NetState;->getNetState(Landroid/content/Context;)I

    move-result v1

    .line 764
    .local v1, "netState":I
    const/4 v2, -0x3

    if-eq v2, v1, :cond_19

    const/4 v2, -0x2

    if-ne v2, v1, :cond_27

    .line 765
    :cond_19
    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->unable_to_connect_to_the_network:I

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 788
    .end local v1    # "netState":I
    :cond_22
    :goto_22
    invoke-super {p0, p1}, Lcom/samsung/android/coreapps/common/ui/BasePreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 776
    .restart local v1    # "netState":I
    :cond_27
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->deregi_imsi_list:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/sdl/CscFeatureRef;->isJpnGalaxyFeature()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 778
    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->deregister:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/samsung/android/coreapps/easysignup/R$string;->deregister_dialog_body_jpn:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/samsung/android/coreapps/easysignup/R$string;->deregister_ok:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_22

    .line 780
    :cond_52
    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->deregister:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/samsung/android/coreapps/easysignup/R$string;->deregister_dialog_body:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/samsung/android/coreapps/easysignup/R$string;->deregister_ok:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_22

    .line 784
    .end local v1    # "netState":I
    :cond_6e
    const v2, 0x102002c

    if-ne v0, v2, :cond_22

    .line 785
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->onBackPressed()V

    goto :goto_22
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 746
    invoke-super {p0}, Lcom/samsung/android/coreapps/common/ui/BasePreferenceActivity;->onPause()V

    .line 747
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mStatusChangeListenerHandle:Ljava/lang/Object;

    if-eqz v0, :cond_f

    .line 748
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 751
    :cond_f
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 801
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 731
    invoke-super {p0}, Lcom/samsung/android/coreapps/common/ui/BasePreferenceActivity;->onResume()V

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "###onResume() SAConnectedInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getSAConnectedInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mNeedSkipInitialize:Z

    if-eqz v0, :cond_30

    .line 734
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mNeedSkipInitialize:Z

    .line 739
    :goto_26
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->doUpdate:Lcom/samsung/android/coreapps/easysignup/setting/SettingSelfUpdate;

    if-eqz v0, :cond_2f

    .line 740
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->doUpdate:Lcom/samsung/android/coreapps/easysignup/setting/SettingSelfUpdate;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingSelfUpdate;->updateText()V

    .line 742
    :cond_2f
    return-void

    .line 736
    :cond_30
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->initializePreferences()V

    goto :goto_26
.end method

.method protected showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .registers 9
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "btnMessage"    # Ljava/lang/CharSequence;
    .param p4, "token"    # I

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->dismissProgressBar()V

    .line 890
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 891
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 894
    :cond_14
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 895
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$13;

    invoke-direct {v2, p0, p4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$13;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;I)V

    invoke-virtual {v1, p3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->cancel:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$12;

    invoke-direct {v3, p0, p4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$12;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 951
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mAlertDialog:Landroid/app/AlertDialog;

    .line 952
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 954
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_4a
    return-void
.end method

.method protected showInvalidServerAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .registers 8
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "btnMessage"    # Ljava/lang/CharSequence;
    .param p4, "token"    # I

    .prologue
    .line 957
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->dismissProgressBar()V

    .line 958
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 959
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 962
    :cond_14
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_41

    .line 963
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$14;

    invoke-direct {v2, p0, p4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$14;-><init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;I)V

    invoke-virtual {v1, p3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 984
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mAlertDialog:Landroid/app/AlertDialog;

    .line 985
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 986
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 988
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_41
    return-void
.end method
