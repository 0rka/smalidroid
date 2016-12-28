.class public Lcom/samsung/android/coreapps/easysignup/service/LogCollectService;
.super Landroid/app/Service;
.source "LogCollectService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LogCollectService"

.field private static sManager:Landroid/app/AlarmManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    #disallowed odex opcode
    #iput-wide-volatile v0, p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
    nop

    return-wide v0

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/service/LogCollectService;->sManager:Landroid/app/AlarmManager;

    #unknown opcode: 0x73
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static cancelAlaram()V
    .registers 2

    .prologue
    .line 56
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/service/LogCollectService;->sManager:Landroid/app/AlarmManager;

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/LogCollectService;->pendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 57
    return-void
.end method

.method private static pendingIntent()Landroid/app/PendingIntent;
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/android/coreapps/easysignup/service/LogCollectService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, "i":Landroid/content/Intent;
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    invoke-static {}, Lcom/samsung/android/coreapps/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 63
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1
.end method

.method public static registerAlarm(J)V
    .registers 8
    .param p0, "interval"    # J

    .prologue
    .line 51
    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/LogCollectService;->cancelAlaram()V

    .line 52
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/service/LogCollectService;->sManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p0

    invoke-static {}, Lcom/samsung/android/coreapps/easysignup/service/LogCollectService;->pendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 53
    return-void
.end method


# virtual methods
.method public collectLog()V
    .registers 19

    .prologue
    .line 69
    const/4 v15, 0x7

    new-array v0, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "logcat"

    aput-object v16, v0, v15

    const/4 v15, 0x1

    const-string v16, "-d"

    aput-object v16, v0, v15

    const/4 v15, 0x2

    const-string v16, "-v"

    aput-object v16, v0, v15

    const/4 v15, 0x3

    const-string v16, "time"

    aput-object v16, v0, v15

    const/4 v15, 0x4

    const-string v16, "CoreApps:V"

    aput-object v16, v0, v15

    const/4 v15, 0x5

    const-string v16, "Volley:V"

    aput-object v16, v0, v15

    const/4 v15, 0x6

    const-string v16, "*:S"

    aput-object v16, v0, v15

    .line 70
    .local v0, "LOGCAT_CMD":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 72
    .local v12, "logcatProc":Ljava/lang/Process;
    :try_start_27
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    invoke-virtual {v15, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2e} :catch_d7

    move-result-object v12

    .line 77
    :goto_2f
    const-string v15, "line.separator"

    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 78
    .local v10, "lineSeparatoer":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v11, "log":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .line 81
    .local v13, "reader":Ljava/io/BufferedReader;
    if-eqz v12, :cond_4c

    .line 82
    :try_start_3d
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-virtual {v12}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v13    # "reader":Ljava/io/BufferedReader;
    .local v14, "reader":Ljava/io/BufferedReader;
    move-object v13, v14

    .line 85
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :cond_4c
    if-eqz v13, :cond_5f

    .line 86
    :goto_4e
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "line":Ljava/lang/String;
    if-eqz v9, :cond_dd

    .line 87
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_5a} :catch_5b

    goto :goto_4e

    .line 92
    .end local v9    # "line":Ljava/lang/String;
    :catch_5b
    move-exception v4

    .line 93
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5f
    :goto_5f
    const/4 v7, 0x0

    .line 98
    .local v7, "fw":Ljava/io/FileWriter;
    :try_start_60
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "baseDir":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "CoreApps"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_8f

    .line 101
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 104
    :cond_8f
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v16, "yyyyMMddHHmm"

    invoke-direct/range {v15 .. v16}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "cuurentTime":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "coreapps_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".txt"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "fileName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    .local v5, "file":Ljava/io/File;
    new-instance v8, Ljava/io/FileWriter;

    const/4 v15, 0x1

    invoke-direct {v8, v5, v15}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_c6
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_c6} :catch_e8
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_c6} :catch_f7
    .catchall {:try_start_60 .. :try_end_c6} :catchall_106

    .line 111
    .end local v7    # "fw":Ljava/io/FileWriter;
    .local v8, "fw":Ljava/io/FileWriter;
    :try_start_c6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_cd
    .catch Ljava/io/FileNotFoundException; {:try_start_c6 .. :try_end_cd} :catch_118
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_cd} :catch_115
    .catchall {:try_start_c6 .. :try_end_cd} :catchall_112

    .line 119
    if-eqz v8, :cond_d2

    .line 120
    :try_start_cf
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_e2

    :cond_d2
    move-object v7, v8

    .line 127
    .end local v1    # "baseDir":Ljava/lang/String;
    .end local v2    # "cuurentTime":Ljava/lang/String;
    .end local v3    # "dir":Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v8    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "fw":Ljava/io/FileWriter;
    :cond_d3
    :goto_d3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/coreapps/easysignup/service/LogCollectService;->stopSelf()V

    .line 128
    return-void

    .line 73
    .end local v7    # "fw":Ljava/io/FileWriter;
    .end local v10    # "lineSeparatoer":Ljava/lang/String;
    .end local v11    # "log":Ljava/lang/StringBuilder;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    :catch_d7
    move-exception v4

    .line 74
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2f

    .line 90
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v10    # "lineSeparatoer":Ljava/lang/String;
    .restart local v11    # "log":Ljava/lang/StringBuilder;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :cond_dd
    :try_start_dd
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_5b

    goto/16 :goto_5f

    .line 122
    .end local v9    # "line":Ljava/lang/String;
    .restart local v1    # "baseDir":Ljava/lang/String;
    .restart local v2    # "cuurentTime":Ljava/lang/String;
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v8    # "fw":Ljava/io/FileWriter;
    :catch_e2
    move-exception v4

    .line 123
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 125
    .end local v8    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "fw":Ljava/io/FileWriter;
    goto :goto_d3

    .line 113
    .end local v1    # "baseDir":Ljava/lang/String;
    .end local v2    # "cuurentTime":Ljava/lang/String;
    .end local v3    # "dir":Ljava/io/File;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fileName":Ljava/lang/String;
    :catch_e8
    move-exception v4

    .line 114
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_e9
    :try_start_e9
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_ec
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_106

    .line 119
    if-eqz v7, :cond_d3

    .line 120
    :try_start_ee
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_f2

    goto :goto_d3

    .line 122
    :catch_f2
    move-exception v4

    .line 123
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d3

    .line 115
    .end local v4    # "e":Ljava/io/IOException;
    :catch_f7
    move-exception v4

    .line 116
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_f8
    :try_start_f8
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_106

    .line 119
    if-eqz v7, :cond_d3

    .line 120
    :try_start_fd
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_101

    goto :goto_d3

    .line 122
    :catch_101
    move-exception v4

    .line 123
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d3

    .line 118
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_106
    move-exception v15

    .line 119
    :goto_107
    if-eqz v7, :cond_10c

    .line 120
    :try_start_109
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_10c} :catch_10d

    .line 124
    :cond_10c
    :goto_10c
    throw v15

    .line 122
    :catch_10d
    move-exception v4

    .line 123
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10c

    .line 118
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "baseDir":Ljava/lang/String;
    .restart local v2    # "cuurentTime":Ljava/lang/String;
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v8    # "fw":Ljava/io/FileWriter;
    :catchall_112
    move-exception v15

    move-object v7, v8

    .end local v8    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "fw":Ljava/io/FileWriter;
    goto :goto_107

    .line 115
    .end local v7    # "fw":Ljava/io/FileWriter;
    .restart local v8    # "fw":Ljava/io/FileWriter;
    :catch_115
    move-exception v4

    move-object v7, v8

    .end local v8    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "fw":Ljava/io/FileWriter;
    goto :goto_f8

    .line 113
    .end local v7    # "fw":Ljava/io/FileWriter;
    .restart local v8    # "fw":Ljava/io/FileWriter;
    :catch_118
    move-exception v4

    move-object v7, v8

    .end local v8    # "fw":Ljava/io/FileWriter;
    .restart local v7    # "fw":Ljava/io/FileWriter;
    goto :goto_e9
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 40
    const-string v0, "onStartCommand"

    const-string v1, "LogCollectService"

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/coreapps/easysignup/service/LogCollectService;->collectLog()V

    .line 44
    const-wide/32 v0, 0x927c0

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/easysignup/service/LogCollectService;->registerAlarm(J)V

    .line 46
    const/4 v0, 0x2

    return v0
.end method
