.class Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator$DisplayFailedDeleteAccount;
.super Landroid/os/AsyncTask;
.source "Authenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayFailedDeleteAccount"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator;


# direct methods
.method private constructor <init>(Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator;)V
    .registers 2

    .prologue
    .line 155
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator$DisplayFailedDeleteAccount;->this$0:Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 155
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator$DisplayFailedDeleteAccount;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 155
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator$DisplayFailedDeleteAccount;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 6
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 167
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator$DisplayFailedDeleteAccount;->this$0:Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator;

    # getter for: Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator;->access$000(Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 168
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator$DisplayFailedDeleteAccount;->this$0:Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator;

    # getter for: Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator;->access$000(Lcom/samsung/android/coreapps/easysignup/authenticator/Authenticator;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/coreapps/easysignup/R$string;->unable_to_connect_to_the_network:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 169
    .local v0, "t":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 171
    .end local v0    # "t":Landroid/widget/Toast;
    :cond_1b
    return-void
.end method
