.class public Lcom/samsung/android/coreapps/easysignup/util/SPref;
.super Ljava/lang/Object;
.source "SPref.java"


# static fields
.field private static final PREF_FILE:Ljava/lang/String; = "self_upgrade_pref"

.field public static final PREF_KEY_LAST_UPDATE_CHECK_TIME:Ljava/lang/String; = "spref_key_last_update_check_time"

.field static sCtx:Landroid/content/Context;

.field private static sPref:Lcom/samsung/android/coreapps/easysignup/util/SPref;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Lcom/samsung/android/coreapps/easysignup/util/SPref;

    invoke-direct {v0}, Lcom/samsung/android/coreapps/easysignup/util/SPref;-><init>()V

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/util/SPref;->sPref:Lcom/samsung/android/coreapps/easysignup/util/SPref;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/coreapps/easysignup/util/SPref;
    .registers 2

    .prologue
    .line 21
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/util/SPref;->sCtx:Landroid/content/Context;

    if-nez v0, :cond_d

    .line 22
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/util/SPref;->sPref:Lcom/samsung/android/coreapps/easysignup/util/SPref;

    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/SPref;->init(Landroid/content/Context;)V

    .line 24
    :cond_d
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/util/SPref;->sPref:Lcom/samsung/android/coreapps/easysignup/util/SPref;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 17
    sput-object p1, Lcom/samsung/android/coreapps/easysignup/util/SPref;->sCtx:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/Long;

    .prologue
    .line 33
    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/SPref;->sCtx:Landroid/content/Context;

    const-string v3, "self_upgrade_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 35
    .local v1, "value":Ljava/lang/Long;
    return-object v1
.end method

.method public putLong(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ll"    # Ljava/lang/Long;

    .prologue
    .line 28
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/SPref;->sCtx:Landroid/content/Context;

    const-string v2, "self_upgrade_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 29
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 30
    return-void
.end method
