.class Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity$1;
.super Ljava/lang/Object;
.source "DeregisteredActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->showRelayPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "AuthRequestFrom"

    const-string v2, "notification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    :try_start_e
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e .. :try_end_13} :catch_1c

    .line 109
    :goto_13
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 110
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->finish()V

    .line 111
    return-void

    .line 107
    :catch_1c
    move-exception v1

    goto :goto_13
.end method
