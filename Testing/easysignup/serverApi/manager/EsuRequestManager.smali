.class public Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;
.super Ljava/lang/Object;
.source "EsuRequestManager.java"


# static fields
.field private static final DEFAULT_CACHE_DIR:Ljava/lang/String; = "volley"

.field public static final TAG:Ljava/lang/String; = "EsuRequestManager"

.field private static mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getRequestQueue()Lcom/android/volley/RequestQueue;
    .registers 2

    .prologue
    .line 52
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_7

    .line 53
    sget-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0

    .line 55
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/Integer;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadPoolSize"    # Ljava/lang/Integer;

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->newRequestQueue(Landroid/content/Context;Ljava/lang/Integer;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 43
    return-void
.end method

.method public static newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/coreapps/easysignup/serverApi/manager/EsuRequestManager;->newRequestQueue(Landroid/content/Context;Ljava/lang/Integer;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newRequestQueue(Landroid/content/Context;Ljava/lang/Integer;)Lcom/android/volley/RequestQueue;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadPoolSize"    # Ljava/lang/Integer;

    .prologue
    .line 87
    new-instance v1, Lcom/samsung/android/coreapps/common/model/CommonBasicNetwork;

    new-instance v3, Lcom/samsung/android/coreapps/common/model/CommonHurlStack;

    invoke-direct {v3}, Lcom/samsung/android/coreapps/common/model/CommonHurlStack;-><init>()V

    invoke-direct {v1, v3}, Lcom/samsung/android/coreapps/common/model/CommonBasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    .line 90
    .local v1, "network":Lcom/android/volley/Network;
    new-instance v0, Lcom/android/volley/toolbox/NoCache;

    invoke-direct {v0}, Lcom/android/volley/toolbox/NoCache;-><init>()V

    .line 92
    .local v0, "cache":Lcom/android/volley/toolbox/NoCache;
    const/4 v2, 0x0

    .line 93
    .local v2, "queue":Lcom/android/volley/RequestQueue;
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_21

    .line 94
    :cond_18
    new-instance v2, Lcom/android/volley/RequestQueue;

    .end local v2    # "queue":Lcom/android/volley/RequestQueue;
    invoke-direct {v2, v0, v1}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    .line 98
    .restart local v2    # "queue":Lcom/android/volley/RequestQueue;
    :goto_1d
    invoke-virtual {v2}, Lcom/android/volley/RequestQueue;->start()V

    .line 100
    return-object v2

    .line 96
    :cond_21
    new-instance v2, Lcom/android/volley/RequestQueue;

    .end local v2    # "queue":Lcom/android/volley/RequestQueue;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v0, v1, v3}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    .restart local v2    # "queue":Lcom/android/volley/RequestQueue;
    goto :goto_1d
.end method
