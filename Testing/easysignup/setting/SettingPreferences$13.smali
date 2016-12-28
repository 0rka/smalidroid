.class Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$13;
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
    .line 895
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$13;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iput p2, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$13;->val$token:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 899
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 900
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$13;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$1602(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 902
    iget v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$13;->val$token:I

    packed-switch v0, :pswitch_data_4c

    .line 919
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$13;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showProgressBar()V
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$900(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    .line 920
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$13;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$13;->val$token:I

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->changeSdkServiceStatus(IZ)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$1400(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;IZ)V

    .line 924
    :goto_1b
    return-void

    .line 904
    :pswitch_1c
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$13;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showProgressBar()V
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$900(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    .line 905
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$13;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$13;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->deregi_imsi_list:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$1700(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->requestDeAuth(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$1800(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;Ljava/util/ArrayList;)V

    goto :goto_1b

    .line 909
    :pswitch_2d
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$13;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showProgressBar()V
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$900(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    .line 910
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$13;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$700(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->serviceOff(Landroid/content/Context;I)V

    goto :goto_1b

    .line 914
    :pswitch_3d
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$13;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->showProgressBar()V
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$900(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)V

    .line 915
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences$13;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;->access$700(Lcom/samsung/android/coreapps/easysignup/setting/SettingPreferences;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->serviceOff(Landroid/content/Context;I)V

    goto :goto_1b

    .line 902
    :pswitch_data_4c
    .packed-switch 0x3e8
        :pswitch_1c
        :pswitch_2d
        :pswitch_3d
    .end packed-switch
.end method
