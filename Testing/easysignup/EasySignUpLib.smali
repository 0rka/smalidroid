.class public Lcom/samsung/android/coreapps/easysignup/EasySignUpLib;
.super Ljava/lang/Object;
.source "EasySignUpLib.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->init(Landroid/content/Context;)V

    .line 16
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/util/SLog;->init(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->init(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 19
    return-void
.end method
