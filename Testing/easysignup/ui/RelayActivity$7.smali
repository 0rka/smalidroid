.class Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$7;
.super Ljava/lang/Object;
.source "RelayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->showAuthResultPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;)V
    .registers 2

    .prologue
    .line 497
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$7;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 500
    const/4 v0, 0x4

    if-eq p2, v0, :cond_5

    .line 501
    const/4 v0, 0x0

    .line 505
    :goto_4
    return v0

    .line 502
    :cond_5
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 503
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$7;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->setResult(I)V

    .line 504
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity$7;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/RelayActivity;->finish()V

    .line 505
    const/4 v0, 0x1

    goto :goto_4
.end method
