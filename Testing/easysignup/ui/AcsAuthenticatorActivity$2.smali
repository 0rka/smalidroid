.class Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity$2;
.super Ljava/lang/Object;
.source "AcsAuthenticatorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 74
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->setResult(I)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/AcsAuthenticatorActivity;->finish()V

    .line 79
    return-void
.end method
