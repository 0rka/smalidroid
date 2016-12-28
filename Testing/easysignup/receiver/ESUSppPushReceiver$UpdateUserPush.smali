.class Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver$UpdateUserPush;
.super Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;
.source "ESUSppPushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/receiver/ESUSppPushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateUserPush"
.end annotation


# instance fields
.field protected Duid:Ljava/lang/String;

.field protected action:Ljava/lang/String;

.field protected action_type:I

.field protected push_type:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    return-void
.end method
