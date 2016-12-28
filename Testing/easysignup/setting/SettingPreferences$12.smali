.class Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$12;
.super Ljava/lang/Object;
.source "SettingPreferences.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;I)V
    .registers 3

    .prologue
    .line 925
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$12;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iput p2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$12;->val$token:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 929
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 930
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$12;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$1602(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 932
    iget v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$12;->val$token:I

    packed-switch v1, :pswitch_data_42

    .line 945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token undefined for negative button "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$12;->val$token:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    :goto_28
    :pswitch_28
    return-void

    .line 934
    :pswitch_29
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$12;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->deregi_imsi_list:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$1700(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 936
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$12;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    const-class v2, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 937
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$12;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->stopService(Landroid/content/Intent;)Z

    goto :goto_28

    .line 932
    nop

    :pswitch_data_42
    .packed-switch 0x3e8
        :pswitch_29
        :pswitch_28
    .end packed-switch
.end method
