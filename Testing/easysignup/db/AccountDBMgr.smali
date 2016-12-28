.class public Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;
.super Ljava/lang/Object;
.source "AccountDBMgr.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountDBMgr"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addAccount(Ljava/lang/String;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinResp;Ljava/util/ArrayList;)V
    .registers 22
    .param p0, "imsi"    # Ljava/lang/String;
    .param p1, "joinResp"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinResp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinResp;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p2, "joinServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-class v16, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;

    monitor-enter v16

    :try_start_3
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 299
    .local v4, "context":Landroid/content/Context;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "addAccount - immsi : "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/coreapps/common/util/CommonLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v17, "AccountDBMgr"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v15, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v15

    const-string v17, "imsi"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v15, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    .line 303
    .local v13, "uri":Landroid/net/Uri;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 311
    .local v14, "values":Landroid/content/ContentValues;
    const-string v15, "imsi"

    move-object/from16 v0, p0

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v15, "duid"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinResp;->duid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v15, "refresh_token"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinResp;->refresh_token:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v15, "access_token"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinResp;->access_token:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 317
    .local v9, "jsonArrrySids":Lorg/json/JSONArray;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 318
    .local v8, "jsonArrayJoinSids":Lorg/json/JSONArray;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/JoinResp;->services:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;

    .local v2, "arr$":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;
    array-length v11, v2

    .local v11, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_80
    if-ge v7, v11, :cond_94

    aget-object v12, v2, v7

    .line 319
    .local v12, "sInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;
    iget v15, v12, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;->status:I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_91

    .line 320
    iget v15, v12, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;->sid:I

    invoke-virtual {v9, v15}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 318
    :cond_91
    add-int/lit8 v7, v7, 0x1

    goto :goto_80

    .line 323
    .end local v12    # "sInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;
    :cond_94
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_95
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_a7

    .line 324
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 323
    add-int/lit8 v6, v6, 0x1

    goto :goto_95

    .line 327
    :cond_a7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "service list : "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " join list :"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v17, "AccountDBMgr"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v15, "sids"

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v15, "join_sids"

    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_14c

    .line 340
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-virtual {v15, v13, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_fe
    .catchall {:try_start_3 .. :try_end_fe} :catchall_15c

    .line 349
    :goto_fe
    move-object/from16 v10, p0

    .line 350
    .local v10, "key":Ljava/lang/String;
    :try_start_100
    sget-boolean v15, Lcom/samsung/android/coreapps/common/CommonFeature;->LOCAL_DB_ENCRYPTION:Z

    if-eqz v15, :cond_118

    .line 351
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v15

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getCryptoSeedPassword()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 354
    :cond_118
    sget-object v15, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 355
    .local v3, "authUri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "imsi NOT IN (\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\')"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_14a
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_100 .. :try_end_14a} :catch_15f
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_14a} :catch_166
    .catchall {:try_start_100 .. :try_end_14a} :catchall_15c

    .line 362
    .end local v3    # "authUri":Landroid/net/Uri;
    :goto_14a
    monitor-exit v16

    return-void

    .line 342
    .end local v10    # "key":Ljava/lang/String;
    :cond_14c
    :try_start_14c
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v13, v14, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_15b
    .catchall {:try_start_14c .. :try_end_15b} :catchall_15c

    goto :goto_fe

    .line 297
    .end local v2    # "arr$":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;
    .end local v4    # "context":Landroid/content/Context;
    .end local v6    # "i":I
    .end local v7    # "i$":I
    .end local v8    # "jsonArrayJoinSids":Lorg/json/JSONArray;
    .end local v9    # "jsonArrrySids":Lorg/json/JSONArray;
    .end local v11    # "len$":I
    .end local v13    # "uri":Landroid/net/Uri;
    .end local v14    # "values":Landroid/content/ContentValues;
    :catchall_15c
    move-exception v15

    monitor-exit v16

    throw v15

    .line 356
    .restart local v2    # "arr$":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v6    # "i":I
    .restart local v7    # "i$":I
    .restart local v8    # "jsonArrayJoinSids":Lorg/json/JSONArray;
    .restart local v9    # "jsonArrrySids":Lorg/json/JSONArray;
    .restart local v10    # "key":Ljava/lang/String;
    .restart local v11    # "len$":I
    .restart local v13    # "uri":Landroid/net/Uri;
    .restart local v14    # "values":Landroid/content/ContentValues;
    :catch_15f
    move-exception v5

    .line 357
    .local v5, "e":Landroid/database/sqlite/SQLiteConstraintException;
    :try_start_160
    const-string v15, "AccountDBMgr"

    invoke-static {v5, v15}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_14a

    .line 358
    .end local v5    # "e":Landroid/database/sqlite/SQLiteConstraintException;
    :catch_166
    move-exception v5

    .line 360
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16a
    .catchall {:try_start_160 .. :try_end_16a} :catchall_15c

    goto :goto_14a
.end method

.method private static containsKey(Ljava/lang/String;)Z
    .registers 10
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 779
    const/4 v8, 0x0

    .line 781
    .local v8, "ret":Z
    const/4 v7, 0x0

    .line 788
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_2
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "imsi"

    invoke-virtual {v0, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 790
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 792
    const/4 v6, 0x0

    .line 793
    .local v6, "count":I
    if-eqz v7, :cond_4b

    .line 795
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AccountDBMgr"

    invoke-static {v0, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    if-lez v6, :cond_44

    .line 799
    const/4 v8, 0x1

    .line 801
    :cond_44
    const-string v0, "containsKey cursor not null "

    const-string v2, "AccountDBMgr"

    invoke-static {v0, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_2 .. :try_end_4b} :catchall_73

    .line 805
    :cond_4b
    if-eqz v7, :cond_50

    .line 807
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 810
    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containsKey "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AccountDBMgr"

    invoke-static {v0, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    return v8

    .line 805
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "count":I
    :catchall_73
    move-exception v0

    if-eqz v7, :cond_79

    .line 807
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_79
    throw v0
.end method

.method public static getAccessToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 102
    .local v7, "context":Landroid/content/Context;
    const/4 v6, 0x0

    .line 104
    .local v6, "accessToken":Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "imsi"

    invoke-virtual {v0, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 106
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "access_token"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 108
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_40

    :try_start_2a
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_40

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 110
    const-string v0, "access_token"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_2a .. :try_end_3f} :catchall_5e

    move-result-object v6

    .line 113
    :cond_40
    if-eqz v8, :cond_45

    .line 114
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccessToken = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AccountDBMgr"

    invoke-static {v0, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-object v6

    .line 113
    :catchall_5e
    move-exception v0

    if-eqz v8, :cond_64

    .line 114
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_64
    throw v0
.end method

.method public static getDuid(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 270
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 272
    .local v6, "context":Landroid/content/Context;
    const/4 v8, 0x0

    .line 274
    .local v8, "duid":Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "imsi"

    invoke-virtual {v0, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 276
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "duid"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 278
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_40

    :try_start_2a
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_40

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 279
    const-string v0, "duid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_2a .. :try_end_3f} :catchall_5e

    move-result-object v8

    .line 281
    :cond_40
    if-eqz v7, :cond_45

    .line 282
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDuid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AccountDBMgr"

    invoke-static {v0, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-object v8

    .line 281
    :catchall_5e
    move-exception v0

    if-eqz v7, :cond_64

    .line 282
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_64
    throw v0
.end method

.method public static getJoinSIDs(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "imsi"    # Ljava/lang/String;

    .prologue
    .line 589
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 591
    .local v6, "context":Landroid/content/Context;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJoinSIDS("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/coreapps/common/util/CommonLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AccountDBMgr"

    invoke-static {v0, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "imsi"

    invoke-virtual {v0, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 595
    .local v1, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 596
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 598
    .local v8, "sids":Ljava/lang/String;
    :try_start_38
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "join_sids"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 600
    if-eqz v7, :cond_63

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_63

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 601
    const-string v0, "join_sids"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_62
    .catchall {:try_start_38 .. :try_end_62} :catchall_81

    move-result-object v8

    .line 604
    :cond_63
    if-eqz v7, :cond_68

    .line 605
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 609
    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "join sids : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AccountDBMgr"

    invoke-static {v0, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    return-object v8

    .line 604
    :catchall_81
    move-exception v0

    if-eqz v7, :cond_87

    .line 605
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_87
    throw v0
.end method

.method public static declared-synchronized getMsisdn(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "imsi"    # Ljava/lang/String;

    .prologue
    .line 430
    const-class v9, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;

    monitor-enter v9

    const/4 v8, 0x0

    .line 433
    .local v8, "msisdn":Ljava/lang/String;
    :try_start_4
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 435
    .local v6, "context":Landroid/content/Context;
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "imsi"

    invoke-virtual {v0, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 437
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "msisdn"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_6d

    move-result-object v7

    .line 440
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_43

    :try_start_2d
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_43

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 441
    const-string v0, "msisdn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_42
    .catchall {:try_start_2d .. :try_end_42} :catchall_66

    move-result-object v8

    .line 444
    :cond_43
    if-eqz v7, :cond_48

    .line 445
    :try_start_45
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 449
    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMsisdn : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Lcom/samsung/android/coreapps/common/util/CommonLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AccountDBMgr"

    invoke-static {v0, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_45 .. :try_end_64} :catchall_6d

    .line 451
    monitor-exit v9

    return-object v8

    .line 444
    :catchall_66
    move-exception v0

    if-eqz v7, :cond_6c

    .line 445
    :try_start_69
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6c
    throw v0
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_6d

    .line 430
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_6d
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static getRefreshToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 186
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 188
    .local v6, "context":Landroid/content/Context;
    const/4 v8, 0x0

    .line 190
    .local v8, "refreshToken":Ljava/lang/String;
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "imsi"

    invoke-virtual {v0, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 192
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "refresh_token"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 194
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_40

    :try_start_2a
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_40

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 195
    const-string v0, "refresh_token"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_2a .. :try_end_3f} :catchall_5e

    move-result-object v8

    .line 197
    :cond_40
    if-eqz v7, :cond_45

    .line 198
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 202
    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRefreshToken = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AccountDBMgr"

    invoke-static {v0, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-object v8

    .line 197
    :catchall_5e
    move-exception v0

    if-eqz v7, :cond_64

    .line 198
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_64
    throw v0
.end method

.method public static getSIDs(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "imsi"    # Ljava/lang/String;

    .prologue
    .line 517
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 519
    .local v6, "context":Landroid/content/Context;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSIDS("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/coreapps/common/util/CommonLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AccountDBMgr"

    invoke-static {v0, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "imsi"

    invoke-virtual {v0, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 523
    .local v1, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 524
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 526
    .local v8, "sids":Ljava/lang/String;
    :try_start_38
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sids"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 528
    if-eqz v7, :cond_63

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_63

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 529
    const-string v0, "sids"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_62
    .catchall {:try_start_38 .. :try_end_62} :catchall_81

    move-result-object v8

    .line 532
    :cond_63
    if-eqz v7, :cond_68

    .line 533
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 537
    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sids : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AccountDBMgr"

    invoke-static {v0, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    return-object v8

    .line 532
    :catchall_81
    move-exception v0

    if-eqz v7, :cond_87

    .line 533
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_87
    throw v0
.end method

.method public static declared-synchronized getService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "imsi"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 748
    const-class v9, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;

    monitor-enter v9

    :try_start_3
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 750
    .local v6, "context":Landroid/content/Context;
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "imsi"

    invoke-virtual {v0, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 752
    .local v1, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 755
    .local v8, "serviceList":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_6c

    move-result-object v7

    .line 758
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3c

    :try_start_2b
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3c

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 759
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_65

    move-result-object v8

    .line 762
    :cond_3c
    if-eqz v7, :cond_41

    .line 763
    :try_start_3e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 767
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getService : type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , serviceList "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AccountDBMgr"

    invoke-static {v0, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_3e .. :try_end_63} :catchall_6c

    .line 769
    monitor-exit v9

    return-object v8

    .line 762
    :catchall_65
    move-exception v0

    if-eqz v7, :cond_6b

    .line 763
    :try_start_68
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6b
    throw v0
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_6c

    .line 748
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "serviceList":Ljava/lang/String;
    :catchall_6c
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized getTNCsettingTime(Ljava/lang/String;)J
    .registers 12
    .param p0, "imsi"    # Ljava/lang/String;

    .prologue
    .line 671
    const-class v10, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;

    monitor-enter v10

    :try_start_3
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 673
    .local v6, "context":Landroid/content/Context;
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "imsi"

    invoke-virtual {v0, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 675
    .local v1, "uri":Landroid/net/Uri;
    const-wide/16 v8, 0x0

    .line 678
    .local v8, "settingTime":J
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "tnc_setting_time"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_6a

    move-result-object v7

    .line 681
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_44

    :try_start_2e
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_44

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 682
    const-string v0, "tnc_setting_time"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_63

    move-result-wide v8

    .line 685
    :cond_44
    if-eqz v7, :cond_49

    .line 686
    :try_start_46
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 690
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTNCsettingTime : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AccountDBMgr"

    invoke-static {v0, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_46 .. :try_end_61} :catchall_6a

    .line 692
    monitor-exit v10

    return-wide v8

    .line 685
    :catchall_63
    move-exception v0

    if-eqz v7, :cond_69

    .line 686
    :try_start_66
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_69
    throw v0
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_6a

    .line 671
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "settingTime":J
    :catchall_6a
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static declared-synchronized removeAccount(Ljava/lang/String;)V
    .registers 5
    .param p0, "imsi"    # Ljava/lang/String;

    .prologue
    .line 369
    const-class v2, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 371
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAccountData("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/coreapps/common/util/CommonLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AccountDBMgr"

    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;

    move-result-object v1

    const-string v3, "auth"

    invoke-virtual {v1, v3}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->clearTable(Ljava/lang/String;)V

    .line 374
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;

    move-result-object v1

    const-string v3, "gld"

    invoke-virtual {v1, v3}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->clearTable(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_3d

    .line 375
    monitor-exit v2

    return-void

    .line 369
    .end local v0    # "context":Landroid/content/Context;
    :catchall_3d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "imsi"    # Ljava/lang/String;
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v4, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;

    monitor-enter v4

    :try_start_3
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 44
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAccessToken("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "), accessToken = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "AccountDBMgr"

    invoke-static {v3, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v3, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "imsi"

    invoke-virtual {v3, v5, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 49
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 50
    .local v2, "values":Landroid/content/ContentValues;
    if-nez p1, :cond_54

    .line 51
    const-string v3, "access_token"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 57
    :goto_45
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_5a

    .line 62
    :goto_52
    monitor-exit v4

    return-void

    .line 53
    :cond_54
    :try_start_54
    const-string v3, "access_token"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_5a

    goto :goto_45

    .line 42
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_5a
    move-exception v3

    monitor-exit v4

    throw v3

    .line 60
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_5d
    :try_start_5d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_5a

    goto :goto_52
.end method

.method public static setContactSyncAgreement(Z)V
    .registers 8
    .param p0, "agree"    # Z

    .prologue
    const/4 v6, 0x0

    .line 820
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContactSyncAgreement : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccountDBMgr"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 822
    .local v0, "context":Landroid/content/Context;
    sget-object v3, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$DataTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "data_name"

    const-string v5, "contact_sync_agreement"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 823
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 824
    .local v2, "values":Landroid/content/ContentValues;
    if-eqz p0, :cond_45

    .line 825
    const-string v3, "data_value"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    :goto_3d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 829
    return-void

    .line 827
    :cond_45
    const-string v3, "data_value"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d
.end method

.method public static setDuid(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "imsi"    # Ljava/lang/String;
    .param p1, "duid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 242
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 244
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDuid ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/samsung/android/coreapps/common/util/CommonLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), duid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccountDBMgr"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    sget-object v3, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "imsi"

    invoke-virtual {v3, v4, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 249
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 250
    .local v2, "values":Landroid/content/ContentValues;
    if-nez p1, :cond_55

    .line 251
    const-string v3, "duid"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 256
    :goto_47
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 257
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 261
    :goto_54
    return-void

    .line 253
    :cond_55
    const-string v3, "duid"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 259
    :cond_5b
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_54
.end method

.method public static setJoinSIDs(Ljava/lang/String;[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;)V
    .registers 16
    .param p0, "imsi"    # Ljava/lang/String;
    .param p1, "sInfoArray"    # [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;

    .prologue
    const/4 v13, 0x0

    .line 621
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 623
    .local v1, "context":Landroid/content/Context;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setJoinSIDS("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p0}, Lcom/samsung/android/coreapps/common/util/CommonLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "AccountDBMgr"

    invoke-static {v11, v12}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    sget-object v11, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    const-string v12, "imsi"

    invoke-virtual {v11, v12, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 627
    .local v9, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 628
    .local v7, "sids":Ljava/lang/String;
    const/4 v3, 0x0

    .line 630
    .local v3, "joinSids":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 631
    .local v8, "sidsArray":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 632
    .local v4, "joinSidsArray":Lorg/json/JSONArray;
    move-object v0, p1

    .local v0, "arr$":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_46
    if-ge v2, v5, :cond_5c

    aget-object v6, v0, v2

    .line 633
    .local v6, "sInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;
    iget v11, v6, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;->sid:I

    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 634
    iget v11, v6, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;->status:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_59

    .line 635
    iget v11, v6, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;->sid:I

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 632
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 638
    .end local v6    # "sInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;
    :cond_5c
    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    .line 639
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 641
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "join sids : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "AccountDBMgr"

    invoke-static {v11, v12}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 645
    .local v10, "values":Landroid/content/ContentValues;
    if-nez v7, :cond_a3

    .line 646
    const-string v11, "sids"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 650
    :goto_88
    if-nez v3, :cond_a9

    .line 651
    const-string v11, "join_sids"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 656
    :goto_8f
    invoke-static {v1, v7}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$ServiceStatus;->set(Landroid/content/Context;Ljava/lang/String;)V

    .line 657
    invoke-static {v1, v3}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$JoinServiceStatus;->set(Landroid/content/Context;Ljava/lang/String;)V

    .line 659
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_af

    .line 660
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 664
    :goto_a2
    return-void

    .line 648
    :cond_a3
    const-string v11, "sids"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_88

    .line 653
    :cond_a9
    const-string v11, "join_sids"

    invoke-virtual {v10, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8f

    .line 662
    :cond_af
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v9, v10, v13, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_a2
.end method

.method public static declared-synchronized setMsisdn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0, "imsi"    # Ljava/lang/String;
    .param p1, "msisdn"    # Ljava/lang/String;

    .prologue
    .line 384
    const-class v5, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;

    monitor-enter v5

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMsisdn("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/samsung/android/coreapps/common/util/CommonLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/android/coreapps/common/util/CommonLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "AccountDBMgr"

    invoke-static {v4, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 388
    .local v0, "context":Landroid/content/Context;
    sget-object v4, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v6, "imsi"

    invoke-virtual {v4, v6, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 391
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 392
    .local v3, "values":Landroid/content/ContentValues;
    if-nez p1, :cond_58

    .line 393
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->isEngBinary()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 394
    const/4 v4, 0x0

    invoke-static {v4}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 408
    :cond_58
    :goto_58
    if-nez p1, :cond_9f

    .line 409
    const-string v4, "msisdn"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 414
    :goto_5f
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a5

    .line 415
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_9c

    .line 419
    :goto_6c
    monitor-exit v5

    return-void

    .line 396
    :cond_6e
    :try_start_6e
    const-string v4, "AccountDBMgr"

    const-string v6, "msisdn is null : "

    new-instance v7, Ljava/lang/Throwable;

    const-string v8, "stack dump"

    invoke-direct {v7, v8}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    invoke-static {p0}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getSimMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "simMsisdn":Ljava/lang/String;
    if-eqz v1, :cond_94

    .line 399
    invoke-static {v1}, Lcom/samsung/android/coreapps/common/util/NumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 400
    const-string v4, "+"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 401
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_58

    .line 403
    :cond_94
    const-string v4, "AccountDBMgr"

    const-string v6, "sim msisdn is null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_6e .. :try_end_9b} :catchall_9c

    goto :goto_58

    .line 384
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "simMsisdn":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_9c
    move-exception v4

    monitor-exit v5

    throw v4

    .line 411
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_9f
    :try_start_9f
    const-string v4, "msisdn"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    .line 417
    :cond_a5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_ae
    .catchall {:try_start_9f .. :try_end_ae} :catchall_9c

    goto :goto_6c
.end method

.method public static declared-synchronized setRefreshToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "imsi"    # Ljava/lang/String;
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 131
    const-class v4, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;

    monitor-enter v4

    :try_start_3
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 133
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRefreshToken ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "), refreshToken = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "AccountDBMgr"

    invoke-static {v3, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v3, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "imsi"

    invoke-virtual {v3, v5, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 138
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 139
    .local v2, "values":Landroid/content/ContentValues;
    if-nez p1, :cond_54

    .line 140
    const-string v3, "refresh_token"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 145
    :goto_45
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5d

    .line 146
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_5a

    .line 150
    :goto_52
    monitor-exit v4

    return-void

    .line 142
    :cond_54
    :try_start_54
    const-string v3, "refresh_token"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_5a

    goto :goto_45

    .line 131
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_5a
    move-exception v3

    monitor-exit v4

    throw v3

    .line 148
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_5d
    :try_start_5d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_5a

    goto :goto_52
.end method

.method public static setSIDs(Ljava/lang/String;[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;)V
    .registers 14
    .param p0, "imsi"    # Ljava/lang/String;
    .param p1, "sInfoArray"    # [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;

    .prologue
    const/4 v11, 0x0

    .line 549
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 551
    .local v1, "context":Landroid/content/Context;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSIDS("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Lcom/samsung/android/coreapps/common/util/CommonLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "AccountDBMgr"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    sget-object v9, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "imsi"

    invoke-virtual {v9, v10, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 555
    .local v7, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 557
    .local v6, "sids":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 558
    .local v3, "jsonArray":Lorg/json/JSONArray;
    move-object v0, p1

    .local v0, "arr$":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_40
    if-ge v2, v4, :cond_51

    aget-object v5, v0, v2

    .line 559
    .local v5, "sInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;
    iget v9, v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;->status:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4e

    .line 560
    iget v9, v5, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;->sid:I

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 558
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 563
    .end local v5    # "sInfo":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServiceInfo;
    :cond_51
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    .line 565
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sids : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "AccountDBMgr"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 569
    .local v8, "values":Landroid/content/ContentValues;
    if-nez v6, :cond_8a

    .line 570
    const-string v9, "sids"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 575
    :goto_79
    invoke-static {v1, v6}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$ServiceStatus;->set(Landroid/content/Context;Ljava/lang/String;)V

    .line 577
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_90

    .line 578
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 582
    :goto_89
    return-void

    .line 572
    :cond_8a
    const-string v9, "sids"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    .line 580
    :cond_90
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v8, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_89
.end method

.method public static declared-synchronized setTNCsettingTime(Ljava/lang/String;J)V
    .registers 10
    .param p0, "imsi"    # Ljava/lang/String;
    .param p1, "tncSettingTime"    # J

    .prologue
    .line 701
    const-class v4, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;

    monitor-enter v4

    :try_start_3
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 703
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setTNCsettingTime key = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "AccountDBMgr"

    invoke-static {v3, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    sget-object v3, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "imsi"

    invoke-virtual {v3, v5, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 707
    .local v1, "uri":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setTNCsettingTime : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "AccountDBMgr"

    invoke-static {v3, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 714
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "tnc_setting_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 716
    invoke-static {p0}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 717
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_6e

    .line 721
    :goto_62
    monitor-exit v4

    return-void

    .line 719
    :cond_64
    :try_start_64
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_6e

    goto :goto_62

    .line 701
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_6e
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized updateService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0, "imsi"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "serviceList"    # Ljava/lang/String;

    .prologue
    .line 729
    const-class v5, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;

    monitor-enter v5

    :try_start_3
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 731
    .local v0, "context":Landroid/content/Context;
    sget-object v4, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v6, "imsi"

    invoke-virtual {v4, v6, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 733
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 734
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 737
    .local v1, "id":I
    if-gtz v1, :cond_4d

    .line 738
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service not updated..."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " value: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "AccountDBMgr"

    invoke-static {v4, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4f

    .line 740
    :cond_4d
    monitor-exit v5

    return-void

    .line 729
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "id":I
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_4f
    move-exception v4

    monitor-exit v5

    throw v4
.end method
