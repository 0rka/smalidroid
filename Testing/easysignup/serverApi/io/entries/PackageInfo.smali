.class public Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PackageInfo;
.super Ljava/lang/Object;
.source "PackageInfo.java"


# instance fields
.field public appid:Ljava/lang/String;

.field public os:Ljava/lang/String;

.field public ov:Ljava/lang/String;

.field public pv:Ljava/lang/String;

.field public vc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PackageInfo;->appid:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PackageInfo;->pv:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/coreapps/common/util/PackageUtils;->getAppVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PackageInfo;->vc:Ljava/lang/String;

    .line 24
    const-string v0, "Android"

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PackageInfo;->os:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/coreapps/easysignup/serverApi/io/entries/PackageInfo;->ov:Ljava/lang/String;

    .line 26
    return-void
.end method
