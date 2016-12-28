.class public Lcom/samsung/android/coreapps/easysignup/entry/StubUpdateCheckList;
.super Lcom/samsung/android/coreapps/easysignup/entry/Entry;
.source "StubUpdateCheckList.java"


# instance fields
.field public appInfo:Ljava/util/ArrayList;
    .annotation runtime Lcom/samsung/android/coreapps/easysignup/entry/EntryField;
        type = Lcom/samsung/android/coreapps/easysignup/entry/StubUpdateCheck;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/coreapps/easysignup/entry/StubUpdateCheck;",
            ">;"
        }
    .end annotation
.end field

.field public resultCode:Ljava/lang/String;

.field public resultMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/coreapps/easysignup/entry/Entry;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/entry/StubUpdateCheckList;->appInfo:Ljava/util/ArrayList;

    return-void
.end method
