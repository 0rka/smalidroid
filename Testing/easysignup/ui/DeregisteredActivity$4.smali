.class Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity$4;
.super Ljava/lang/Object;
.source "DeregisteredActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 134
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity$4;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 137
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity$4;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->finish()V

    .line 139
    return-void
.end method
