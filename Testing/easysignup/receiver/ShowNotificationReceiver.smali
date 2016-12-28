.class public Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShowNotificationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;
    }
.end annotation


# static fields
.field private static final ACTION_HIDE_NOTIFICATION:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_HIDE_NOTIFICATION"

.field private static final ACTION_SHOW_NOTIFICATION:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_SHOW_NOTIFICATION"

.field private static final ACTION_STOP_ALARM:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_STOP_ALARM"

.field private static final DAY:J = 0x5265c00L

.field private static final EXTRA_NOTIFICATION_STEP:Ljava/lang/String; = "NOTIFICATION_STEP"

.field private static final HOUR:J = 0x36ee80L

.field private static final MIN:J = 0xea60L

.field private static final NOTI_ID:I = 0x1

.field private static final SEC:J = 0x3e8L

.field private static final SETUPWIZARD_COMPLETE:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

.field private static final TAG:Ljava/lang/String; = "ShowNotificationReceiver"

.field private static mContext:Landroid/content/Context;

.field private static sNotis:[Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->sNotis:[Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    return-void
.end method

.method public static hideNotification(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    const-string v1, "hideNotification"

    const-string v2, "ShowNotificationReceiver"

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sput-object p0, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->mContext:Landroid/content/Context;

    .line 150
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->setNotis()V

    .line 152
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 153
    .local v0, "nm":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 155
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->stopAlarm()V

    .line 156
    return-void
.end method

.method public static restoreAlarm(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 159
    const-string v0, "restoreAlarm"

    const-string v1, "ShowNotificationReceiver"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sput-object p0, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->mContext:Landroid/content/Context;

    .line 161
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->setNotis()V

    .line 163
    const-string v0, "notification_starts_at"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    .line 164
    const-string v0, "notification alarm not started"

    const-string v1, "ShowNotificationReceiver"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_1f
    return-void

    .line 168
    :cond_20
    const-string v0, "current_notification_step"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getInt(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->setAlarm(I)V

    goto :goto_1f
.end method

.method private static setAlarm(I)V
    .registers 9
    .param p0, "step"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 172
    if-ltz p0, :cond_9

    sget-object v3, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->sNotis:[Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;

    array-length v3, v3

    if-lt p0, v3, :cond_25

    .line 173
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alarm step overflow : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ShowNotificationReceiver"

    invoke-static {v3, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->stopAlarm()V

    .line 197
    :goto_24
    return-void

    .line 178
    :cond_25
    const-string v3, "notification_starts_at"

    invoke-static {v3, v6, v7}, Lcom/samsung/android/coreapps/common/util/CommonPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 179
    .local v4, "startTime":J
    cmp-long v3, v4, v6

    if-nez v3, :cond_45

    .line 180
    const-string v3, "resetting startTime"

    const-string v6, "ShowNotificationReceiver"

    invoke-static {v3, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 183
    if-lez p0, :cond_45

    .line 184
    sget-object v3, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->sNotis:[Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;

    add-int/lit8 v6, p0, -0x1

    aget-object v3, v3, v6

    iget-wide v6, v3, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;->gap:J

    sub-long/2addr v4, v6

    .line 188
    :cond_45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting alarm step "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ShowNotificationReceiver"

    invoke-static {v3, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.coreapps.easysignup.ACTION_SHOW_NOTIFICATION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "it":Landroid/content/Intent;
    const-string v3, "NOTIFICATION_STEP"

    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    sget-object v3, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v3, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 192
    .local v2, "pi":Landroid/app/PendingIntent;
    sget-object v3, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 193
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v3, 0x1

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->sNotis:[Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;

    aget-object v6, v6, p0

    iget-wide v6, v6, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;->gap:J

    add-long/2addr v6, v4

    invoke-virtual {v0, v3, v6, v7, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 195
    const-string v3, "notification_starts_at"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/coreapps/common/util/CommonPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 196
    const-string v3, "current_notification_step"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/coreapps/common/util/CommonPref;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_24
.end method

.method private static setNotis()V
    .registers 13

    .prologue
    const/4 v12, -0x1

    .line 217
    const-string v2, "set notification"

    const-string v4, "ShowNotificationReceiver"

    invoke-static {v2, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-object v2, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->sNotis:[Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;

    if-eqz v2, :cond_14

    .line 219
    const-string v2, "noti set already"

    const-string v4, "ShowNotificationReceiver"

    invoke-static {v2, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .local v0, "notiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;>;"
    .local v1, "profileNoti":Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;
    .local v3, "rshareNoti":Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;
    .local v5, "messageNoti":Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;
    :goto_13
    return-void

    .line 223
    .end local v0    # "notiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;>;"
    .end local v1    # "profileNoti":Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;
    .end local v3    # "rshareNoti":Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;
    .end local v5    # "messageNoti":Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;
    :cond_14
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;

    const-wide/32 v2, 0xea60

    sget v4, Lcom/samsung/android/coreapps/easysignup/R$drawable;->indicator_profilesharing:I

    sget v5, Lcom/samsung/android/coreapps/easysignup/R$drawable;->noti_profile_sharing:I

    sget v6, Lcom/samsung/android/coreapps/easysignup/R$string;->profile_sharing:I

    sget v7, Lcom/samsung/android/coreapps/easysignup/R$string;->profile_sharing_desc:I

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;-><init>(JIIII)V

    .line 224
    .restart local v1    # "profileNoti":Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;
    new-instance v3, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;

    const-wide/32 v4, 0x240c8400

    sget v6, Lcom/samsung/android/coreapps/easysignup/R$drawable;->indicator_simple_sharing:I

    sget v7, Lcom/samsung/android/coreapps/easysignup/R$drawable;->noti_simple_sharing:I

    sget v8, Lcom/samsung/android/coreapps/easysignup/R$string;->simple_sharing:I

    sget v9, Lcom/samsung/android/coreapps/easysignup/R$string;->simple_sharing_desc:I

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;-><init>(JIIII)V

    .line 225
    .restart local v3    # "rshareNoti":Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;
    new-instance v5, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;

    const-wide/32 v6, 0x66ff3000

    sget v8, Lcom/samsung/android/coreapps/easysignup/R$drawable;->indicator_enhanced_messaging:I

    sget v9, Lcom/samsung/android/coreapps/easysignup/R$drawable;->noti_enhanced_messaging:I

    sget v10, Lcom/samsung/android/coreapps/easysignup/R$string;->enhanced_messaging:I

    sget v11, Lcom/samsung/android/coreapps/easysignup/R$string;->enhanced_messaging_desc:I

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;-><init>(JIIII)V

    .line 227
    .restart local v5    # "messageNoti":Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .restart local v0    # "notiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;>;"
    sget-object v2, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v2

    if-eq v2, v12, :cond_5c

    .line 230
    const-string v2, "set profile sharing"

    const-string v4, "ShowNotificationReceiver"

    invoke-static {v2, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_5c
    sget-object v2, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v2

    if-eq v2, v12, :cond_6f

    .line 235
    const-string v2, "set rsharing"

    const-string v4, "ShowNotificationReceiver"

    invoke-static {v2, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_6f
    sget-object v2, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v2

    if-eq v2, v12, :cond_82

    .line 240
    const-string v2, "set enhanced message"

    const-string v4, "ShowNotificationReceiver"

    invoke-static {v2, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;

    sput-object v2, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->sNotis:[Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;

    goto :goto_13
.end method

.method private static stopAlarm()V
    .registers 7

    .prologue
    const/4 v6, 0x0

    .line 200
    const-string v3, "stopping alarm"

    const-string v4, "ShowNotificationReceiver"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v3, "notification_starts_at"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/common/util/CommonPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    const-string v3, "current_notification_step"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/common/util/CommonPref;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.coreapps.easysignup.ACTION_SHOW_NOTIFICATION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, "it":Landroid/content/Intent;
    sget-object v3, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->mContext:Landroid/content/Context;

    const/high16 v4, 0x20000000

    invoke-static {v3, v6, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 207
    .local v2, "pi":Landroid/app/PendingIntent;
    if-nez v2, :cond_35

    .line 208
    const-string v3, "pending intent not exists"

    const-string v4, "ShowNotificationReceiver"

    invoke-static {v3, v4}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_34
    return-void

    .line 212
    :cond_35
    sget-object v3, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 213
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_34
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 53
    const-string v5, " ######## onReceive ######## "

    const-string v6, "ShowNotificationReceiver"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sput-object p1, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->setNotis()V

    .line 58
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->isSimAbsent()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 59
    const-string v5, "no simcard exists"

    const-string v6, "ShowNotificationReceiver"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_1b
    :goto_1b
    return-void

    .line 62
    :cond_1c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2a

    .line 63
    const-string v5, "no action at intent"

    const-string v6, "ShowNotificationReceiver"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 67
    :cond_2a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.android.coreapps.easysignup.ACTION_SHOW_NOTIFICATION"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_104

    .line 68
    const-string v5, "show notification"

    const-string v6, "ShowNotificationReceiver"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4f

    .line 71
    const-string v5, "already registered"

    const-string v6, "ShowNotificationReceiver"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 75
    :cond_4f
    invoke-static {p1}, Lcom/samsung/android/coreapps/common/util/CommonUtils;->isOwner(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5d

    .line 76
    const-string v5, "User is not in owner mode"

    const-string v6, "ShowNotificationReceiver"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 80
    :cond_5d
    const-string v5, "NOTIFICATION_STEP"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_68

    .line 81
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->stopAlarm()V

    .line 83
    :cond_68
    const-string v5, "NOTIFICATION_STEP"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 84
    .local v4, "step":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alarm step : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ShowNotificationReceiver"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    if-ltz v4, :cond_8d

    sget-object v5, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->sNotis:[Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;

    array-length v5, v5

    if-lt v4, v5, :cond_95

    .line 86
    :cond_8d
    const-string v5, "alarm step overflow"

    const-string v6, "ShowNotificationReceiver"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 90
    :cond_95
    sget-object v5, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 92
    .local v1, "nm":Landroid/app/NotificationManager;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "it":Landroid/content/Intent;
    const-string v5, "AuthRequestFrom"

    const-string v6, "notification"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    sget-object v5, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 96
    .local v3, "pi":Landroid/app/PendingIntent;
    new-instance v5, Landroid/app/Notification$Builder;

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->sNotis:[Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;->notiIcon:I

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->sNotis:[Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;->title:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->sNotis:[Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;->desc:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 118
    .local v2, "noti":Landroid/app/Notification;
    invoke-virtual {v1, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 120
    add-int/lit8 v5, v4, 0x1

    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->setAlarm(I)V

    goto/16 :goto_1b

    .line 122
    .end local v0    # "it":Landroid/content/Intent;
    .end local v1    # "nm":Landroid/app/NotificationManager;
    .end local v2    # "noti":Landroid/app/Notification;
    .end local v3    # "pi":Landroid/app/PendingIntent;
    .end local v4    # "step":I
    :cond_104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.android.coreapps.easysignup.ACTION_HIDE_NOTIFICATION"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11e

    .line 123
    const-string v5, "hide notification"

    const-string v6, "ShowNotificationReceiver"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v5, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->hideNotification(Landroid/content/Context;)V

    goto/16 :goto_1b

    .line 127
    :cond_11e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14d

    .line 128
    const-string v5, "setupwizard complete"

    const-string v6, "ShowNotificationReceiver"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v5, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/coreapps/local/EasySignUpInterface;->getAccountImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_142

    .line 131
    const-string v5, "already registered"

    const-string v6, "ShowNotificationReceiver"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 135
    :cond_142
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->disableComponents()V

    .line 137
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->stopAlarm()V

    .line 138
    invoke-static {v8}, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->setAlarm(I)V

    goto/16 :goto_1b

    .line 140
    :cond_14d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.android.coreapps.easysignup.ACTION_STOP_ALARM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 141
    const-string v5, "stopping notification alarm"

    const-string v6, "ShowNotificationReceiver"

    invoke-static {v5, v6}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;->stopAlarm()V

    goto/16 :goto_1b
.end method
