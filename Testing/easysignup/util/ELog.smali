.class public Lcom/samsung/android/coreapps/easysignup/util/ELog;
.super Ljava/lang/Object;
.source "ELog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ELog"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "ELog"

    invoke-static {v0, p0, p1}, Lcom/samsung/android/coreapps/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string v0, "ELog"

    invoke-static {v0, p0, p1}, Lcom/samsung/android/coreapps/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static e(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 16
    const-string v0, "ELog"

    invoke-static {v0, p0, p1}, Lcom/samsung/android/coreapps/common/util/CommonLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static enc(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string v0, "ELog"

    invoke-static {v0, p0, p1}, Lcom/samsung/android/coreapps/common/util/CommonLog;->enc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, "ELog"

    invoke-static {v0, p0, p1}, Lcom/samsung/android/coreapps/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v0, "ELog"

    invoke-static {v0, p0, p1}, Lcom/samsung/android/coreapps/common/util/CommonLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "ELog"

    invoke-static {v0, p0, p1}, Lcom/samsung/android/coreapps/common/util/CommonLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static final wtf(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "ELog"

    invoke-static {v0, p0, p1}, Lcom/samsung/android/coreapps/common/util/CommonLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method
