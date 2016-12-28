.class public Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;
.super Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter;
.source "EasySignupLengthFilter.java"


# instance fields
.field private mListener:Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter$OnMaxLengthReachListener;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxLength"    # I

    .prologue
    .line 24
    invoke-direct {p0, p2}, Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter;-><init>(I)V

    .line 26
    sget v0, Lcom/samsung/android/coreapps/easysignuplib/R$string;->toast_text_max_Length:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;->toast:Landroid/widget/Toast;

    .line 28
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter$1;-><init>(Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;->mListener:Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter$OnMaxLengthReachListener;

    .line 37
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;->mListener:Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter$OnMaxLengthReachListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;->setOnMaxLengthReachListener(Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter$OnMaxLengthReachListener;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "maxLength"    # I

    .prologue
    .line 42
    invoke-direct {p0, p3}, Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter;-><init>(I)V

    .line 44
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;->toast:Landroid/widget/Toast;

    .line 46
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter$2;-><init>(Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;->mListener:Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter$OnMaxLengthReachListener;

    .line 55
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;->mListener:Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter$OnMaxLengthReachListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;->setOnMaxLengthReachListener(Lcom/samsung/android/coreapps/easysignup/util/ObservableLengthFilter$OnMaxLengthReachListener;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;)Landroid/widget/Toast;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/util/EasySignupLengthFilter;->toast:Landroid/widget/Toast;

    return-object v0
.end method
