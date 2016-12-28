.class Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$5;
.super Ljava/lang/Object;
.source "SmsAuthenticatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;)V
    .registers 2

    .prologue
    .line 441
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$5;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 445
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 446
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity$5;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;->access$202(Lcom/samsung/android/coreapps/easysignup/ui/SmsAuthenticatorActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 447
    return-void
.end method
