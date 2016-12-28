.class Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$9;
.super Ljava/lang/Object;
.source "SettingPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->marketingInfoClickListner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

.field final synthetic val$marketingInfo:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)V
    .registers 3

    .prologue
    .line 655
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$9;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$9;->val$marketingInfo:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 659
    const-string v0, "Marketing preference click listner..."

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$9;->val$marketingInfo:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->updateCheckMarket()V

    .line 661
    const/4 v0, 0x0

    return v0
.end method
