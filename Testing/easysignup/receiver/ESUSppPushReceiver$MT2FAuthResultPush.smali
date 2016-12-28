.class Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$MT2FAuthResultPush;
.super Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;
.source "ESUSppPushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MT2FAuthResultPush"
.end annotation


# instance fields
.field protected auth_device:Ljava/lang/String;

.field protected auth_result:I

.field protected auth_type:Ljava/lang/String;

.field protected push_type:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    return-void
.end method
