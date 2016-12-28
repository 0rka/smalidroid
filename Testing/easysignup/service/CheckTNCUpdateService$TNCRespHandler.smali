.class Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService$TNCRespHandler;
.super Landroid/os/Handler;
.source "CheckTNCUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TNCRespHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService$TNCRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;
    .param p2, "x1"    # Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService$1;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService$TNCRespHandler;-><init>(Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ######## handleMessage [System.currentTimeMillis()] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CheckTNCUpdateService"

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_bc

    .line 129
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/VerifyTNCForEasySignupResponseVO;

    .line 131
    .local v0, "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/VerifyTNCForEasySignupResponseVO;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requiredTNCAccepted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/VerifyTNCForEasySignupResponseVO;->requiredTNCAccepted:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ requiredPrivacyAccepted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/VerifyTNCForEasySignupResponseVO;->requiredPrivacyAccepted:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ requiredMarketingAgreementAccepted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/VerifyTNCForEasySignupResponseVO;->requiredMarketingAgreementAccepted:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CheckTNCUpdateService"

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/VerifyTNCForEasySignupResponseVO;->requiredMarketingAgreementAccepted:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 135
    const-string v1, "marketing_agreement"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 140
    :goto_6c
    iget-object v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/VerifyTNCForEasySignupResponseVO;->requiredTNCAccepted:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    iget-object v1, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/VerifyTNCForEasySignupResponseVO;->requiredPrivacyAccepted:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 144
    :cond_80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService$TNCRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;

    # getter for: Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->mImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->access$100(Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CheckTNCUpdateService"

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "is_tnc_updated"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 158
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService$TNCRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;

    # invokes: Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->showNoti()V
    invoke-static {v1}, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->access$200(Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;)V

    .line 162
    :cond_ac
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x337f9800

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->registerAlarm(J)V

    .line 163
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService$TNCRespHandler;->this$0:Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;

    invoke-virtual {v1}, Lcom/samsung/android/coreapps/easysignup/service/CheckTNCUpdateService;->stopSelf()V

    .line 175
    .end local v0    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/VerifyTNCForEasySignupResponseVO;
    :cond_bc
    return-void

    .line 137
    .restart local v0    # "resp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/VerifyTNCForEasySignupResponseVO;
    :cond_bd
    const-string v1, "marketing_agreement"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_6c
.end method
