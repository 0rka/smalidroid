.class public Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;
.super Landroid/app/Activity;
.source "DeregisteredActivity.java"


# static fields
.field private static final ACTION_HIDE_NOTIFICATION:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_HIDE_NOTIFICATION"

.field public static final DEREGISTERED_NOTI_ID:I = 0xc8041

.field public static final EXTRA_ESU_IS_FOREGROUND:Ljava/lang/String; = "extra_esu_is_foreground"

.field public static final REQ_ID:I = 0xc350

.field private static final TAG:Ljava/lang/String; = "DeregisteredActivity"


# instance fields
.field private mRelayDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showRelayPopup()V
    .registers 4

    .prologue
    .line 96
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/samsung/android/coreapps/easysignup/R$string;->esu_information:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 98
    sget v1, Lcom/samsung/android/coreapps/easysignup/R$string;->verify_your_phone_number_again:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 99
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 100
    const v1, 0x104000a

    new-instance v2, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity$1;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity$2;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity$3;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    new-instance v1, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity$4;-><init>(Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 142
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->mRelayDialog:Landroid/app/AlertDialog;

    .line 143
    iget-object v1, p0, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->mRelayDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 144
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 37
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "extra_esu_is_foreground"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 38
    const-string v8, "extra_esu_is_foreground"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 40
    .local v1, "foreground":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_32

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->showRelayPopup()V

    .line 81
    .end local v1    # "foreground":Ljava/lang/Boolean;
    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.samsung.android.coreapps.easysignup.ACTION_HIDE_NOTIFICATION"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    return-void

    .line 43
    .restart local v1    # "foreground":Ljava/lang/Boolean;
    :cond_32
    const/4 v5, 0x0

    .line 47
    .local v5, "pendingIntent":Landroid/content/Intent;
    :try_start_33
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.samsung.android.coreapps.easysignup.ui.DeregisteredActivity"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v6, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_3e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_33 .. :try_end_3e} :catch_c5
    .catchall {:try_start_33 .. :try_end_3e} :catchall_e3

    .line 48
    .end local v5    # "pendingIntent":Landroid/content/Intent;
    .local v6, "pendingIntent":Landroid/content/Intent;
    const/high16 v8, 0x24000000

    :try_start_40
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 49
    const-string v8, "extra_esu_is_foreground"

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    .local v4, "notifyBuilder":Landroid/app/Notification$Builder;
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0xc350

    const/high16 v10, 0x8000000

    invoke-static {v8, v9, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 53
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 54
    sget v8, Lcom/samsung/android/coreapps/easysignup/R$string;->app_name:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 55
    sget v8, Lcom/samsung/android/coreapps/easysignup/R$drawable;->stat_notify_share_contact:I

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 57
    sget v8, Lcom/samsung/android/coreapps/easysignup/R$string;->app_name:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 58
    sget v8, Lcom/samsung/android/coreapps/easysignup/R$string;->your_phone_number_deregistered:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 60
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 61
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_94

    .line 62
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 65
    :cond_94
    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7, v4}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 66
    .local v7, "style":Landroid/app/Notification$BigTextStyle;
    sget v8, Lcom/samsung/android/coreapps/easysignup/R$string;->app_name:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 67
    sget v8, Lcom/samsung/android/coreapps/easysignup/R$string;->your_phone_number_deregistered:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 68
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 70
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 71
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    const v8, 0xc8041

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_c0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_40 .. :try_end_c0} :catch_eb
    .catchall {:try_start_40 .. :try_end_c0} :catchall_e8

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->finish()V

    goto/16 :goto_20

    .line 72
    .end local v3    # "notificationManager":Landroid/app/NotificationManager;
    .end local v4    # "notifyBuilder":Landroid/app/Notification$Builder;
    .end local v6    # "pendingIntent":Landroid/content/Intent;
    .end local v7    # "style":Landroid/app/Notification$BigTextStyle;
    .restart local v5    # "pendingIntent":Landroid/content/Intent;
    :catch_c5
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_c6
    :try_start_c6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "class not found here :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "DeregisteredActivity"

    invoke-static {v8, v9}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_de
    .catchall {:try_start_c6 .. :try_end_de} :catchall_e3

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->finish()V

    goto/16 :goto_20

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_e3
    move-exception v8

    :goto_e4
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->finish()V

    throw v8

    .end local v5    # "pendingIntent":Landroid/content/Intent;
    .restart local v6    # "pendingIntent":Landroid/content/Intent;
    :catchall_e8
    move-exception v8

    move-object v5, v6

    .end local v6    # "pendingIntent":Landroid/content/Intent;
    .restart local v5    # "pendingIntent":Landroid/content/Intent;
    goto :goto_e4

    .line 72
    .end local v5    # "pendingIntent":Landroid/content/Intent;
    .restart local v6    # "pendingIntent":Landroid/content/Intent;
    :catch_eb
    move-exception v0

    move-object v5, v6

    .end local v6    # "pendingIntent":Landroid/content/Intent;
    .restart local v5    # "pendingIntent":Landroid/content/Intent;
    goto :goto_c6
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 89
    const-string v0, "DeregisteredActivity onDestroy"

    const-string v1, "DeregisteredActivity"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->mRelayDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->mRelayDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 91
    iget-object v0, p0, Lcom/samsung/android/coreapps/easysignup/ui/DeregisteredActivity;->mRelayDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 93
    :cond_1b
    return-void
.end method
