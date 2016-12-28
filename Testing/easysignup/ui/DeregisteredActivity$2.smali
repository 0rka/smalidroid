.class Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity$2;
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
    .line 114
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 118
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity$2;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->finish()V

    .line 120
    return-void
.end method
