.class public Lcom/samsung/android/coreapps/easysignup/db/PolicyDBMgr;
.super Ljava/lang/Object;
.source "PolicyDBMgr.java"


# static fields
.field public static final FEATURE_ON:I = 0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/samsung/android/coreapps/easysignup/db/PolicyDBMgr;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/db/PolicyDBMgr;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static containsKey(Ljava/lang/String;)Z
    .registers 13
    .param p0, "key1"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 97
    const/4 v8, 0x0

    .line 99
    .local v8, "ret":Z
    const/4 v7, 0x0

    .line 101
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_4
    const-string v9, "sid = ?"

    .line 102
    .local v9, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, v4, v0

    .line 104
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$PolicyTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "sid = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 106
    const/4 v6, 0x0

    .line 107
    .local v6, "count":I
    if-eqz v7, :cond_2f

    .line 108
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 109
    if-lez v6, :cond_55

    move v8, v10

    .line 110
    :goto_28
    const-string v0, "containsKey cursor not null "

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/db/PolicyDBMgr;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_57

    .line 113
    :cond_2f
    invoke-static {v7}, Lcom/samsung/android/coreapps/common/util/CommonUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contains Key1 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/db/PolicyDBMgr;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return v8

    :cond_55
    move v8, v11

    .line 109
    goto :goto_28

    .line 113
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "count":I
    .end local v9    # "selection":Ljava/lang/String;
    :catchall_57
    move-exception v0

    invoke-static {v7}, Lcom/samsung/android/coreapps/common/util/CommonUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static initPolicy()V
    .registers 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 120
    const-string v3, "initPolicy"

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/db/PolicyDBMgr;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 123
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;

    move-result-object v3

    const-string v4, "policy"

    invoke-virtual {v3, v4}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->clearTable(Ljava/lang/String;)V

    .line 125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    sget-object v3, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    array-length v3, v3

    if-ge v1, v3, :cond_90

    .line 126
    sget-object v3, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/samsung/android/coreapps/common/CommonFeature;->isSupportService(I)Z

    move-result v3

    if-nez v3, :cond_47

    .line 127
    sget-object v3, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    aget v3, v3, v1

    invoke-static {v0, v3}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$Feature;->remove(Landroid/content/Context;I)V

    .line 128
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$PolicyTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "sid=?"

    new-array v6, v8, [Ljava/lang/String;

    sget-object v7, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    aget v7, v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 132
    :cond_47
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 133
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "sid"

    sget-object v4, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    sget-object v3, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/db/PolicyDBMgr;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_78

    .line 136
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$PolicyTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 141
    :goto_70
    sget-object v3, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    aget v3, v3, v1

    invoke-static {v0, v3, v8}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$Feature;->set(Landroid/content/Context;II)V

    goto :goto_44

    .line 138
    :cond_78
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$PolicyTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "sid=?"

    new-array v6, v8, [Ljava/lang/String;

    sget-object v7, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    aget v7, v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_70

    .line 143
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_90
    return-void
.end method

.method private static sendPolicyChangedBroadcast()V
    .registers 3

    .prologue
    .line 146
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 147
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_POLICY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 148
    const-string v1, "sendBroadcastcom.samsung.android.coreapps.easysignup.ACTION_POLICY_CHANGED"

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/db/PolicyDBMgr;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public static declared-synchronized setPolicies([Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp$SupportedService;)V
    .registers 19
    .param p0, "supportedServices"    # [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp$SupportedService;

    .prologue
    .line 28
    const-class v12, Lcom/samsung/android/coreapps/easysignup/db/PolicyDBMgr;

    monitor-enter v12

    :try_start_3
    const-string v11, "last_policy_check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 30
    if-nez p0, :cond_1b

    .line 31
    const-string v11, "Wrong Supported Service is received, ignore."

    sget-object v13, Lcom/samsung/android/coreapps/easysignup/db/PolicyDBMgr;->TAG:Ljava/lang/String;

    invoke-static {v11, v13}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_7e

    .line 90
    :cond_19
    :goto_19
    monitor-exit v12

    return-void

    .line 35
    :cond_1b
    :try_start_1b
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 36
    .local v1, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    .local v0, "arr$":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp$SupportedService;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_23
    if-ge v4, v5, :cond_b2

    aget-object v6, v0, v4

    .line 38
    .local v6, "service":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp$SupportedService;
    iget v7, v6, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp$SupportedService;->sid:I

    .line 39
    .local v7, "sid":I
    iget v2, v6, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp$SupportedService;->feature:I

    .line 41
    .local v2, "feature":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setPolicies - sid :"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", feature : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v13, Lcom/samsung/android/coreapps/easysignup/db/PolicyDBMgr;->TAG:Ljava/lang/String;

    invoke-static {v11, v13}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {v7}, Lcom/samsung/android/coreapps/common/CommonFeature;->isSupportService(I)Z

    move-result v11

    if-nez v11, :cond_56

    .line 36
    :goto_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 46
    :cond_56
    const/4 v11, 0x1

    if-ne v2, v11, :cond_98

    .line 48
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 49
    .local v10, "values":Landroid/content/ContentValues;
    const-string v11, "sid"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/coreapps/easysignup/db/PolicyDBMgr;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_81

    .line 52
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v13, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$PolicyTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v13, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 59
    :goto_7a
    invoke-static {v1, v7, v2}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$Feature;->set(Landroid/content/Context;II)V
    :try_end_7d
    .catchall {:try_start_1b .. :try_end_7d} :catchall_7e

    goto :goto_53

    .line 28
    .end local v0    # "arr$":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp$SupportedService;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "feature":I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "service":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp$SupportedService;
    .end local v7    # "sid":I
    .end local v10    # "values":Landroid/content/ContentValues;
    :catchall_7e
    move-exception v11

    monitor-exit v12

    throw v11

    .line 54
    .restart local v0    # "arr$":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp$SupportedService;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "feature":I
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "service":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp$SupportedService;
    .restart local v7    # "sid":I
    .restart local v10    # "values":Landroid/content/ContentValues;
    :cond_81
    :try_start_81
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v13, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$PolicyTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v14, "sid=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v11, v13, v10, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_7a

    .line 61
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_98
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v13, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$PolicyTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v14, "sid=?"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v11, v13, v14, v15}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 65
    invoke-static {v1, v7}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$Feature;->remove(Landroid/content/Context;I)V

    goto :goto_53

    .line 69
    .end local v2    # "feature":I
    .end local v6    # "service":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PolicyResp$SupportedService;
    .end local v7    # "sid":I
    :cond_b2
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/db/PolicyDBMgr;->sendPolicyChangedBroadcast()V

    .line 71
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v9, "sidOnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v8, "sidOffList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c0
    sget-object v11, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    array-length v11, v11

    if-ge v3, v11, :cond_10f

    .line 74
    sget-object v11, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    aget v11, v11, v3

    invoke-static {v1, v11}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v11

    if-gez v11, :cond_e8

    sget-object v11, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    aget v11, v11, v3

    invoke-static {v1, v11}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getServiceStatus(Landroid/content/Context;I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_e8

    .line 76
    sget-object v11, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    aget v11, v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_e5
    :goto_e5
    add-int/lit8 v3, v3, 0x1

    goto :goto_c0

    .line 77
    :cond_e8
    sget-object v11, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    aget v11, v11, v3

    const/4 v13, 0x3

    if-ne v11, v13, :cond_e5

    sget-object v11, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    aget v11, v11, v3

    invoke-static {v1, v11}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v11

    if-ltz v11, :cond_e5

    sget-object v11, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    aget v11, v11, v3

    invoke-static {v1, v11}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getServiceStatus(Landroid/content/Context;I)I

    move-result v11

    if-nez v11, :cond_e5

    .line 80
    sget-object v11, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    aget v11, v11, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e5

    .line 84
    :cond_10f
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_11c

    .line 85
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v9}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->serviceOn(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 87
    :cond_11c
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_19

    .line 88
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->serviceOff(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_129
    .catchall {:try_start_81 .. :try_end_129} :catchall_7e

    goto/16 :goto_19
.end method
