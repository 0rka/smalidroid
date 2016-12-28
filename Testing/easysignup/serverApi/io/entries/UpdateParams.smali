.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UpdateParams;
.super Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;
.source "UpdateParams.java"


# instance fields
.field protected csc:Ljava/lang/String;

.field public pkg:Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PackageInfo;

.field protected push_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;

.field protected push_muid:I


# direct methods
.method public constructor <init>([Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;ILjava/lang/String;)V
    .registers 4
    .param p1, "pushInfoArray"    # [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;
    .param p2, "push_muid"    # I
    .param p3, "csc"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UpdateParams;->push_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;

    .line 20
    iput p2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UpdateParams;->push_muid:I

    .line 21
    iput-object p3, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UpdateParams;->csc:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>([Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;Ljava/lang/String;)V
    .registers 4
    .param p1, "pushInfoArray"    # [Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;
    .param p2, "csc"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/Entry;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UpdateParams;->push_info:[Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PushInfo;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UpdateParams;->push_muid:I

    .line 15
    iput-object p2, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/UpdateParams;->csc:Ljava/lang/String;

    .line 16
    return-void
.end method
