.class Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$7;
.super Ljava/lang/Object;
.source "SettingPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->setServiceOnOffListener(Landroid/content/pm/ApplicationInfo;Landroid/preference/SwitchPreference;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

.field final synthetic val$appInfo:Landroid/content/pm/ApplicationInfo;

.field final synthetic val$serviceId:I

.field final synthetic val$switchPref:Landroid/preference/SwitchPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;Landroid/preference/SwitchPreference;ILandroid/content/pm/ApplicationInfo;)V
    .registers 5

    .prologue
    .line 607
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$7;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$7;->val$switchPref:Landroid/preference/SwitchPreference;

    iput p3, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$7;->val$serviceId:I

    iput-object p4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$7;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$7;->val$switchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isChecked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p2, v2, :cond_35

    .line 612
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$7;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showProgressBar()V
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$900(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    .line 613
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$7;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget v3, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$7;->val$serviceId:I

    const/4 v4, 0x1

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->changeSdkServiceStatus(IZ)V
    invoke-static {v2, v3, v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$1400(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;IZ)V

    .line 625
    :goto_34
    return v5

    .line 615
    :cond_35
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$7;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    const-string v3, "coreapps_service_name"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->readString(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$7;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    const-string v3, "coreapps_service_off_popup"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->readString(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, "popupStr":Ljava/lang/String;
    if-eqz v1, :cond_57

    .line 618
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$7;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$7;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    sget v4, Lcom/samsung/android/coreapps/easysignup/R$string;->ok:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$7;->val$serviceId:I

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_34

    .line 620
    :cond_57
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$7;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showProgressBar()V
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$900(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    .line 621
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$7;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget v3, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$7;->val$serviceId:I

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->changeSdkServiceStatus(IZ)V
    invoke-static {v2, v3, v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$1400(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;IZ)V

    goto :goto_34
.end method
