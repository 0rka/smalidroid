.class Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$1;
.super Ljava/lang/Object;
.source "SettingPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;
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
    .line 139
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$1;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 142
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v0, "marketing_agreement"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 144
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$1;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mReceiveMarketing:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$000(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->updateGuiOnly()V

    .line 146
    :cond_29
    return-void
.end method
