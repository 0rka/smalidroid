.class public Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EasySignUpDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$DataTable;,
        Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$PolicyTable;,
        Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$GldTable;,
        Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthTable;,
        Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$HeartBeatContainerColumns;,
        Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$PolicyColumns;,
        Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$GldColumns;,
        Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthColumns;,
        Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$DataColumns;,
        Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$Tables;
    }
.end annotation


# static fields
.field public static final BASE_CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_AUTHORITY:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup"

.field public static final DATA_CONTACT_SYNC_AGREEMENT:Ljava/lang/String; = "contact_sync_agreement"

.field private static final DB_FILE:Ljava/lang/String; = "easysignup.db"

.field private static final DB_VER:I = 0x7

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->TAG:Ljava/lang/String;

    .line 29
    const-string v0, "content://com.samsung.android.coreapps.easysignup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->BASE_CONTENT_URI:Landroid/net/Uri;

    #unknown opcode: 0x73
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const-string v0, "easysignup.db"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 95
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->mContext:Landroid/content/Context;

    .line 96
    return-void
.end method

.method private createAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 130
    const-string v0, "create auth table"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "CREATE TABLE IF NOT EXISTS auth (imsi TEXT NOT NULL, msisdn TEXT, duid TEXT, refresh_token TEXT, access_token TEXT, sids TEXT, join_sids TEXT, tnc_setting_time INTEGER, sdk_service_on_list TEXT, tnc_agree_service_list TEXT, PRIMARY KEY (imsi) )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method private createDataTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 183
    const-string v0, "create data table"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v0, "data"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->exists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 185
    const-string v0, "CREATE TABLE IF NOT EXISTS data (data_name TEXT, data_value TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    const-string v0, "INSERT INTO data (data_name, data_value) VALUES (\'contact_sync_agreement\', \'true\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    :cond_19
    return-void
.end method

.method private createGLDTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 146
    const-string v0, "create gld table"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "CREATE TABLE IF NOT EXISTS gld (type TEXT, address TEXT, scheme TEXT, port INTEGER, PRIMARY KEY (type) )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private createPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 156
    const-string v3, "create policy table"

    sget-object v4, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v3, "policy"

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->exists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 159
    const-string v3, "CREATE TABLE IF NOT EXISTS policy (sid INTEGER, config TEXT )"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    :try_start_18
    sget-object v3, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4b

    .line 166
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 168
    .local v2, "values":Landroid/content/ContentValues;
    sget-object v3, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/samsung/android/coreapps/common/CommonFeature;->isSupportService(I)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 165
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 171
    :cond_2f
    const-string v3, "sid"

    sget-object v4, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->SERVICE_ID_LIST:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v3, "policy"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_42} :catch_43

    goto :goto_2c

    .line 175
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_43
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_47
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 180
    .end local v1    # "i":I
    :cond_4a
    return-void

    .line 174
    .restart local v1    # "i":I
    :cond_4b
    :try_start_4b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_43

    goto :goto_47
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const-class v1, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->sInstance:Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;

    if-nez v0, :cond_e

    .line 100
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->sInstance:Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;

    .line 102
    :cond_e
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->sInstance:Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 99
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private upgradeDatabase(ILandroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .param p1, "oldVersion"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v2, 0x7

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upgradeDatabase version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 219
    const/4 v0, 0x5

    if-ge p1, v0, :cond_3e

    .line 220
    :try_start_29
    const-string v0, "ALTER TABLE auth ADD join_sids TEXT;"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 221
    const-string v0, "UPDATE auth SET join_sids=sids;"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$ServiceStatus;->get(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/common/util/SettingsGlobalHelper$JoinServiceStatus;->set(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    :cond_3e
    const/4 v0, 0x6

    if-ge p1, v0, :cond_4b

    .line 225
    const-string v0, "ALTER TABLE auth ADD sdk_service_on_list TEXT;"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 226
    const-string v0, "ALTER TABLE auth ADD tnc_agree_service_list TEXT;"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 231
    :cond_4b
    if-ge p1, v2, :cond_50

    .line 232
    invoke-direct {p0, p2}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->createDataTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 234
    :cond_50
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_53
    .catchall {:try_start_29 .. :try_end_53} :catchall_57

    .line 236
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 238
    return-void

    .line 236
    :catchall_57
    move-exception v0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method


# virtual methods
.method public clearTable(Ljava/lang/String;)V
    .registers 5
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear table = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 126
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public exists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select DISTINCT tbl_name from sqlite_master where tbl_name = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 198
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2e

    .line 199
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2b

    .line 200
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 201
    const/4 v1, 0x1

    .line 205
    :goto_2a
    return v1

    .line 203
    :cond_2b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_2e
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method public initTable()V
    .registers 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 116
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->createAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 117
    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->createGLDTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 118
    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->createPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 119
    invoke-direct {p0, v0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->createDataTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 120
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 107
    const-string v0, "onCreate()"

    sget-object v1, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->createAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->createGLDTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->createPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->createDataTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 112
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 210
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->upgradeDatabase(ILandroid/database/sqlite/SQLiteDatabase;)V

    .line 211
    return-void
.end method
