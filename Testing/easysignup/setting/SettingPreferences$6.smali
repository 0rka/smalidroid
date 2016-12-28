.class Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$6;
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
    .line 514
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$6;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 518
    check-cast p1, Landroid/preference/SwitchPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 520
    .local v0, "isChecked":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSHARE isChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    if-nez v0, :cond_31

    .line 523
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$6;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showProgressBar()V
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$900(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    .line 524
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$6;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$700(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->serviceOn(Landroid/content/Context;I)V

    .line 532
    :goto_2f
    const/4 v1, 0x0

    return v1

    .line 526
    :cond_31
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$6;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$6;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    sget v3, Lcom/samsung/android/coreapps/easysignup/R$string;->simple_sharing:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$6;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    sget v4, Lcom/samsung/android/coreapps/easysignup/R$string;->simple_sharing_off_notice:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$6;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    sget v5, Lcom/samsung/android/coreapps/easysignup/R$string;->ok:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3e9

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_2f
.end method
