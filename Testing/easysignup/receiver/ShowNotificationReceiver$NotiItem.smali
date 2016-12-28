.class Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;
.super Ljava/lang/Object;
.source "ShowNotificationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotiItem"
.end annotation


# instance fields
.field desc:I

.field gap:J

.field icon:I

.field notiIcon:I

.field title:I


# direct methods
.method constructor <init>(JIIII)V
    .registers 8
    .param p1, "g"    # J
    .param p3, "n"    # I
    .param p4, "i"    # I
    .param p5, "t"    # I
    .param p6, "d"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;->gap:J

    iput p3, p0, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;->notiIcon:I

    iput p4, p0, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;->icon:I

    iput p5, p0, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;->title:I

    iput p6, p0, Lcom/samsung/android/coreapps/easysignup/receiver/ShowNotificationReceiver$NotiItem;->desc:I

    return-void
.end method
