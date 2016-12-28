.class public Lcom/samsung/android/coreapps/easysignup/util/SLog;
.super Ljava/lang/Object;
.source "SLog.java"


# static fields
.field private static final ACTION_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field private static final ENABLE_SURVEY_MODE:Ljava/lang/String; = "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

.field public static final KEY_APP_ID:Ljava/lang/String; = "app_id"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_EXTRA:Ljava/lang/String; = "extra"

.field public static final KEY_FEATURE:Ljava/lang/String; = "feature"

.field public static final KEY_VALUE:Ljava/lang/String; = "value"

.field public static final PACKAGE_SURVEY:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final TAG:Ljava/lang/String; = "SLog"

.field private static mAppId:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mEnabled:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/util/SLog;->mEnabled:Ljava/lang/Boolean;

    .line 30
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/util/SLog;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/sdl/FloatingFeatureRef;->isSurveyModeEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/util/SLog;->mEnabled:Ljava/lang/Boolean;

    .line 32
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/util/SLog;->mContext:Landroid/content/Context;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/util/SLog;->mAppId:Ljava/lang/String;

    .line 33
    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 36
    sput-object p0, Lcom/samsung/android/coreapps/easysignup/util/SLog;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/sdl/FloatingFeatureRef;->isSurveyModeEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/util/SLog;->mEnabled:Ljava/lang/Boolean;

    .line 38
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/util/SLog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/util/SLog;->mAppId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private static send(Landroid/content/ContentValues;)V
    .registers 3
    .param p0, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v1, "com.samsung.android.providers.context"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "data"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/SLog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method public static single(Ljava/lang/String;)V
    .registers 4
    .param p0, "feature"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/SLog;->mEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 68
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "app_id"

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/SLog;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "feature"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/util/SLog;->send(Landroid/content/ContentValues;)V

    .line 74
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_1c
    return-void
.end method

.method public static single(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "feature"    # Ljava/lang/String;
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 54
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/SLog;->mEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 55
    const-string v1, "SLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog.single("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "single2"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "app_id"

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/SLog;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "feature"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/util/SLog;->send(Landroid/content/ContentValues;)V

    .line 64
    .end local v0    # "cv":Landroid/content/ContentValues;
    :goto_4b
    return-void

    .line 63
    :cond_4c
    const-string v1, "SLog"

    const-string v2, "LOG disabled"

    const-string v3, "single2"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method

.method public static single(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8
    .param p0, "feature"    # Ljava/lang/String;
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 42
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/SLog;->mEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 43
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 44
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "app_id"

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/SLog;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "feature"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "value"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/util/SLog;->send(Landroid/content/ContentValues;)V

    .line 51
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_2a
    return-void
.end method
