.class Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$14;
.super Ljava/lang/Object;
.source "SettingPreferences.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showInvalidServerAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
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
    .line 963
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$14;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iput p2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$14;->val$token:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 967
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 968
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$14;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$1602(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 970
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$14;->val$token:I

    packed-switch v0, :pswitch_data_48

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "token undefined for positive button : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$14;->val$token:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    :goto_28
    return-void

    .line 972
    :pswitch_29
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$14;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showProgressBar()V
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$900(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    .line 973
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$14;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->deregi_imsi_list:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$1700(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$14;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$14;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->deregi_imsi_list:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$1700(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->requestDeAuth(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$1800(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;Ljava/util/ArrayList;)V

    goto :goto_28

    .line 970
    nop

    :pswitch_data_48
    .packed-switch 0x3e8
        :pswitch_29
    .end packed-switch
.end method
