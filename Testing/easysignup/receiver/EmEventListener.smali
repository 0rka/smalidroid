.class public Lcom/samsung/android/coreapps/easysignup/receiver/EmEventListener;
.super Landroid/content/BroadcastReceiver;
.source "EmEventListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmEventListener"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    if-eqz p2, :cond_c5

    .line 32
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "action : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "EmEventListener"

    invoke-static {v12, v13}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v12, Lcom/samsung/android/coreapps/common/util/sdl/EmergencyConstantsRef;->EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c5

    .line 36
    const-string v1, "em_sids"

    .line 37
    .local v1, "EM_SIDS":Ljava/lang/String;
    const-string v12, "reason"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 38
    .local v7, "reason":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reason = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "EmEventListener"

    invoke-static {v12, v13}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v12, "add_account_number"

    const-string v13, ""

    invoke-static {v12, v13}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "accountNumber":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_c5

    .line 41
    sget v12, Lcom/samsung/android/coreapps/common/util/sdl/EmergencyConstantsRef;->MODE_ENABLING:I

    if-ne v7, v12, :cond_c6

    .line 42
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getAccountIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getSIDs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 43
    .local v11, "sids":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sids = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "EmEventListener"

    invoke-static {v12, v13}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v12, "em_sids"

    invoke-static {v12, v11}, Lcom/samsung/android/coreapps/common/util/CommonPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {v11}, Lcom/samsung/android/coreapps/common/util/CommonUtils;->convertToArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 48
    .local v10, "sidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sidList : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Integer;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "EmEventListener"

    invoke-static {v12, v13}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v4, Landroid/content/Intent;

    const-class v12, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v4, "i":Landroid/content/Intent;
    const-string v12, "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_OFF"

    invoke-virtual {v4, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v12, "service_id_list"

    invoke-virtual {v4, v12, v10}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 53
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 107
    .end local v1    # "EM_SIDS":Ljava/lang/String;
    .end local v2    # "accountNumber":Ljava/lang/String;
    .end local v4    # "i":Landroid/content/Intent;
    .end local v7    # "reason":I
    .end local v10    # "sidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "sids":Ljava/lang/String;
    :cond_c5
    :goto_c5
    return-void

    .line 83
    .restart local v1    # "EM_SIDS":Ljava/lang/String;
    .restart local v2    # "accountNumber":Ljava/lang/String;
    .restart local v7    # "reason":I
    :cond_c6
    sget v12, Lcom/samsung/android/coreapps/common/util/sdl/EmergencyConstantsRef;->MODE_DISABLED:I

    if-ne v7, v12, :cond_c5

    .line 85
    const-string v12, "em_sids"

    const-string v13, "[]"

    invoke-static {v12, v13}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 88
    .restart local v11    # "sids":Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/android/coreapps/common/util/CommonUtils;->convertToIntArray(Ljava/lang/String;)[I

    move-result-object v8

    .line 91
    .local v8, "result":[I
    if-eqz v8, :cond_c5

    array-length v12, v8

    if-lez v12, :cond_c5

    .line 92
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .restart local v10    # "sidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v3, v8

    .local v3, "arr$":[I
    array-length v6, v3

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_e3
    if-ge v5, v6, :cond_f1

    aget v9, v3, v5

    .line 94
    .local v9, "sid":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v5, v5, 0x1

    goto :goto_e3

    .line 96
    .end local v9    # "sid":I
    :cond_f1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sidList : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Integer;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "EmEventListener"

    invoke-static {v12, v13}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v4, Landroid/content/Intent;

    const-class v12, Lcom/samsung/android/coreapps/easysignup/transaction/ServiceOnOffTransaction;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .restart local v4    # "i":Landroid/content/Intent;
    const-string v12, "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_ON"

    invoke-virtual {v4, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v12, "service_id_list"

    invoke-virtual {v4, v12, v10}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 101
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_c5
.end method
