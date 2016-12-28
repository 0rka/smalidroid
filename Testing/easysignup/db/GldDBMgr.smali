.class public Lcom/samsung/android/coreapps/easysignup/db/GldDBMgr;
.super Ljava/lang/Object;
.source "GldDBMgr.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GldDBMgr"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearGldData()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    .local v0, "context":Landroid/content/Context;
    sget-object v2, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$GldTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 52
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "clearGldData"

    const-string v3, "GldDBMgr"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method private static containsKey(Ljava/lang/String;)Z
    .registers 13
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 65
    const/4 v8, 0x0

    .line 67
    .local v8, "ret":Z
    const/4 v7, 0x0

    .line 71
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_4
    const-string v9, "type = ?"

    .line 72
    .local v9, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, v4, v0

    .line 74
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$GldTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "type = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 76
    const/4 v6, 0x0

    .line 77
    .local v6, "count":I
    if-eqz v7, :cond_2f

    .line 79
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 80
    if-lez v6, :cond_57

    move v8, v10

    .line 81
    :goto_28
    const-string v0, "containsKey cursor not null "

    const-string v1, "GldDBMgr"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_59

    .line 85
    :cond_2f
    if-eqz v7, :cond_34

    .line 87
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "containsKey "

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

    const-string v1, "GldDBMgr"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return v8

    :cond_57
    move v8, v11

    .line 80
    goto :goto_28

    .line 85
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "count":I
    .end local v9    # "selection":Ljava/lang/String;
    :catchall_59
    move-exception v0

    if-eqz v7, :cond_5f

    .line 87
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5f
    throw v0
.end method

.method public static declared-synchronized setGldData([Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServerInfo;)V
    .registers 14
    .param p0, "serverInfoList"    # [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServerInfo;

    .prologue
    .line 22
    const-class v8, Lcom/samsung/android/coreapps/easysignup/db/GldDBMgr;

    monitor-enter v8

    :try_start_3
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 24
    .local v1, "context":Landroid/content/Context;
    sget-object v7, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$GldTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 26
    .local v5, "uri":Landroid/net/Uri;
    const-string v7, "setGldData "

    const-string v9, "GldDBMgr"

    invoke-static {v7, v9}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 30
    .local v6, "values":Landroid/content/ContentValues;
    move-object v0, p0

    .local v0, "arr$":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServerInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_20
    if-ge v2, v3, :cond_7f

    aget-object v4, v0, v2

    .line 31
    .local v4, "server":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServerInfo;
    const-string v7, "type"

    iget-object v9, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServerInfo;->type:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v7, "address"

    iget-object v9, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServerInfo;->address:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v7, "scheme"

    iget-object v9, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServerInfo;->scheme:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v7, "port"

    iget-object v9, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServerInfo;->port:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GLD Data : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "GldDBMgr"

    invoke-static {v7, v9}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v7, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServerInfo;->type:Ljava/lang/String;

    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/db/GldDBMgr;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6a

    .line 39
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 30
    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 41
    :cond_6a
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "type = ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, v4, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServerInfo;->type:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v7, v5, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_3 .. :try_end_7b} :catchall_7c

    goto :goto_67

    .line 22
    .end local v0    # "arr$":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServerInfo;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "server":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServerInfo;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "values":Landroid/content/ContentValues;
    :catchall_7c
    move-exception v7

    monitor-exit v8

    throw v7

    .line 44
    .restart local v0    # "arr$":[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ServerInfo;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v6    # "values":Landroid/content/ContentValues;
    :cond_7f
    monitor-exit v8

    return-void
.end method
