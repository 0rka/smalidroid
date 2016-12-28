.class Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$5;
.super Ljava/lang/Object;
.source "SelfUpgradeCheckActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->showExitPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;)V
    .registers 2

    .prologue
    .line 150
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$5;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;

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
    const/4 v0, 0x0

    .line 153
    const/4 v1, 0x4

    if-eq p2, v1, :cond_5

    .line 158
    :goto_4
    return v0

    .line 155
    :cond_5
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 156
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$5;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->setResult(I)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$5;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->finish()V

    .line 158
    const/4 v0, 0x1

    goto :goto_4
.end method
