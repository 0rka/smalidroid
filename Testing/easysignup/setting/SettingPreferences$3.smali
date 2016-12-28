.class Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$3;
.super Ljava/lang/Object;
.source "SettingPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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
    .line 397
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$3;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 400
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 401
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$3;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    const-class v3, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 404
    :try_start_15
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$3;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$3;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->REQUEST_CODE_CHECK_UPGRADE:I
    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$800(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_20
    .catch Landroid/content/ActivityNotFoundException; {:try_start_15 .. :try_end_20} :catch_22

    .line 409
    const/4 v2, 0x1

    :goto_21
    return v2

    .line 405
    :catch_22
    move-exception v0

    .line 406
    .local v0, "ane":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 407
    const/4 v2, 0x0

    goto :goto_21
.end method
