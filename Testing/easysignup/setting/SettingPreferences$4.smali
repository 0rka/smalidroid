.class Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$4;
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
    .line 462
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$4;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 12
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 467
    check-cast p1, Landroid/preference/SwitchPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 468
    .local v2, "isChecked":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProfileSync isChecked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    if-nez v2, :cond_59

    .line 470
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$4;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$700(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getContactSyncAgreement(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 471
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$4;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showProgressBar()V
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$900(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    .line 472
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$4;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$700(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->serviceOn(Landroid/content/Context;I)V

    .line 489
    :goto_3b
    return v8

    .line 474
    :cond_3c
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.coreapps.easysignup.ACTION_CONTACT_SYNC_AGREEMENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "extra_sync_now"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 477
    :try_start_48
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$4;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$4;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->REQUEST_CODE_CONTACT_SYNC_AGREEMENT:I
    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$1000(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_53
    .catch Landroid/content/ActivityNotFoundException; {:try_start_48 .. :try_end_53} :catch_54

    goto :goto_3b

    .line 478
    :catch_54
    move-exception v0

    .line 479
    .local v0, "ane":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3b

    .line 483
    .end local v0    # "ane":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_59
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$4;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$4;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    sget v5, Lcom/samsung/android/coreapps/easysignup/R$string;->profile_sharing:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$4;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    sget v6, Lcom/samsung/android/coreapps/easysignup/R$string;->profile_sharing_switch_popup_body:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$4;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    sget v7, Lcom/samsung/android/coreapps/easysignup/R$string;->ok:I

    invoke-virtual {v6, v7}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3ea

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_3b
.end method
