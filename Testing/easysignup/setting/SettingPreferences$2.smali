.class Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;
.super Landroid/content/BroadcastReceiver;
.source "SettingPreferences.java"


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
    .line 149
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v11, -0x1

    const/4 v7, 0x1

    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "action":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mReceiver - action : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v9, "com.samsung.android.coreapps.easysignup.ACTION_AUTH_RESULT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_87

    .line 157
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->pcRegisteredInfo:Landroid/preference/PreferenceCategory;
    invoke-static {v10}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$100(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Landroid/preference/PreferenceCategory;

    move-result-object v10

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->makeRegiInfoList(Landroid/preference/PreferenceCategory;)V
    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$200(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;Landroid/preference/PreferenceCategory;)V

    .line 159
    const-string v9, "extra_auth_result"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 160
    .local v1, "authResult":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mReceiver - auth result : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    if-nez v1, :cond_86

    .line 162
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget-object v9, v9, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spProfileSync:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->isServiceOn(I)Z
    invoke-static {v10, v8}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$300(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;I)Z

    move-result v8

    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 163
    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget-object v8, v8, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spEasyShare:Landroid/preference/SwitchPreference;

    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->isServiceOn(I)Z
    invoke-static {v9, v12}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$300(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;I)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 164
    invoke-static {v7}, Lcom/samsung/android/coreapps/common/CommonFeature;->isSupportService(I)Z

    move-result v8

    if-eqz v8, :cond_86

    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget-object v8, v8, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spMessagePro:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_86

    .line 165
    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget-object v8, v8, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spMessagePro:Landroid/preference/SwitchPreference;

    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->isServiceOn(I)Z
    invoke-static {v9, v7}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$300(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;I)Z

    move-result v7

    invoke-virtual {v8, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 242
    .end local v1    # "authResult":I
    :cond_86
    :goto_86
    return-void

    .line 168
    :cond_87
    const-string v9, "com.samsung.android.coreapps.easysignup.ACTION_DEAUTH_RESULT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10a

    .line 169
    const-string v9, "extra_deauth_result"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 170
    .local v4, "result":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mReceiver - deAuth result : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    if-ne v4, v7, :cond_da

    .line 172
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->dismissProgressBar()V
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$400(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    .line 173
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    sget v10, Lcom/samsung/android/coreapps/easysignup/R$string;->esu_information:I

    invoke-virtual {v9, v10}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    sget v11, Lcom/samsung/android/coreapps/easysignup/R$string;->the_verification_has_failed:I

    invoke-virtual {v10, v11}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    sget v11, Lcom/samsung/android/coreapps/easysignup/R$string;->retry:I

    invoke-virtual {v10, v11}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x3e8

    invoke-virtual {v7, v9, v8, v10, v11}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_86

    .line 175
    :cond_da
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    invoke-virtual {v7, v11}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->setResult(I)V

    .line 176
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    invoke-virtual {v7}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->finish()V

    .line 178
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mReAuth:Z
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$500(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Z

    move-result v7

    if-eqz v7, :cond_86

    .line 179
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v3, "i":Landroid/content/Intent;
    const-string v7, "AuthRequestFrom"

    const-string v8, "setting"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    :try_start_fa
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    invoke-virtual {v7, v3}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->startActivity(Landroid/content/Intent;)V
    :try_end_ff
    .catch Landroid/content/ActivityNotFoundException; {:try_start_fa .. :try_end_ff} :catch_100

    goto :goto_86

    .line 183
    :catch_100
    move-exception v2

    .line 184
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v7, "ActivityNotFoundException"

    sget-object v8, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_86

    .line 188
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "result":I
    :cond_10a
    const-string v9, "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_ON_RESULT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11a

    const-string v9, "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_OFF_RESULT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e5

    .line 189
    :cond_11a
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->dismissProgressBar()V
    invoke-static {v9}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$400(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    .line 191
    const-string v9, "service_id"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 192
    .local v5, "serviceID":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "serviceID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v4, -0x1

    .line 195
    .restart local v4    # "result":I
    const-string v9, "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_ON_RESULT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_177

    .line 196
    const-string v9, "extra_service_on_result"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 200
    :cond_14c
    :goto_14c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    if-nez v4, :cond_1d4

    .line 203
    if-nez v5, :cond_186

    .line 204
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget-object v7, v7, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spProfileSync:Landroid/preference/SwitchPreference;

    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->isServiceOn(I)Z
    invoke-static {v9, v8}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$300(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;I)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_86

    .line 197
    :cond_177
    const-string v9, "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_OFF_RESULT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14c

    .line 198
    const-string v9, "extra_service_off_result"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    goto :goto_14c

    .line 205
    :cond_186
    if-ne v5, v7, :cond_1a3

    .line 206
    invoke-static {v7}, Lcom/samsung/android/coreapps/common/CommonFeature;->isSupportService(I)Z

    move-result v8

    if-eqz v8, :cond_86

    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget-object v8, v8, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spMessagePro:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_86

    .line 207
    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget-object v8, v8, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spMessagePro:Landroid/preference/SwitchPreference;

    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->isServiceOn(I)Z
    invoke-static {v9, v7}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$300(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;I)Z

    move-result v7

    invoke-virtual {v8, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_86

    .line 209
    :cond_1a3
    if-ne v5, v12, :cond_1b4

    .line 210
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget-object v7, v7, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->spEasyShare:Landroid/preference/SwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->isServiceOn(I)Z
    invoke-static {v8, v12}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$300(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;I)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_86

    .line 211
    :cond_1b4
    const/4 v7, 0x4

    if-le v5, v7, :cond_86

    .line 212
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mServicePreferenceMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$600(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    .line 213
    .local v6, "sp":Landroid/preference/SwitchPreference;
    if-eqz v6, :cond_86

    .line 214
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->isServiceOn(I)Z
    invoke-static {v7, v5}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$300(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;I)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_86

    .line 217
    .end local v6    # "sp":Landroid/preference/SwitchPreference;
    :cond_1d4
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$700(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Landroid/content/Context;

    move-result-object v7

    sget v9, Lcom/samsung/android/coreapps/easysignup/R$string;->esu_check_your_network_status:I

    invoke-static {v7, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_86

    .line 219
    .end local v4    # "result":I
    .end local v5    # "serviceID":I
    :cond_1e5
    const-string v9, "com.samsung.android.coreapps.easysignup.ACTION_POLICY_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f4

    .line 220
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    invoke-virtual {v7}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->initializePreferences()V

    goto/16 :goto_86

    .line 221
    :cond_1f4
    const-string v9, "com.samsung.android.coreapps.easysignup.ACTION_SDK_SERVICE_ON"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23c

    .line 222
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->dismissProgressBar()V
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$400(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    .line 224
    const-string v7, "service_id"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 225
    .restart local v5    # "serviceID":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "serviceID = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v7, "extra_result"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 228
    .local v4, "result":Z
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mServicePreferenceMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$600(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    .line 229
    .restart local v6    # "sp":Landroid/preference/SwitchPreference;
    if-eqz v6, :cond_86

    .line 230
    invoke-virtual {v6, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_86

    .line 231
    .end local v4    # "result":Z
    .end local v5    # "serviceID":I
    .end local v6    # "sp":Landroid/preference/SwitchPreference;
    :cond_23c
    const-string v9, "com.samsung.android.coreapps.easysignup.ACTION_SDK_SERVICE_OFF"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_86

    .line 232
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->dismissProgressBar()V
    invoke-static {v9}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$400(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    .line 234
    const-string v9, "service_id"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 235
    .restart local v5    # "serviceID":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "serviceID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v9, "extra_result"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 238
    .restart local v4    # "result":Z
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mServicePreferenceMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$600(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Ljava/util/Map;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    .line 239
    .restart local v6    # "sp":Landroid/preference/SwitchPreference;
    if-eqz v6, :cond_86

    .line 240
    if-nez v4, :cond_286

    :goto_281
    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_86

    :cond_286
    move v7, v8

    goto :goto_281
.end method
