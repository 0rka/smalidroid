.class public Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;
.super Landroid/content/ContentProvider;
.source "EasySignUpProvider.java"


# static fields
.field private static final AUTH:I = 0x0

.field private static final DATA:I = 0xfa0

.field private static final DATA_CONTENT_ID:I = 0xfa1

.field private static final GLD:I = 0x3e8

.field private static final GLD_CONTENT_ID:I = 0x3e9

.field private static final POLICY:I = 0xbb8

.field private static final POLICY_CONTENT_ID:I = 0xbb9

.field private static final SERVICE:I = 0x7d0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SERVICE_CONTENT_ID:I = 0x7d1

.field private static final TAG:Ljava/lang/String; = "EasySignUpProvider"

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDBCipherManager:Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;

.field private mDBHandler:Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 35
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 60
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.coreapps.easysignup"

    const-string v2, "auth"

    const/4 v3, 0x0

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/app/Notification;->defaults:I
    nop

    return-wide p46

    .line 63
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.coreapps.easysignup"

    const-string v2, "gld"

    const/16 v3, 0x3e8

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/app/Notification;->defaults:I
    nop

    return-wide p46

    .line 64
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.coreapps.easysignup"

    const-string v2, "gld/#"

    const/16 v3, 0x3e9

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/app/Notification;->defaults:I
    nop

    return-wide p46

    .line 67
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.coreapps.easysignup"

    const-string v2, "service/#"

    const/16 v3, 0x7d1

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/app/Notification;->defaults:I
    nop

    return-wide p46

    .line 69
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.coreapps.easysignup"

    const-string v2, "policy"

    const/16 v3, 0xbb8

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/app/Notification;->defaults:I
    nop

    return-wide p46

    .line 70
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.coreapps.easysignup"

    const-string v2, "policy/#"

    const/16 v3, 0xbb9

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/app/Notification;->defaults:I
    nop

    return-wide p46

    .line 72
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.coreapps.easysignup"

    const-string v2, "data"

    const/16 v3, 0xfa0

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/app/Notification;->defaults:I
    nop

    return-wide p46

    .line 73
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.android.coreapps.easysignup"

    const-string v2, "data/#"

    const/16 v3, 0xfa1

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/app/Notification;->defaults:I
    nop

    return-wide p46

    .line 74
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

.method public static concateSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "selection1"    # Ljava/lang/String;
    .param p1, "selection2"    # Ljava/lang/String;

    .prologue
    .line 405
    if-eqz p0, :cond_8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    move-object p0, p1

    .line 410
    .end local p0    # "selection1":Ljava/lang/String;
    :cond_9
    :goto_9
    return-object p0

    .line 407
    .restart local p0    # "selection1":Ljava/lang/String;
    :cond_a
    if-eqz p1, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_9
.end method

.method private getColumnListToNeedCipher()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "imsi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    const-string v1, "duid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    const-string v1, "msisdn"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    const-string v1, "refresh_token"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    const-string v1, "address"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    return-object v0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 390
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v2, "starting transaction"

    const-string v3, "EasySignUpProvider"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :try_start_7
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_a
    .catch Landroid/content/OperationApplicationException; {:try_start_7 .. :try_end_a} :catch_13

    move-result-object v1

    .line 400
    .local v1, "result":[Landroid/content/ContentProviderResult;
    const-string v2, "ending transaction"

    const-string v3, "EasySignUpProvider"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return-object v1

    .line 395
    .end local v1    # "result":[Landroid/content/ContentProviderResult;
    :catch_13
    move-exception v0

    .line 396
    .local v0, "e":Landroid/content/OperationApplicationException;
    const-string v2, "aborting transaction"

    const-string v3, "EasySignUpProvider"

    invoke-static {v2, v3}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 322
    const-string v7, "delete"

    const-string v8, "EasySignUpProvider"

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uri : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EasySignUpProvider"

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    if-eqz p2, :cond_66

    .line 326
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " selection : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EasySignUpProvider"

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    if-eqz p3, :cond_66

    .line 328
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3c
    array-length v7, p3

    if-ge v4, v7, :cond_66

    .line 329
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectionArgs["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p3, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EasySignUpProvider"

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 334
    .end local v4    # "i":I
    :cond_66
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->mDBHandler:Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;

    invoke-virtual {v7}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 336
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v7, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 337
    .local v5, "match":I
    const/4 v6, 0x0

    .line 339
    .local v6, "table":Ljava/lang/String;
    const/4 v2, 0x0

    .line 356
    .local v2, "extraSelection":Ljava/lang/String;
    sparse-switch v5, :sswitch_data_e0

    .line 371
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid uri for delete uri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EasySignUpProvider"

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const/4 v0, 0x0

    .line 385
    :cond_90
    :goto_90
    return v0

    .line 359
    :sswitch_91
    const-string v6, "auth"

    .line 375
    :goto_93
    invoke-static {p2, v2}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->concateSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, "finalSelection":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finalSelection : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EasySignUpProvider"

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {v1, v6, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 380
    .local v0, "count":I
    if-lez v0, :cond_90

    .line 381
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 382
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EasySignUpProvider"

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    .line 363
    .end local v0    # "count":I
    .end local v3    # "finalSelection":Ljava/lang/String;
    :sswitch_da
    const-string v6, "gld"

    .line 364
    goto :goto_93

    .line 367
    :sswitch_dd
    const-string v6, "policy"

    .line 368
    goto :goto_93

    .line 356
    :sswitch_data_e0
    .sparse-switch
        0x0 -> :sswitch_91
        0x3e8 -> :sswitch_da
        0xbb8 -> :sswitch_dd
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 416
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 421
    .local v0, "match":I
    const-string v1, "*/*"

    return-object v1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x0

    .line 102
    const-string v7, "insert"

    const-string v8, "EasySignUpProvider"

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uri : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , values = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EasySignUpProvider"

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->mDBHandler:Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;

    invoke-virtual {v7}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 107
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 109
    .local v3, "returnUri":Landroid/net/Uri;
    sget-object v7, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 110
    .local v2, "match":I
    const-wide/16 v4, -0x1

    .line 112
    .local v4, "resultID":J
    const-string v7, "imsi"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "imsi":Ljava/lang/String;
    if-eqz v2, :cond_53

    const/16 v7, 0x7d0

    if-eq v2, v7, :cond_53

    const/16 v7, 0x7d1

    if-ne v2, v7, :cond_5e

    .line 115
    :cond_53
    if-nez v1, :cond_59

    .line 116
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 119
    :cond_59
    const-string v7, "imsi"

    invoke-virtual {p2, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_5e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "query param = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/samsung/android/coreapps/common/util/CommonLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EasySignUpProvider"

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-boolean v7, Lcom/samsung/android/coreapps/common/CommonFeature;->LOCAL_DB_ENCRYPTION:Z

    if-eqz v7, :cond_83

    .line 125
    iget-object v7, p0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->mDBCipherManager:Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;

    invoke-virtual {v7, p2}, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->encryptValues(Landroid/content/ContentValues;)V

    .line 128
    :cond_83
    sparse-switch v2, :sswitch_data_ec

    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid uri for insert uri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EasySignUpProvider"

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_9e
    return-object v6

    .line 130
    :sswitch_9f
    const-string v7, "auth"

    invoke-virtual {v0, v7, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 131
    sget-object v7, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$AuthTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 149
    :goto_ab
    if-eqz v3, :cond_d0

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 151
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "returnUri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "EasySignUpProvider"

    invoke-static {v6, v7}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d0
    move-object v6, v3

    .line 154
    goto :goto_9e

    .line 135
    :sswitch_d2
    const-string v7, "gld"

    invoke-virtual {v0, v7, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 136
    sget-object v7, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$GldTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 137
    goto :goto_ab

    .line 140
    :sswitch_df
    const-string v7, "policy"

    invoke-virtual {v0, v7, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 141
    sget-object v7, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper$PolicyTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 142
    goto :goto_ab

    .line 128
    :sswitch_data_ec
    .sparse-switch
        0x0 -> :sswitch_9f
        0x3e8 -> :sswitch_d2
        0xbb8 -> :sswitch_df
    .end sparse-switch
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 80
    const-string v0, "onCreate"

    const-string v1, "EasySignUpProvider"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/common/CommonFeature;->init(Landroid/content/Context;Z)V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/EasySignUpLib;->init(Landroid/content/Context;)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/coreapps/common/util/ConnectivityUtils;->init(Landroid/content/Context;)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->mDBHandler:Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;

    .line 87
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->mDBHandler:Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;

    invoke-virtual {v0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->initTable()V

    .line 89
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->mDBCipherManager:Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;

    .line 92
    sget-boolean v0, Lcom/samsung/android/coreapps/common/CommonFeature;->LOCAL_DB_ENCRYPTION:Z

    if-eqz v0, :cond_44

    .line 93
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->mDBCipherManager:Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;

    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->getColumnListToNeedCipher()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->addColumnListToNeedCipher(Ljava/util/List;)V

    .line 97
    :cond_44
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v3, "query"

    const-string v4, "EasySignUpProvider"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EasySignUpProvider"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    if-eqz p3, :cond_6a

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " selection : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EasySignUpProvider"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-eqz p4, :cond_6a

    .line 165
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3e
    move-object/from16 v0, p4

    array-length v3, v0

    if-ge v10, v3, :cond_6a

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectionArgs["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EasySignUpProvider"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    add-int/lit8 v10, v10, 0x1

    goto :goto_3e

    .line 182
    .end local v10    # "i":I
    :cond_6a
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->mDBHandler:Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;

    invoke-virtual {v3}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 184
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 186
    .local v12, "match":I
    const-string v3, "imsi"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 187
    .local v11, "imsi":Ljava/lang/String;
    if-nez v12, :cond_84

    .line 188
    if-nez v11, :cond_84

    .line 189
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v11

    .line 193
    :cond_84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query param = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v11}, Lcom/samsung/android/coreapps/common/util/CommonLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EasySignUpProvider"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-boolean v3, Lcom/samsung/android/coreapps/common/CommonFeature;->LOCAL_DB_ENCRYPTION:Z

    if-eqz v3, :cond_b4

    .line 197
    :try_start_a4
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getCryptoSeedPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v11}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_b3} :catch_d6

    move-result-object v11

    .line 204
    :cond_b4
    :goto_b4
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 205
    .local v1, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    sparse-switch v12, :sswitch_data_114

    .line 224
    :goto_bc
    const/4 v13, 0x0

    .line 226
    .local v13, "ret":Landroid/database/Cursor;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    :try_start_c7
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_ca
    .catch Ljava/lang/IllegalStateException; {:try_start_c7 .. :try_end_ca} :catch_10f

    move-result-object v13

    .line 231
    :goto_cb
    sget-boolean v3, Lcom/samsung/android/coreapps/common/CommonFeature;->LOCAL_DB_ENCRYPTION:Z

    if-eqz v3, :cond_d5

    .line 232
    iget-object v3, p0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->mDBCipherManager:Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;

    invoke-virtual {v3, v13}, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->decryptValues(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v13

    .line 234
    .end local v13    # "ret":Landroid/database/Cursor;
    :cond_d5
    return-object v13

    .line 198
    .end local v1    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    :catch_d6
    move-exception v9

    .line 200
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b4

    .line 207
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v1    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    :sswitch_db
    const-string v3, "auth"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imsi=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_bc

    .line 213
    :sswitch_fd
    const-string v3, "gld"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_bc

    .line 217
    :sswitch_103
    const-string v3, "policy"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_bc

    .line 221
    :sswitch_109
    const-string v3, "data"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_bc

    .line 227
    .restart local v13    # "ret":Landroid/database/Cursor;
    :catch_10f
    move-exception v9

    .line 228
    .local v9, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_cb

    .line 205
    :sswitch_data_114
    .sparse-switch
        0x0 -> :sswitch_db
        0x3e8 -> :sswitch_fd
        0xbb8 -> :sswitch_103
        0xfa0 -> :sswitch_109
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 240
    const-string v9, "update"

    const-string v10, "EasySignUpProvider"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uri : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , values = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "EasySignUpProvider"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    if-eqz p3, :cond_7a

    .line 244
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " selection : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "EasySignUpProvider"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    if-eqz p4, :cond_7a

    .line 246
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_50
    array-length v9, p4

    if-ge v5, v9, :cond_7a

    .line 247
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "selectionArgs["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, p4, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "EasySignUpProvider"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    .line 252
    .end local v5    # "i":I
    :cond_7a
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->mDBHandler:Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;

    invoke-virtual {v9}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 254
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v9, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    .line 255
    .local v7, "match":I
    const/4 v0, 0x0

    .line 257
    .local v0, "count":I
    const/4 v8, 0x0

    .line 259
    .local v8, "table":Ljava/lang/String;
    const/4 v3, 0x0

    .line 261
    .local v3, "extraSelection":Ljava/lang/String;
    const-string v9, "imsi"

    invoke-virtual {p1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, "imsi":Ljava/lang/String;
    if-nez v7, :cond_97

    .line 263
    if-nez v6, :cond_97

    .line 264
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v6

    .line 267
    :cond_97
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "query param = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Lcom/samsung/android/coreapps/common/util/CommonLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "EasySignUpProvider"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-boolean v9, Lcom/samsung/android/coreapps/common/CommonFeature;->LOCAL_DB_ENCRYPTION:Z

    if-eqz v9, :cond_c7

    .line 271
    :try_start_b7
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v9

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getInstance()Lcom/samsung/android/coreapps/common/util/AESCryptoV02;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->getCryptoSeedPassword()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Lcom/samsung/android/coreapps/common/util/AESCryptoV02;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c6} :catch_e4

    move-result-object v6

    .line 278
    :cond_c7
    :goto_c7
    sparse-switch v7, :sswitch_data_17e

    .line 298
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid uri for insert uri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "EasySignUpProvider"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v9, 0x0

    .line 317
    :goto_e3
    return v9

    .line 272
    :catch_e4
    move-exception v2

    .line 274
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c7

    .line 280
    .end local v2    # "e":Ljava/lang/Exception;
    :sswitch_e9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "imsi=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 281
    const-string v8, "auth"

    .line 302
    :goto_104
    invoke-static {p3, v3}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->concateSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "finalSelection":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "finalSelection : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "EasySignUpProvider"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-boolean v9, Lcom/samsung/android/coreapps/common/CommonFeature;->LOCAL_DB_ENCRYPTION:Z

    if-eqz v9, :cond_129

    .line 307
    iget-object v9, p0, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->mDBCipherManager:Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;

    invoke-virtual {v9, p2}, Lcom/samsung/android/coreapps/easysignup/db/DBCipherManager;->encryptValues(Landroid/content/ContentValues;)V

    .line 310
    :cond_129
    invoke-virtual {v1, v8, p2, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 312
    if-lez v0, :cond_153

    .line 313
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/db/EasySignUpProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 314
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "EasySignUpProvider"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_153
    move v9, v0

    .line 317
    goto :goto_e3

    .line 285
    .end local v4    # "finalSelection":Ljava/lang/String;
    :sswitch_155
    const-string v8, "gld"

    .line 286
    goto :goto_104

    .line 289
    :sswitch_158
    const-string v8, "policy"

    .line 290
    goto :goto_104

    .line 293
    :sswitch_15b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data_name=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "data_name"

    invoke-virtual {p1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 294
    const-string v8, "data"

    .line 295
    goto :goto_104

    .line 278
    nop

    :sswitch_data_17e
    .sparse-switch
        0x0 -> :sswitch_e9
        0x3e8 -> :sswitch_155
        0xbb8 -> :sswitch_158
        0xfa0 -> :sswitch_15b
    .end sparse-switch
.end method
