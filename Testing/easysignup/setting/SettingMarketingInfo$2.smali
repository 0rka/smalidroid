.class Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$2;
.super Ljava/lang/Object;
.source "SettingMarketingInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo$2;->this$0:Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;

    # getter for: Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->mMarketInformsDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->access$400(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;)Landroid/app/AlertDialog;

    move-result-object v1

    # invokes: Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->closeDialog(Landroid/app/AlertDialog;)V
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;->access$500(Lcom/samsung/android/coreapps/easysignup/setting/SettingMarketingInfo;Landroid/app/AlertDialog;)V

    .line 112
    return-void
.end method
