.class Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$8;
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

.field final synthetic val$serviceId:I

.field final synthetic val$switchPref:Landroid/preference/SwitchPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;Landroid/preference/SwitchPreference;I)V
    .registers 4

    .prologue
    .line 629
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$8;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$8;->val$switchPref:Landroid/preference/SwitchPreference;

    iput p3, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$8;->val$serviceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$8;->val$switchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isChecked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$8;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showProgressBar()V
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$900(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    .line 635
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p2, v0, :cond_38

    .line 636
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$8;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$700(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$8;->val$serviceId:I

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->serviceOn(Landroid/content/Context;I)V

    .line 640
    :goto_36
    const/4 v0, 0x0

    return v0

    .line 638
    :cond_38
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$8;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$700(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$8;->val$serviceId:I

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->serviceOff(Landroid/content/Context;I)V

    goto :goto_36
.end method
