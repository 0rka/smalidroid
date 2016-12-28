.class public Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;
.super Ljava/lang/Object;
.source "ESUSppPushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$UpdateUserPush;,
        Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthResultPush;,
        Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthReqPush;
    }
.end annotation


# static fields
.field private static final ACCESS_PUSH_PERMISSION:Ljava/lang/String; = "com.samsung.android.coreapps.permission.ACCESS_PUSH"

.field private static final ESU_SID:Ljava/lang/String;

.field public static final EXTRA_ACK:Ljava/lang/String; = "ack"

.field public static final EXTRA_MSG:Ljava/lang/String; = "msg"

.field public static final EXTRA_NOTI_ID:Ljava/lang/String; = "notificationId"

.field public static final EXTRA_SESSION_INFO:Ljava/lang/String; = "sessionInfo"

.field private static final NOTI_ID:I = 0x3e8

.field private static final PUSH_TYPE_2FA_AUTH_REQ:Ljava/lang/String; = "reqAuth"

.field private static final PUSH_TYPE_2FA_AUTH_REQ_CANCEL:Ljava/lang/String; = "cancel"

.field private static final PUSH_TYPE_2FA_AUTH_REQ_V3:Ljava/lang/String; = "reqAuthV3"

.field private static final PUSH_TYPE_2FA_AUTH_RESULT:Ljava/lang/String; = "Auth"

.field private static final PUSH_TYPE_2FA_DELETE:Ljava/lang/String; = "delete"

.field private static final PUSH_TYPE_2FA_SUCCESSION:Ljava/lang/String; = "succession"

.field private static final PUSH_TYPE_MESSAGE_NOTI:Ljava/lang/String; = "noti"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/content/pm/ResolveInfo;->specificIndex:I
    nop

    nop

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;->ESU_SID:Ljava/lang/String;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    return-void
.end method

.method private sendPushBroadcast(Landroid/content/Context;Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthReqPush;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mt2FAuthReqPush"    # Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthReqPush;
    .param p3, "v3Push"    # Z

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_4a

    .line 160
    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_2FA_AUTH_REQ_PUSH_V3"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    :goto_c
    const-string v1, "push_type"

    iget-object v2, p2, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthReqPush;->push_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v1, "auth_type"

    iget-object v2, p2, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthReqPush;->auth_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v1, "mn"

    iget-object v2, p2, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthReqPush;->mn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v1, "auth_code"

    iget-object v2, p2, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthReqPush;->auth_code:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "com.samsung.android.coreapps.permission.ACCESS_PUSH"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send broadcast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void

    .line 162
    :cond_4a
    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_2FA_AUTH_REQ_PUSH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_c
.end method

.method private sendPushBroadcast(Landroid/content/Context;Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthResultPush;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mt2FAuthResultPush"    # Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthResultPush;

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_2FA_AUTH_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "auth_type"

    iget-object v2, p2, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthResultPush;->auth_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v1, "result"

    iget v2, p2, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthResultPush;->auth_result:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    const-string v1, "auth_device"

    iget-object v2, p2, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthResultPush;->auth_device:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send broadcast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method private showNotification(Landroid/content/Context;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/EnhancedAccountNewMessage;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notiMessage"    # Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/EnhancedAccountNewMessage;

    .prologue
    const v11, 0x14000020

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 106
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 108
    .local v1, "nm":Landroid/app/NotificationManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 111
    .local v3, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/EnhancedAccountNewMessage;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/EnhancedAccountNewMessage;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_ac

    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package details:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;->TAG:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v7, "com.sec.android.app.samsungapps"

    const-string v8, "com.sec.android.app.samsungapps.Main"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v7, "directcall"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    const-string v7, "CallerType"

    invoke-virtual {v0, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const-string v7, "GUID"

    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {v0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    invoke-static {p1, v9, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 134
    :goto_56
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    .local v2, "notifyBuilder":Landroid/app/Notification$Builder;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {p2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/EnhancedAccountNewMessage;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {p2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/EnhancedAccountNewMessage;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 143
    if-eqz v3, :cond_85

    .line 144
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 147
    :cond_85
    invoke-virtual {p2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/EnhancedAccountNewMessage;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 149
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 150
    .local v5, "style":Landroid/app/Notification$BigTextStyle;
    invoke-virtual {p2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/EnhancedAccountNewMessage;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 151
    invoke-virtual {p2}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/EnhancedAccountNewMessage;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 152
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 154
    const/16 v7, 0x3e8

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 155
    return-void

    .line 123
    .end local v2    # "notifyBuilder":Landroid/app/Notification$Builder;
    .end local v5    # "style":Landroid/app/Notification$BigTextStyle;
    :cond_ac
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e7

    const-string v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e7

    .line 124
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showNotification : URL - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;->TAG:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 128
    invoke-virtual {v0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    invoke-static {p1, v9, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    goto/16 :goto_56

    .line 131
    :cond_e7
    const-string v7, "showNotification : not supported noti message"

    sget-object v8, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;->TAG:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_56
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    const-string v19, "sessionInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 51
    .local v18, "sessionInfo":Ljava/lang/String;
    const-string v19, "notificationId"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 52
    .local v13, "notiId":Ljava/lang/String;
    const-string v19, "ack"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 54
    .local v3, "ack":Z
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "push received = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;->TAG:Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v19, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;->ESU_SID:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4b

    .line 103
    :cond_4a
    :goto_4a
    return-void

    .line 58
    :cond_4b
    const-string v19, "msg"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 59
    .local v10, "msg":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onReceive SPP push received  msg = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;->TAG:Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    .line 61
    .local v5, "gson":Lcom/google/gson/Gson;
    new-instance v9, Lcom/google/gson/JsonParser;

    invoke-direct {v9}, Lcom/google/gson/JsonParser;-><init>()V

    .line 63
    .local v9, "jsonParser":Lcom/google/gson/JsonParser;
    :try_start_79
    invoke-virtual {v9, v10}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    .line 64
    .local v8, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v19, "push_type"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v17

    .line 66
    .local v17, "pushTypeElement":Lcom/google/gson/JsonElement;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "push type : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;->TAG:Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-eqz v17, :cond_110

    .line 68
    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "\""

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 70
    .local v16, "pushType":Ljava/lang/String;
    const-string v19, "reqAuthV3"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d7

    const-string v19, "reqAuth"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d7

    const-string v19, "cancel"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_132

    .line 71
    :cond_d7
    const-class v19, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthReqPush;

    move-object/from16 v0, v19

    invoke-virtual {v5, v10, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthReqPush;

    .line 72
    .local v11, "mt2FAuthReqPush":Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthReqPush;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "auth code : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthReqPush;->auth_code:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;->TAG:Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v19, "reqAuthV3"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v11, v2}, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;->sendPushBroadcast(Landroid/content/Context;Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthReqPush;Z)V
    :try_end_110
    .catch Ljava/lang/IllegalStateException; {:try_start_79 .. :try_end_110} :catch_150

    .line 97
    .end local v11    # "mt2FAuthReqPush":Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthReqPush;
    .end local v16    # "pushType":Ljava/lang/String;
    :cond_110
    :goto_110
    if-eqz v3, :cond_4a

    .line 98
    const-string v19, "send ack for SPP"

    sget-object v20, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;->TAG:Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v15, Landroid/content/Intent;

    const-class v19, Lcom/samsung/android/coreapps/common/transaction/SppAckService;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v15, "pushAck":Landroid/content/Intent;
    const-string v19, "notificationId"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_4a

    .line 74
    .end local v15    # "pushAck":Landroid/content/Intent;
    .restart local v16    # "pushType":Ljava/lang/String;
    :cond_132
    :try_start_132
    const-string v19, "Auth"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15d

    .line 75
    const-class v19, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthResultPush;

    move-object/from16 v0, v19

    invoke-virtual {v5, v10, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthResultPush;

    .line 76
    .local v12, "mt2FAuthResultPush":Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthResultPush;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;->sendPushBroadcast(Landroid/content/Context;Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthResultPush;)V
    :try_end_14f
    .catch Ljava/lang/IllegalStateException; {:try_start_132 .. :try_end_14f} :catch_150

    goto :goto_110

    .line 91
    .end local v8    # "jsonObject":Lcom/google/gson/JsonObject;
    .end local v12    # "mt2FAuthResultPush":Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthResultPush;
    .end local v16    # "pushType":Ljava/lang/String;
    .end local v17    # "pushTypeElement":Lcom/google/gson/JsonElement;
    :catch_150
    move-exception v4

    .line 92
    .local v4, "e":Ljava/lang/IllegalStateException;
    const-string v19, "Error parsing msg"

    sget-object v20, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;->TAG:Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_4a

    .line 77
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    .restart local v8    # "jsonObject":Lcom/google/gson/JsonObject;
    .restart local v16    # "pushType":Ljava/lang/String;
    .restart local v17    # "pushTypeElement":Lcom/google/gson/JsonElement;
    :cond_15d
    :try_start_15d
    const-string v19, "succession"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17a

    .line 78
    new-instance v7, Landroid/content/Intent;

    const-class v19, Lcom/samsung/android/coreapps/easysignup/transaction/GetUserTransaction;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v7, "it":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_110

    .line 80
    .end local v7    # "it":Landroid/content/Intent;
    :cond_17a
    const-string v19, "delete"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a4

    .line 81
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v6, "imsiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/samsung/android/coreapps/easysignup/transaction/DeleteAccountTransaction;->removeAuthData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 84
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1, v6}, Lcom/samsung/android/coreapps/easysignup/EasySignUpBroadcaster;->sendDeauthResult(Landroid/content/Context;ILjava/util/ArrayList;)V

    goto/16 :goto_110

    .line 85
    .end local v6    # "imsiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1a4
    const-string v19, "noti"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_110

    .line 86
    const-class v19, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/EnhancedAccountNewMessage;

    move-object/from16 v0, v19

    invoke-virtual {v5, v10, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/EnhancedAccountNewMessage;

    .line 87
    .local v14, "notiMessage":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/EnhancedAccountNewMessage;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Message Info: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;->TAG:Ljava/lang/String;

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;->showNotification(Landroid/content/Context;Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/EnhancedAccountNewMessage;)V
    :try_end_1df
    .catch Ljava/lang/IllegalStateException; {:try_start_15d .. :try_end_1df} :catch_150

    goto/16 :goto_110
.end method
