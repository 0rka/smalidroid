.class Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService$HttpRespHandler;
.super Landroid/os/Handler;
.source "GetPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpRespHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;
    .param p2, "x1"    # Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService$1;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService$HttpRespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/32 v12, 0x5265c00

    const-wide/32 v10, 0x36ee80

    const-wide/16 v8, 0x0

    .line 50
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_af

    .line 51
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp;

    .line 52
    .local v2, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp;
    iget-object v4, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp;->ss:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp$SupportedService;

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/db/PolicyDBMgr;->setPolicies([Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp$SupportedService;)V

    .line 55
    const-string v4, "last_policy_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 56
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getServerEnv()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "serverEnv":Ljava/lang/String;
    const-string v4, "PRD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 58
    const-string v4, "policy_check_interval"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "policy_check_interval"

    invoke-static {v6, v12, v13}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->registerAlarm(J)V

    .line 66
    :cond_47
    :goto_47
    iget-wide v4, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp;->itv:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_81

    .line 67
    const-string v4, "update_check_time_interval"

    invoke-static {v4, v8, v9}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 68
    .local v0, "prevItv":J
    const-string v4, "update_check_time_interval"

    iget-wide v6, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp;->itv:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    iget-wide v4, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp;->itv:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_81

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SelfUpgrade interval has been changed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp;->itv:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GetPolicyService"

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/util/SelfUpgradeUtils;->registerSelfUpgradeAlarm()V

    .line 79
    .end local v0    # "prevItv":J
    .end local v2    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp;
    .end local v3    # "serverEnv":Ljava/lang/String;
    :cond_81
    :goto_81
    iget-object v4, p0, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService$HttpRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;

    invoke-virtual {v4}, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->stopSelf()V

    .line 80
    return-void

    .line 60
    .restart local v2    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp;
    .restart local v3    # "serverEnv":Ljava/lang/String;
    :cond_87
    const-string v4, "PREPRD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_97

    const-string v4, "DEV"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 61
    :cond_97
    const-string v4, "policy_check_interval"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "policy_check_interval"

    invoke-static {v6, v10, v11}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/service/GetPolicyService;->registerAlarm(J)V

    goto :goto_47

    .line 76
    .end local v2    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp;
    .end local v3    # "serverEnv":Ljava/lang/String;
    :cond_af
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Policy response was not proper..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GetPolicyService"

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81
.end method
