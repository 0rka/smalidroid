.class public Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;
.super Ljava/lang/Object;
.source "HangulJamoUtil.java"


# static fields
.field public static BOKJAUM:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;>;"
        }
    .end annotation
.end field

.field public static BOKMOUM:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Character;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final CHOSEONG:[C

.field private static final HANGUL_BASE_UNIT:C = '\u024c'

.field private static final HANGUL_BEGIN_UNICODE:C = '\uac00'

.field private static final HANGUL_LAST_UNICODE:C = '\ud7a3'

.field private static final INITIAL_SOUND:[C

.field public static final JONGSEONG:[C

.field public static final JUNGSEONG:[C

.field private static final TAG:Ljava/lang/String; = "HangulJamoUtil"

.field private static initialString:Ljava/lang/StringBuffer;

.field private static searchInitialString:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/16 v6, 0xd

    const/16 v5, 0x13

    const/16 v4, 0x8

    .line 21
    new-array v1, v5, [C

    fill-array-data v1, :array_348

    sput-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->INITIAL_SOUND:[C

    .line 24
    new-array v1, v5, [C

    fill-array-data v1, :array_360

    sput-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->CHOSEONG:[C

    .line 30
    const/16 v1, 0x15

    new-array v1, v1, [C

    fill-array-data v1, :array_378

    sput-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    .line 38
    const/16 v1, 0x1c

    new-array v1, v1, [C

    fill-array-data v1, :array_392

    sput-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    .line 53
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKMOUM:Ljava/util/Hashtable;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .restart local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    const/4 v3, 0x3

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #disallowed odex opcode
    #iput-wide-volatile v0, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;
    nop

    array-length v0, v0

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .restart local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v2, 0x16

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    const/4 v3, 0x5

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #disallowed odex opcode
    #iput-wide-volatile v0, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;
    nop

    array-length v0, v0

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .restart local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v2, 0x1b

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    const/4 v3, 0x6

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #disallowed odex opcode
    #iput-wide-volatile v0, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;
    nop

    array-length v0, v0

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .restart local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v3, 0x9

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #disallowed odex opcode
    #iput-wide-volatile v0, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;
    nop

    array-length v0, v0

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .restart local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v2, 0x10

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v3, 0xa

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #disallowed odex opcode
    #iput-wide-volatile v0, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;
    nop

    array-length v0, v0

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .restart local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v2, 0x11

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v3, 0xb

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #disallowed odex opcode
    #iput-wide-volatile v0, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;
    nop

    array-length v0, v0

    .line 87
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v3, 0xc

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #disallowed odex opcode
    #iput-wide-volatile v0, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;
    nop

    array-length v0, v0

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .restart local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v2, 0x19

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v2, v2, v6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #disallowed odex opcode
    #iput-wide-volatile v0, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;
    nop

    array-length v0, v0

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .restart local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v2, 0x1a

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v3, 0xe

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #disallowed odex opcode
    #iput-wide-volatile v0, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;
    nop

    array-length v0, v0

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .restart local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v2, 0x1b

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v3, 0xf

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #disallowed odex opcode
    #iput-wide-volatile v0, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;
    nop

    array-length v0, v0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .restart local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v2, 0x11

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v1, v1, v5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    const/16 v3, 0x12

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #disallowed odex opcode
    #iput-wide-volatile v0, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;
    nop

    array-length v0, v0

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .restart local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    const/4 v2, 0x0

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKMOUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    const/16 v3, 0x9

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #disallowed odex opcode
    #iput-wide-volatile v0, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;
    nop

    array-length v0, v0

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .restart local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    aget-char v1, v1, v7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKMOUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    const/16 v3, 0xa

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #disallowed odex opcode
    #iput-wide-volatile v0, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;
    nop

    array-length v0, v0

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .restart local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    aget-char v1, v1, v4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    const/16 v2, 0x14

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKMOUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    const/16 v3, 0xb

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #disallowed odex opcode
    #iput-wide-volatile v0, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;
    nop

    array-length v0, v0

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .restart local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    aget-char v1, v1, v6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    aget-char v1, v1, v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKMOUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    const/16 v3, 0xe

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #disallowed odex opcode
    #iput-wide-volatile v0, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;
    nop

    array-length v0, v0

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .restart local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    aget-char v1, v1, v6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    const/4 v2, 0x5

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKMOUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    const/16 v3, 0xf

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #disallowed odex opcode
    #iput-wide-volatile v0, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;
    nop

    array-length v0, v0

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .restart local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    aget-char v1, v1, v6

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    const/16 v2, 0x14

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKMOUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    const/16 v3, 0x10

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #disallowed odex opcode
    #iput-wide-volatile v0, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;
    nop

    array-length v0, v0

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .restart local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    const/16 v2, 0x12

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    const/16 v2, 0x14

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKMOUM:Ljava/util/Hashtable;

    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    aget-char v2, v2, v5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    #disallowed odex opcode
    #iput-wide-volatile v0, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;
    nop

    array-length v0, v0

    .line 361
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->initialString:Ljava/lang/StringBuffer;

    .line 362
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->searchInitialString:Ljava/lang/StringBuffer;

    #unknown opcode: 0x73
    nop

    .line 21
    :array_348
    .array-data 2
        0x3131s
        0x3132s
        0x3134s
        0x3137s
        0x3138s
        0x3139s
        0x3141s
        0x3142s
        0x3143s
        0x3145s
        0x3146s
        0x3147s
        0x3148s
        0x3149s
        0x314as
        0x314bs
        0x314cs
        0x314ds
        0x314es
    .end array-data

    .line 24
    nop

    :array_360
    .array-data 2
        0x3131s
        0x3132s
        0x3134s
        0x3137s
        0x3138s
        0x3139s
        0x3141s
        0x3142s
        0x3143s
        0x3145s
        0x3146s
        0x3147s
        0x3148s
        0x3149s
        0x314as
        0x314bs
        0x314cs
        0x314ds
        0x314es
    .end array-data

    .line 30
    nop

    :array_378
    .array-data 2
        0x314fs
        0x3150s
        0x3151s
        0x3152s
        0x3153s
        0x3154s
        0x3155s
        0x3156s
        0x3157s
        0x3158s
        0x3159s
        0x315as
        0x315bs
        0x315cs
        0x315ds
        0x315es
        0x315fs
        0x3160s
        0x3161s
        0x3162s
        0x3163s
    .end array-data

    .line 38
    nop

    :array_392
    .array-data 2
        0x0s
        0x3131s
        0x3132s
        0x3133s
        0x3134s
        0x3135s
        0x3136s
        0x3137s
        0x3139s
        0x313as
        0x313bs
        0x313cs
        0x313ds
        0x313es
        0x313fs
        0x3140s
        0x3141s
        0x3142s
        0x3144s
        0x3145s
        0x3146s
        0x3147s
        0x3148s
        0x314as
        0x314bs
        0x314cs
        0x314ds
        0x314es
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static charsToString(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v1, "t":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    .line 216
    .local v2, "tc":Ljava/lang/Character;
    invoke-virtual {v2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 219
    .end local v2    # "tc":Ljava/lang/Character;
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static convertBokJaum(C)Ljava/util/List;
    .registers 4
    .param p0, "c"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 153
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKJAUM:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    check-cast v0, Ljava/util/List;

    .line 158
    .restart local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    :goto_19
    return-object v0

    .line 155
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .restart local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19
.end method

.method private static convertBokMoum(C)Ljava/util/List;
    .registers 4
    .param p0, "c"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKMOUM:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 164
    sget-object v1, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->BOKMOUM:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    check-cast v0, Ljava/util/List;

    .line 169
    .restart local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    :goto_19
    return-object v0

    .line 166
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .restart local v0    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19
.end method

.method private static getInitialSound(C)C
    .registers 4
    .param p0, "c"    # C

    .prologue
    .line 245
    const v2, 0xac00

    sub-int v0, p0, v2

    .line 246
    .local v0, "hanBegin":I
    div-int/lit16 v1, v0, 0x24c

    .line 247
    .local v1, "index":I
    sget-object v2, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->INITIAL_SOUND:[C

    aget-char v2, v2, v1

    return v2
.end method

.method public static isHangul(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 258
    const v0, 0xac00

    if-gt v0, p0, :cond_c

    const v0, 0xd7a3

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isInitialSound(C)Z
    .registers 6
    .param p0, "searchar"    # C

    .prologue
    .line 229
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->INITIAL_SOUND:[C

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_f

    aget-char v1, v0, v2

    .line 230
    .local v1, "c":C
    if-ne v1, p0, :cond_c

    .line 231
    const/4 v4, 0x1

    .line 234
    .end local v1    # "c":C
    :goto_b
    return v4

    .line 229
    .restart local v1    # "c":C
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 234
    .end local v1    # "c":C
    :cond_f
    const/4 v4, 0x0

    goto :goto_b
.end method

.method public static isMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "filter"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v12, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 412
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_e

    .line 502
    :cond_d
    :goto_d
    return v8

    .line 417
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1e

    move v8, v9

    .line 418
    goto :goto_d

    .line 423
    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .local v4, "temp":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v1, v10, :cond_3c

    .line 427
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->split(C)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 430
    :cond_3c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v12, :cond_44

    move v8, v9

    .line 431
    goto :goto_d

    .line 435
    :cond_44
    const/4 v3, 0x0

    .line 436
    .local v3, "start":I
    const/4 v10, 0x0

    :try_start_46
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->split(C)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v9, :cond_5d

    .line 437
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 440
    :cond_5d
    if-eq v3, v12, :cond_d

    .line 444
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 446
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v10, v11, :cond_d

    .line 450
    const/4 v1, 0x0

    :goto_6e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v1, v10, :cond_fe

    .line 452
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_95

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    .line 457
    :cond_95
    move v2, v1

    .local v2, "j":I
    :goto_96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_fb

    .line 465
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 466
    .local v7, "tempTargetUpper":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 467
    .local v6, "tempFilterUpper":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 469
    .local v5, "tempFilter":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 472
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_f5} :catch_101

    move-result v10

    if-ne v10, v9, :cond_d

    .line 457
    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    .end local v5    # "tempFilter":Ljava/lang/String;
    .end local v6    # "tempFilterUpper":Ljava/lang/String;
    .end local v7    # "tempTargetUpper":Ljava/lang/String;
    :cond_fb
    move v8, v9

    .line 493
    goto/16 :goto_d

    .end local v2    # "j":I
    :cond_fe
    move v8, v9

    .line 498
    goto/16 :goto_d

    .line 500
    :catch_101
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "****** SEARCH EXCEPTION : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "HangulJamoUtil"

    invoke-static {v9, v10}, Lcom/samsung/android/coreapps/easysignup/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d
.end method

.method public static matchString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/coreapps/easysignup/util/SpannablePosition;
    .registers 13
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "search"    # Ljava/lang/String;
    .param p2, "dummy"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 366
    const/4 v5, -0x1

    .line 367
    .local v5, "start":I
    const/4 v0, -0x1

    .line 369
    .local v0, "end":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v2, v6, v7

    .line 370
    .local v2, "seof":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 374
    .local v3, "slen":I
    if-gez v2, :cond_16

    .line 375
    const/4 v4, 0x0

    .line 404
    :goto_15
    return-object v4

    .line 378
    :cond_16
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_41

    .line 379
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->isHangul(C)Z

    move-result v6

    if-ne v6, v9, :cond_37

    .line 380
    sget-object v6, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->initialString:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->getInitialSound(C)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 378
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 382
    :cond_37
    sget-object v6, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->initialString:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_34

    .line 386
    :cond_41
    const/4 v1, 0x0

    :goto_42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_6c

    .line 387
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->isHangul(C)Z

    move-result v6

    if-ne v6, v9, :cond_62

    .line 388
    sget-object v6, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->searchInitialString:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->getInitialSound(C)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 386
    :goto_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 390
    :cond_62
    sget-object v6, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->searchInitialString:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5f

    .line 394
    :cond_6c
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 395
    const/4 v6, -0x1

    if-ne v5, v6, :cond_7f

    .line 396
    sget-object v6, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->initialString:Ljava/lang/StringBuffer;

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->searchInitialString:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 398
    :cond_7f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    add-int/lit8 v0, v6, -0x1

    .line 400
    new-instance v4, Lcom/samsung/android/coreapps/easysignup/util/SpannablePosition;

    invoke-direct {v4, v5, v0}, Lcom/samsung/android/coreapps/easysignup/util/SpannablePosition;-><init>(II)V

    .line 402
    .local v4, "sp":Lcom/samsung/android/coreapps/easysignup/util/SpannablePosition;
    sget-object v6, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->initialString:Ljava/lang/StringBuffer;

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->initialString:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v8, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 403
    sget-object v6, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->searchInitialString:Ljava/lang/StringBuffer;

    sget-object v7, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->initialString:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v8, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_15
.end method

.method public static matchString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "search"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 262
    const/4 v3, 0x0

    .line 263
    .local v3, "t":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v1, v6, v7

    .line 264
    .local v1, "seof":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 265
    .local v2, "slen":I
    if-gez v1, :cond_14

    .line 293
    :cond_13
    :goto_13
    return v4

    .line 268
    :cond_14
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    if-gt v0, v1, :cond_13

    .line 269
    const/4 v3, 0x0

    .line 270
    :goto_18
    if-ge v3, v2, :cond_52

    .line 271
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->isInitialSound(C)Z

    move-result v6

    if-ne v6, v5, :cond_43

    add-int v6, v0, v3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->isHangul(C)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 273
    add-int v6, v0, v3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->getInitialSound(C)C

    move-result v6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_52

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 281
    :cond_43
    add-int v6, v0, v3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_52

    .line 283
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 289
    :cond_52
    if-ne v3, v2, :cond_56

    move v4, v5

    .line 290
    goto :goto_13

    .line 268
    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method

.method public static split(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 195
    if-nez p0, :cond_4

    .line 196
    const/4 v3, 0x0

    .line 208
    :goto_3
    return-object v3

    .line 201
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v2, "t":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_22

    .line 203
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 205
    .local v0, "c":C
    invoke-static {v0}, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->split(C)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->charsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 208
    .end local v0    # "c":C
    :cond_22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method public static split(C)Ljava/util/List;
    .registers 7
    .param p0, "c"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    const v5, 0xac00

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    if-lt p0, v5, :cond_3d

    const v4, 0xd7a3

    if-gt p0, v4, :cond_3d

    .line 177
    sub-int v3, p0, v5

    .line 178
    .local v3, "i3":I
    div-int/lit16 v1, v3, 0x24c

    .line 179
    .local v1, "i1":I
    rem-int/lit16 v3, v3, 0x24c

    .line 180
    div-int/lit8 v2, v3, 0x1c

    .line 181
    .local v2, "i2":I
    rem-int/lit8 v3, v3, 0x1c

    .line 183
    sget-object v4, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->CHOSEONG:[C

    aget-char v4, v4, v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v4, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JUNGSEONG:[C

    aget-char v4, v4, v2

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->convertBokMoum(C)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    if-eqz v3, :cond_3c

    .line 186
    sget-object v4, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->JONGSEONG:[C

    aget-char v4, v4, v3

    invoke-static {v4}, Lcom/samsung/android/coreapps/easysignup/util/HangulJamoUtil;->convertBokJaum(C)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    .end local v1    # "i1":I
    .end local v2    # "i2":I
    .end local v3    # "i3":I
    :cond_3c
    :goto_3c
    return-object v0

    .line 189
    :cond_3d
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c
.end method
