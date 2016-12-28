.class public Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;
.super Ljava/lang/Object;
.source "ErrorHandler.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ErrorHandler"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;->mHandler:Landroid/os/Handler;

    .line 24
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 28
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 29
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x2710

    iput v2, v1, Landroid/os/Message;->what:I

    .line 31
    invoke-static {p1}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;->instanceFrom(Lcom/android/volley/VolleyError;)Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;

    move-result-object v0

    .line 32
    .local v0, "errorResp":Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/ErrorResp;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    iget-object v2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/ErrorHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 35
    return-void
.end method
