.class public Lcom/samsung/android/coreapps/easysignup/setting/SettingSelfUpdate;
.super Landroid/preference/Preference;
.source "SettingSelfUpdate.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SettingSelfUpdate"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrVer:Landroid/widget/TextView;

.field private mLastVer:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingSelfUpdate;->mContext:Landroid/content/Context;

    .line 30
    sget v0, Lcom/samsung/android/coreapps/easysignup/R$layout;->layout_setting_update:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingSelfUpdate;->setLayoutResource(I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 35
    const-string v0, "onBindView"

    const-string v1, "SettingSelfUpdate"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 38
    sget v0, Lcom/samsung/android/coreapps/easysignup/R$id;->text_curr_ver:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingSelfUpdate;->mCurrVer:Landroid/widget/TextView;

    .line 39
    sget v0, Lcom/samsung/android/coreapps/easysignup/R$id;->text_latest_ver:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingSelfUpdate;->mLastVer:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/setting/SettingSelfUpdate;->updateText()V

    .line 42
    return-void
.end method

.method public updateText()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    .line 45
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingSelfUpdate;->mCurrVer:Landroid/widget/TextView;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingSelfUpdate;->mLastVer:Landroid/widget/TextView;

    if-nez v5, :cond_12

    .line 46
    :cond_a
    const-string v5, "version textview is null"

    const-string v6, "SettingSelfUpdate"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_11
    return-void

    .line 50
    :cond_12
    const-string v0, "Unknown"

    .line 51
    .local v0, "currVer":Ljava/lang/String;
    const-string v2, ""

    .line 53
    .local v2, "lastCheckTime":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingSelfUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 54
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_2b

    .line 56
    :try_start_1e
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingSelfUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_2b} :catch_a3

    .line 64
    :cond_2b
    :goto_2b
    const-string v5, "last_update_check_time"

    invoke-static {v5, v8, v9}, Lcom/samsung/android/coreapps/easysignup/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 66
    .local v3, "lastTime":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-lez v5, :cond_48

    .line 67
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy.MM.dd"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 70
    :cond_48
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currVer : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lastVer : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SettingSelfUpdate"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v5, "PRD"

    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getServerEnv()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_97

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonServerInterface;->getServerEnv()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_97
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingSelfUpdate;->mCurrVer:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v5, p0, Lcom/samsung/android/coreapps/easysignup/setting/SettingSelfUpdate;->mLastVer:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 57
    .end local v3    # "lastTime":Ljava/lang/Long;
    :catch_a3
    move-exception v1

    .line 58
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SettingSelfUpdate"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b
.end method
