.class Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$16;
.super Ljava/lang/Object;
.source "SettingPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->makeRegiInfoList(Landroid/preference/PreferenceCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V
    .registers 2

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$16;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 1097
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$16;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mIsOnSamsungAccountScreen:Z
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$1900(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1098
    const-string v2, "already samsung account screen"

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    :goto_10
    return v4

    .line 1102
    :cond_11
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1103
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "samsungaccount://MainPage"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1104
    const v2, 0x14000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1106
    :try_start_27
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$16;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$16;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->REQUEST_CODE_SAMSUNG_ACCOUNT:I
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$2000(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1107
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$16;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    const/4 v3, 0x1

    # setter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mIsOnSamsungAccountScreen:Z
    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$1902(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;Z)Z
    :try_end_38
    .catch Landroid/content/ActivityNotFoundException; {:try_start_27 .. :try_end_38} :catch_40

    .line 1112
    :goto_38
    const-string v2, "Samsung Account MainPage"

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1108
    :catch_40
    move-exception v0

    .line 1109
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ActivityNotFoundException"

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method
