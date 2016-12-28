.class public Lcom/samsung/android/coreapps/easysignup/job/ServiceOnOffJob;
.super Landroid/app/job/JobService;
.source "ServiceOnOffJob.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/samsung/android/coreapps/easysignup/job/ServiceOnOffJob;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/job/ServiceOnOffJob;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 14
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v11, 0x0

    .line 20
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 22
    .local v2, "extras":Landroid/os/PersistableBundle;
    const-string v9, "action"

    invoke-virtual {v2, v9}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "action":Ljava/lang/String;
    const-string v9, "service_id_list"

    invoke-virtual {v2, v9}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    .line 24
    .local v7, "sidArray":[I
    if-eqz v7, :cond_16

    array-length v9, v7

    if-nez v9, :cond_1e

    .line 25
    :cond_16
    const-string v9, "extra service id list is empty. cannot proceed"

    sget-object v10, Lcom/samsung/android/coreapps/easysignup/job/ServiceOnOffJob;->TAG:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :goto_1d
    return v11

    .line 29
    :cond_1e
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v8, "sidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v1, v7

    .local v1, "arr$":[I
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_26
    if-ge v3, v5, :cond_34

    aget v6, v1, v3

    .line 31
    .local v6, "sid":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 34
    .end local v6    # "sid":I
    :cond_34
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/job/ServiceOnOffJob;->getApplication()Landroid/app/Application;

    move-result-object v9

    const-class v10, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v4, "it":Landroid/content/Intent;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v9, "service_id_list"

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 37
    const-string v9, "from_setting_default_sms"

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/job/ServiceOnOffJob;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 40
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ServicOnOffJob("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") is started"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/coreapps/easysignup/job/ServiceOnOffJob;->TAG:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method
