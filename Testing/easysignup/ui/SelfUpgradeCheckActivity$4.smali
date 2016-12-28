.class Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$4;
.super Ljava/lang/Object;
.source "SelfUpgradeCheckActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 141
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$4;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 144
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$4;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->setResult(I)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity$4;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/SelfUpgradeCheckActivity;->finish()V

    .line 147
    return-void
.end method
