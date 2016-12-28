.class Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity$1;
.super Ljava/lang/Object;
.source "AcsAuthenticatorActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 69
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 66
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->validateActivity()Z

    move-result v0

    if-nez v0, :cond_9

    .line 63
    :goto_8
    return-void

    .line 62
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->checkIsReady()V
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->access$000(Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;)V

    goto :goto_8
.end method
