.class Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$LocalReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SampleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalReceiver"
.end annotation


# instance fields
.field private localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private parentActivity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;)V
    .registers 2

    .prologue
    .line 270
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$LocalReceiver;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;
    .param p2, "x1"    # Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$1;

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$LocalReceiver;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalReceiver - action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$LocalReceiver;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    # getter for: Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->access$400(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_START_MT_AUTH_ACTIVITY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 287
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity$LocalReceiver;->this$0:Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;

    # invokes: Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->startMtAuthActivity(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;->access$500(Lcom/samsung/android/coreapps/easysignup/ui/SampleActivity;Landroid/content/Intent;)V

    .line 289
    :cond_31
    return-void
.end method
