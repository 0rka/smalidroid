.class Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity$3;
.super Ljava/lang/Object;
.source "DeregisteredActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 123
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 126
    const/4 v0, 0x4

    if-eq p2, v0, :cond_5

    .line 127
    const/4 v0, 0x0

    .line 130
    :goto_4
    return v0

    .line 128
    :cond_5
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity$3;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->finish()V

    .line 130
    const/4 v0, 0x1

    goto :goto_4
.end method
