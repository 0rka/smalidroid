.class public Lcom/samsung/android/coreapps/easysignup/entry/StubDownloadList;
.super Lcom/samsung/android/coreapps/easysignup/entry/Entry;
.source "StubDownloadList.java"


# instance fields
.field public appInfo:Ljava/util/ArrayList;
    .annotation runtime Lcom/samsung/android/coreapps/easysignup/entry/EntryField;
        type = Lcom/samsung/android/coreapps/easysignup/entry/StubDownload;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/coreapps/easysignup/entry/StubDownload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/entry/Entry;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/entry/StubDownloadList;->appInfo:Ljava/util/ArrayList;

    return-void
.end method
