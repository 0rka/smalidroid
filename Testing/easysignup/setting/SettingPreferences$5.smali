.class Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$5;
.super Ljava/lang/Object;
.source "SettingPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->initializePreferences()V
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
    .line 497
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$5;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$5;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spMessagePro:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$5;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->isDefaultSmsApp()Z
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$1100(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 502
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$5;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->setDefaultSmsApp()V
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$1200(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    .line 506
    :goto_17
    const/4 v0, 0x0

    return v0

    .line 504
    :cond_19
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$5;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->changeMessageProStatus()V
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$1300(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    goto :goto_17
.end method
