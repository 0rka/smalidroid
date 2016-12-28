.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;
.super Ljava/lang/Object;
.source "PushInfo.java"


# instance fields
.field public push_token:Ljava/lang/String;

.field public push_type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "push_token"    # Ljava/lang/String;
    .param p2, "push_type"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;->push_token:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;->push_type:Ljava/lang/String;

    .line 10
    return-void
.end method
