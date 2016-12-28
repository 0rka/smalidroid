.class public Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;
.super Landroid/content/ContentProvider;
.source "EasySignUpProviderPublic.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CONTACT_SYNC_AGREEMENT:I = 0x2bc

.field private static final CONTENT_AUTHORITY:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.public"

.field private static final FEATURES_CONTENT_ID:I = 0xc9

.field private static final IMSI:I = 0x1f4

.field private static final IS_AUTH:I = 0x64

.field private static final JOIN_SIDS:I = 0x190

.field public static final PATTERN_CONTACT_SYNC_AGREEMENT:Ljava/lang/String; = "contact_sync_agreement"

.field public static final PATTERN_FEATURES:Ljava/lang/String; = "features"

.field public static final PATTERN_IMSI:Ljava/lang/String; = "imsi"

.field public static final PATTERN_IS_AUTH:Ljava/lang/String; = "is_auth"

.field public static final PATTERN_JOIN_SIDS:Ljava/lang/String; = "join_sids"

.field public static final PATTERN_SDK_SIDS:Ljava/lang/String; = "sdk_sids"

.field public static final PATTERN_SIDS:Ljava/lang/String; = "sids"

.field private static final SDK_SIDS:I = 0x258

.field private static final SIDS:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "EasySignUpProviderPublic"

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDBHandler:Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 36
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;->sURLMatcher:Landroid/content/UriMatcher;

    .line 59
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.coreapps.easysignup.public"

    const-string v2, "is_auth"

    const/16 v3, 0x64

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/app/Notification;->defaults:I
    nop

    return-wide p46

    .line 61
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.coreapps.easysignup.public"

    const-string v2, "features/#"

    const/16 v3, 0xc9

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/app/Notification;->defaults:I
    nop

    return-wide p46

    .line 62
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.coreapps.easysignup.public"

    const-string v2, "sids"

    const/16 v3, 0x12c

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/app/Notification;->defaults:I
    nop

    return-wide p46

    .line 63
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.coreapps.easysignup.public"

    const-string v2, "join_sids"

    const/16 v3, 0x190

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/app/Notification;->defaults:I
    nop

    return-wide p46

    .line 64
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.coreapps.easysignup.public"

    const-string v2, "imsi"

    const/16 v3, 0x1f4

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/app/Notification;->defaults:I
    nop

    return-wide p46

    .line 65
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.coreapps.easysignup.public"

    const-string v2, "sdk_sids"

    const/16 v3, 0x258

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/app/Notification;->defaults:I
    nop

    return-wide p46

    .line 66
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.coreapps.easysignup.public"

    const-string v2, "contact_sync_agreement"

    const/16 v3, 0x2bc

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/app/Notification;->defaults:I
    nop

    return-wide p46

    .line 67
    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 269
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 71
    const-string v0, "onCreate"

    const-string v1, "EasySignUpProviderPublic"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/common/CommonFeature;->init(Landroid/content/Context;Z)V

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/EasySignUpLib;->init(Landroid/content/Context;)V

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/coreapps/common/util/ConnectivityUtils;->init(Landroid/content/Context;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/coreapps/common/util/CommonPref;->init(Landroid/content/Context;)V

    .line 79
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonFeature;->initDBEncryptionFeature()V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/coreapps/common/util/DeviceUtils;->init(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;->mDBHandler:Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;

    .line 84
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;->mDBHandler:Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->initTable()V

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 29
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    .line 92
    .local v22, "uid":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 93
    .local v20, "pm":Landroid/content/pm/PackageManager;
    if-eqz v20, :cond_31

    .line 94
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v19

    .line 96
    .local v19, "packageName":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v19, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EasySignUpProviderPublic"

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .end local v19    # "packageName":[Ljava/lang/String;
    :cond_31
    if-eqz p3, :cond_7c

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " selection : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EasySignUpProviderPublic"

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-eqz p4, :cond_7c

    .line 102
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_50
    move-object/from16 v0, p4

    array-length v4, v0

    if-ge v15, v4, :cond_7c

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectionArgs["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p4, v15

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EasySignUpProviderPublic"

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    add-int/lit8 v15, v15, 0x1

    goto :goto_50

    .line 108
    .end local v15    # "i":I
    :cond_7c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;->mDBHandler:Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;

    invoke-virtual {v4}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 110
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProviderPublic;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    .line 112
    .local v17, "match":I
    const-string v4, "imsi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 114
    .local v16, "imsi":Ljava/lang/String;
    const/16 v4, 0x1f4

    move/from16 v0, v17

    if-eq v0, v4, :cond_a6

    const/16 v4, 0xc9

    move/from16 v0, v17

    if-eq v0, v4, :cond_a6

    .line 115
    if-nez v16, :cond_a6

    .line 116
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v16

    .line 120
    :cond_a6
    sget-boolean v4, Lcom/samsung/android/coreapps/common/CommonFeature;->LOCAL_DB_ENCRYPTION:Z

    if-eqz v4, :cond_d6

    .line 122
    :try_start_aa
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getCryptoSeedPassword()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_bb} :catch_e0

    move-result-object v16

    .line 127
    :goto_bc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encryptedParam = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EasySignUpProviderPublic"

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_d6
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 131
    .local v2, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    sparse-switch v17, :sswitch_data_37c

    .line 250
    const/4 v11, 0x0

    :goto_df
    return-object v11

    .line 123
    .end local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    :catch_e0
    move-exception v14

    .line 125
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_bc

    .line 134
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    :sswitch_e5
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ed

    .line 135
    const/4 v11, 0x0

    goto :goto_df

    .line 138
    :cond_ed
    const-string v4, "auth"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 141
    const/4 v12, 0x0

    .line 142
    .local v12, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 144
    .local v10, "access_token":Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_113
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "access_token"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 145
    if-eqz v12, :cond_13c

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_13c

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_13c

    .line 146
    const-string v4, "access_token"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_13b
    .catchall {:try_start_113 .. :try_end_13b} :catchall_164

    move-result-object v10

    .line 149
    :cond_13c
    if-eqz v12, :cond_141

    .line 150
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_141
    const/16 v18, 0x0

    .line 155
    .local v18, "mc":Landroid/database/MatrixCursor;
    if-eqz v10, :cond_160

    .line 156
    new-instance v18, Landroid/database/MatrixCursor;

    .end local v18    # "mc":Landroid/database/MatrixCursor;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "is_auth"

    aput-object v6, v4, v5

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 157
    .restart local v18    # "mc":Landroid/database/MatrixCursor;
    invoke-virtual/range {v18 .. v18}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :cond_160
    move-object/from16 v11, v18

    .line 159
    goto/16 :goto_df

    .line 149
    .end local v18    # "mc":Landroid/database/MatrixCursor;
    :catchall_164
    move-exception v4

    if-eqz v12, :cond_16a

    .line 150
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_16a
    throw v4

    .line 163
    .end local v10    # "access_token":Ljava/lang/String;
    .end local v12    # "cursor":Landroid/database/Cursor;
    :sswitch_16b
    const-string v4, "auth"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 164
    const/4 v12, 0x0

    .line 166
    .restart local v12    # "cursor":Landroid/database/Cursor;
    const/4 v4, 0x1

    :try_start_172
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "imsi"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 167
    if-eqz v12, :cond_1cb

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1cb

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1cb

    .line 168
    const-string v4, "imsi"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encryptedParam = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EasySignUpProviderPublic"

    invoke-static {v4, v5}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-boolean v4, Lcom/samsung/android/coreapps/common/CommonFeature;->LOCAL_DB_ENCRYPTION:Z
    :try_end_1b7
    .catchall {:try_start_172 .. :try_end_1b7} :catchall_1f5

    if-eqz v4, :cond_1cb

    .line 172
    :try_start_1b9
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getCryptoSeedPassword()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_1b9 .. :try_end_1ca} :catch_1f0
    .catchall {:try_start_1b9 .. :try_end_1ca} :catchall_1f5

    move-result-object v16

    .line 180
    :cond_1cb
    :goto_1cb
    if-eqz v12, :cond_1d0

    .line 181
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_1d0
    const/16 v18, 0x0

    .line 185
    .restart local v18    # "mc":Landroid/database/MatrixCursor;
    if-eqz v16, :cond_1ec

    .line 186
    new-instance v18, Landroid/database/MatrixCursor;

    .end local v18    # "mc":Landroid/database/MatrixCursor;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "imsi"

    aput-object v6, v4, v5

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 187
    .restart local v18    # "mc":Landroid/database/MatrixCursor;
    invoke-virtual/range {v18 .. v18}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :cond_1ec
    move-object/from16 v11, v18

    .line 189
    goto/16 :goto_df

    .line 173
    .end local v18    # "mc":Landroid/database/MatrixCursor;
    :catch_1f0
    move-exception v14

    .line 175
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_1f1
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f4
    .catchall {:try_start_1f1 .. :try_end_1f4} :catchall_1f5

    goto :goto_1cb

    .line 180
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_1f5
    move-exception v4

    if-eqz v12, :cond_1fb

    .line 181
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_1fb
    throw v4

    .line 192
    .end local v12    # "cursor":Landroid/database/Cursor;
    :sswitch_1fc
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v21

    .line 194
    .local v21, "sid":Ljava/lang/String;
    new-instance v18, Landroid/database/MatrixCursor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "features"

    aput-object v6, v4, v5

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 196
    .restart local v18    # "mc":Landroid/database/MatrixCursor;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_22c

    .line 197
    invoke-virtual/range {v18 .. v18}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    const-string v5, "features"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :cond_228
    :goto_228
    move-object/from16 v11, v18

    .line 214
    goto/16 :goto_df

    .line 199
    :cond_22c
    const-string v4, "policy"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sid=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 202
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "sid"

    aput-object v6, v4, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 204
    .restart local v12    # "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_28b

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_28b

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_28b

    .line 205
    invoke-virtual/range {v18 .. v18}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    const-string v5, "features"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 210
    :goto_27f
    if-eqz v12, :cond_228

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_228

    .line 211
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_228

    .line 207
    :cond_28b
    invoke-virtual/range {v18 .. v18}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    const-string v5, "features"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_27f

    .line 222
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v18    # "mc":Landroid/database/MatrixCursor;
    .end local v21    # "sid":Ljava/lang/String;
    :sswitch_29a
    const-string v4, "auth"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 224
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "sids"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 225
    .local v11, "c":Landroid/database/Cursor;
    goto/16 :goto_df

    .line 228
    .end local v11    # "c":Landroid/database/Cursor;
    :sswitch_2d1
    const-string v4, "auth"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 230
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "join_sids"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 231
    .restart local v11    # "c":Landroid/database/Cursor;
    goto/16 :goto_df

    .line 234
    .end local v11    # "c":Landroid/database/Cursor;
    :sswitch_308
    const-string v4, "auth"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 236
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "sdk_service_on_list"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 237
    .restart local v11    # "c":Landroid/database/Cursor;
    goto/16 :goto_df

    .line 241
    .end local v11    # "c":Landroid/database/Cursor;
    :sswitch_33f
    const-string v4, "data_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 242
    .local v13, "data_name":Ljava/lang/String;
    const-string v4, "data"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data_name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 244
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data_value"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 245
    .restart local v11    # "c":Landroid/database/Cursor;
    goto/16 :goto_df

    .line 131
    :sswitch_data_37c
    .sparse-switch
        0x64 -> :sswitch_e5
        0xc9 -> :sswitch_1fc
        0x12c -> :sswitch_29a
        0x190 -> :sswitch_2d1
        0x1f4 -> :sswitch_16b
        0x258 -> :sswitch_308
        0x2bc -> :sswitch_33f
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method
