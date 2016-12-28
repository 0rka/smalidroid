.class Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$5;
.super Ljava/lang/Object;
.source "SampleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$OkBtnHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

.field final synthetic val$okBtnHandler:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$OkBtnHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$OkBtnHandler;)V
    .registers 3

    .prologue
    .line 215
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$5;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$5;->val$okBtnHandler:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$OkBtnHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 219
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$5;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 222
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$5;->val$okBtnHandler:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$OkBtnHandler;

    if-eqz v0, :cond_11

    .line 223
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$5;->val$okBtnHandler:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$OkBtnHandler;

    invoke-interface {v0}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$OkBtnHandler;->OnDoOk()V

    .line 225
    :cond_11
    return-void
.end method
