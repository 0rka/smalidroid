.class Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$10;
.super Ljava/lang/Object;
.source "SettingPreferences.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showProgressBar()V
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
    .line 844
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$10;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 850
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    const-string v3, "EsuRequestManager"

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 852
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$10;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    const-class v3, Lcom/samsung/android/coreapps/easysignup/transaction/JoinTransaction;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 853
    .local v0, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$10;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    invoke-virtual {v2, v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->stopService(Landroid/content/Intent;)Z

    .line 855
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$10;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    const-class v3, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 856
    .local v1, "i2":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$10;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    invoke-virtual {v2, v1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->stopService(Landroid/content/Intent;)Z

    .line 858
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$10;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->setResult(I)V

    .line 859
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$10;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    invoke-virtual {v2}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->finish()V

    .line 860
    return-void
.end method
