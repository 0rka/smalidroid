.class Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$1;
.super Ljava/lang/Object;
.source "UpdateTncActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;)V
    .registers 2

    .prologue
    .line 226
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->esu_information:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity$1;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;

    sget v3, Lcom/samsung/android/coreapps/easysignup/R$string;->the_verification_has_failed:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/coreapps/easysignup/ui/UpdateTncActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 230
    return-void
.end method
