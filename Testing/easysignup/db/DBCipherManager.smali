.class public Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;
.super Ljava/lang/Object;
.source "DBCipherManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mColumnsToNeedCipher:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->TAG:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->mColumnsToNeedCipher:Ljava/util/List;

    .line 47
    return-void
.end method

.method private addColumnToNeedCipher(Ljava/lang/String;)V
    .registers 3
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->mColumnsToNeedCipher:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 69
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->mColumnsToNeedCipher:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_d
    return-void
.end method

.method private doesHaveColumnsToDecrypt(Landroid/database/Cursor;)Z
    .registers 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 113
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->mColumnsToNeedCipher:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    .local v0, "column":Ljava/lang/String;
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 115
    const/4 v2, 0x1

    .line 118
    .end local v0    # "column":Ljava/lang/String;
    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public declared-synchronized addColumnListToNeedCipher(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    .local v0, "column":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->addColumnToNeedCipher(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_15

    goto :goto_5

    .line 62
    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2

    .line 65
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_18
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized decryptValues(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 20
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 124
    monitor-enter p0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_d0

    move-result v16

    if-nez v16, :cond_b

    .line 193
    .end local p1    # "cursor":Landroid/database/Cursor;
    :cond_9
    :goto_9
    monitor-exit p0

    return-object p1

    .line 128
    .restart local p1    # "cursor":Landroid/database/Cursor;
    :cond_b
    :try_start_b
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->doesHaveColumnsToDecrypt(Landroid/database/Cursor;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 132
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "columnNames":[Ljava/lang/String;
    new-instance v12, Landroid/database/MatrixCursor;

    invoke-direct {v12, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 134
    .local v12, "newCursor":Landroid/database/MatrixCursor;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 135
    const/4 v8, 0x0

    .line 137
    .local v8, "encryptedColumn":Z
    :cond_1e
    invoke-virtual {v12}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v13

    .line 138
    .local v13, "row":Landroid/database/MatrixCursor$RowBuilder;
    move-object v2, v5

    .local v2, "arr$":[Ljava/lang/String;
    array-length v11, v2

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .local v10, "i$":I
    :goto_26
    if-ge v10, v11, :cond_109

    aget-object v3, v2, v10

    .line 139
    .local v3, "column":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->mColumnsToNeedCipher:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v10    # "i$":I
    .local v9, "i$":Ljava/util/Iterator;
    :cond_34
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_47

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 140
    .local v14, "targetColumn":Ljava/lang/String;
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_34

    .line 141
    const/4 v8, 0x1

    .line 146
    .end local v14    # "targetColumn":Ljava/lang/String;
    :cond_47
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 148
    .local v4, "columnIndex":I
    if-eqz v8, :cond_d7

    .line 149
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 150
    .local v15, "value":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_d3

    .line 151
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "####f column : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " / value : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->TAG:Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_b .. :try_end_81} :catchall_d0

    .line 154
    :try_start_81
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v16

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getCryptoSeedPassword()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, "decryptedValue":Ljava/lang/String;
    invoke-virtual {v13, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 157
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "####f column : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " / decryptedValue : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->TAG:Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_be} :catch_c4
    .catchall {:try_start_81 .. :try_end_be} :catchall_d0

    .line 165
    .end local v6    # "decryptedValue":Ljava/lang/String;
    :goto_be
    const/4 v8, 0x0

    .line 138
    .end local v15    # "value":Ljava/lang/String;
    :goto_bf
    add-int/lit8 v9, v10, 0x1

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto/16 :goto_26

    .line 158
    .end local v10    # "i$":I
    .local v9, "i$":Ljava/util/Iterator;
    .restart local v15    # "value":Ljava/lang/String;
    :catch_c4
    move-exception v7

    .line 159
    .local v7, "e":Ljava/lang/Exception;
    :try_start_c5
    sget-object v16, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->TAG:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lcom/samsung/android/coreapps/common/util/CommonLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v13, v15}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_cf
    .catchall {:try_start_c5 .. :try_end_cf} :catchall_d0

    goto :goto_be

    .line 124
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "column":Ljava/lang/String;
    .end local v4    # "columnIndex":I
    .end local v5    # "columnNames":[Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "encryptedColumn":Z
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "len$":I
    .end local v12    # "newCursor":Landroid/database/MatrixCursor;
    .end local v13    # "row":Landroid/database/MatrixCursor$RowBuilder;
    .end local v15    # "value":Ljava/lang/String;
    :catchall_d0
    move-exception v16

    monitor-exit p0

    throw v16

    .line 163
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v3    # "column":Ljava/lang/String;
    .restart local v4    # "columnIndex":I
    .restart local v5    # "columnNames":[Ljava/lang/String;
    .restart local v8    # "encryptedColumn":Z
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "len$":I
    .restart local v12    # "newCursor":Landroid/database/MatrixCursor;
    .restart local v13    # "row":Landroid/database/MatrixCursor$RowBuilder;
    .restart local v15    # "value":Ljava/lang/String;
    :cond_d3
    :try_start_d3
    invoke-virtual {v13, v15}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_be

    .line 167
    .end local v15    # "value":Ljava/lang/String;
    :cond_d7
    const/4 v15, 0x0

    .line 168
    .local v15, "value":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getType(I)I

    move-result v16

    packed-switch v16, :pswitch_data_116

    .line 186
    .end local v15    # "value":Ljava/lang/Object;
    :goto_e1
    :pswitch_e1
    invoke-virtual {v13, v15}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_bf

    .line 170
    .restart local v15    # "value":Ljava/lang/Object;
    :pswitch_e5
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 171
    .local v15, "value":Ljava/lang/String;
    goto :goto_e1

    .line 173
    .local v15, "value":Ljava/lang/Object;
    :pswitch_ec
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 174
    .local v15, "value":Ljava/lang/Long;
    goto :goto_e1

    .line 176
    .local v15, "value":Ljava/lang/Object;
    :pswitch_f7
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    .line 177
    .local v15, "value":Ljava/lang/Double;
    goto :goto_e1

    .line 179
    .local v15, "value":Ljava/lang/Object;
    :pswitch_102
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    .line 180
    .local v15, "value":[B
    goto :goto_e1

    .line 190
    .end local v3    # "column":Ljava/lang/String;
    .end local v4    # "columnIndex":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v15    # "value":[B
    .restart local v10    # "i$":I
    :cond_109
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-nez v16, :cond_1e

    .line 192
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V
    :try_end_112
    .catchall {:try_start_d3 .. :try_end_112} :catchall_d0

    move-object/from16 p1, v12

    .line 193
    goto/16 :goto_9

    .line 168
    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_e1
        :pswitch_ec
        :pswitch_f7
        :pswitch_e5
        :pswitch_102
    .end packed-switch
.end method

.method public declared-synchronized encryptValues(Landroid/content/ContentValues;)V
    .registers 9
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 88
    monitor-enter p0

    if-nez p1, :cond_c

    .line 89
    :try_start_3
    const-string v5, "ContentValues is null"

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_4d

    .line 110
    :cond_a
    monitor-exit p0

    return-void

    .line 92
    :cond_c
    :try_start_c
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->mColumnsToNeedCipher:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    .local v0, "column":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "temp":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is null."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_c .. :try_end_4c} :catchall_4d

    goto :goto_12

    .line 88
    .end local v0    # "column":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "temp":Ljava/lang/String;
    :catchall_4d
    move-exception v5

    monitor-exit p0

    throw v5

    .line 99
    .restart local v0    # "column":Ljava/lang/String;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "temp":Ljava/lang/String;
    :cond_50
    :try_start_50
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getCryptoSeedPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "encryptedMsg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "column : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / msg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , encryptedMsg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_8f} :catch_90
    .catchall {:try_start_50 .. :try_end_8f} :catchall_4d

    goto :goto_12

    .line 103
    .end local v2    # "encryptedMsg":Ljava/lang/String;
    :catch_90
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    :try_start_91
    sget-object v5, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/samsung/android/coreapps/common/util/CommonLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catchall {:try_start_91 .. :try_end_99} :catchall_4d

    goto/16 :goto_12
.end method

.method public declared-synchronized removeAllColumnToNeedCipher()V
    .registers 2

    .prologue
    .line 80
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->mColumnsToNeedCipher:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 81
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->mColumnsToNeedCipher:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->mColumnsToNeedCipher:Ljava/util/List;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 84
    :cond_d
    monitor-exit p0

    return-void

    .line 80
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeColumnToNeedCipher(Ljava/lang/String;)V
    .registers 3
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->mColumnsToNeedCipher:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 75
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->mColumnsToNeedCipher:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 77
    :cond_e
    monitor-exit p0

    return-void

    .line 74
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
