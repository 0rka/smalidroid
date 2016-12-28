.class Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$15;
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
    .line 1061
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$15;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 1064
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$15;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 1065
    .local v2, "am":Landroid/accounts/AccountManager;
    const-string v4, "com.samsung.android.coreapps"

    invoke-virtual {v2, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1066
    .local v1, "accounts":[Landroid/accounts/Account;
    if-eqz v1, :cond_34

    array-length v4, v1

    if-lez v4, :cond_34

    .line 1067
    const/4 v4, 0x0

    aget-object v0, v1, v4

    .line 1068
    .local v0, "account":Landroid/accounts/Account;
    const-string v4, "com.android.contacts"

    invoke-static {v0, v4}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34

    const-string v4, "com.android.contacts"

    invoke-static {v0, v4}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 1070
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1071
    .local v3, "extras":Landroid/os/Bundle;
    const-string v4, "force"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1072
    const-string v4, "com.android.contacts"

    invoke-static {v0, v4, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1075
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_34
    return v5
.end method
