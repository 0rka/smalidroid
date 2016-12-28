.class Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter$2;
.super Ljava/lang/Object;
.source "EasySignupLengthFilter.java"

# interfaces
.implements Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter$OnMaxLengthReachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;-><init>(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;


# direct methods
.method constructor <init>(Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter$2;->this$0:Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMaxLengthReachListener(I)V
    .registers 3
    .param p1, "maxLength"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter$2;->this$0:Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;

    # getter for: Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;->toast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;->access$000(Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter$2;->this$0:Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;

    # getter for: Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;->toast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;->access$000(Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_21

    .line 50
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter$2;->this$0:Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;

    # getter for: Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;->toast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;->access$000(Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 52
    :cond_21
    return-void
.end method
