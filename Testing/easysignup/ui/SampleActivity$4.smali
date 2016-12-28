.class Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$4;
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


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;)V
    .registers 2

    .prologue
    .line 226
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$4;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 230
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 231
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$4;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 232
    return-void
.end method
